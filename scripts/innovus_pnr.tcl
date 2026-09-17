# innovus_pnr.tcl -- physical design: floorplan -> place -> CTS -> route -> GDS
# Run:  innovus -file innovus_pnr.tcl        (batch)
# Or:   innovus  then  source innovus_pnr.tcl (interactive; recommended first time)
#
# BEFORE RUNNING: fill in LEF_FILE and SITE_NAME below by inspecting the PDK:
#   ls /cadence/FOUNDRY/digital/45nm/dig/lib/*.lef
#   grep -i "^SITE " /cadence/FOUNDRY/digital/45nm/dig/lib/*.lef
# The tutorial's 90 nm example used gsclib090_translated_ref.lef and site gsclib090site.
# The 45 nm PDK's file names will differ; substitute the ones you find.

# =========================================================================
# 1. Design initialisation -- GSCLIB045 45 nm PDK
# =========================================================================
set PDK_DIR   /cadence/FOUNDRY/digital/45nm/dig
set TECH_LEF  $PDK_DIR/lef/gsclib045_tech.lef
set MACRO_LEF $PDK_DIR/lef/gsclib045_macro.lef
set SITE      CoreSite

set init_gnd_net    VSS
set init_pwr_net    VDD
set init_io_file    pin_location.io
set init_lef_file   "$TECH_LEF $MACRO_LEF"
set init_mmmc_file  simple_mac.view
set init_top_cell   simple_mac
set init_verilog    ../syn_report/simple_mac_netlist.v
init_design

# =========================================================================
# 2. Sanity checks -- catch library or netlist trouble BEFORE geometry
# =========================================================================
setDesignMode -process 45 -flowEffort standard
setDesignMode -topRoutingLayer 6 -bottomRoutingLayer 2

checkDesign -physicalLibrary
checkDesign -timingLibrary
checkDesign -netlist
check_timing

# =========================================================================
# 3. Floorplan -- 1:1 aspect ratio, 65 % utilisation, 4 um core-to-die margin
# =========================================================================
getIoFlowFlag
setIoFlowFlag 0

# -r <aspect> <utilisation> <L> <B> <R> <T>  (margins in um)
floorPlan -site $SITE -r 1 0.65 4.0 4.0 4.0 4.0

# =========================================================================
# 4. Power planning -- ring + a couple of stripes
# =========================================================================
# Metal layer names come from the PDK's LEF; the 90 nm tutorial used Metal1/Metal8/Metal9.
# We keep the shape simple: ring on inner-mid metals, stripes on the same.
# EDIT the -layer entries once you know the 45 nm metal stack.

addRing -skip_via_on_wire_shape Noshape \
        -skip_via_on_pin Standardcell -center 1 \
        -stacked_via_top_layer M6 -type core_rings \
        -jog_distance 0.4 -threshold 0.4 \
        -nets {VSS VDD} -follow core \
        -layer {bottom M1 top M1 right M6 left M6} \
        -width 1.0 -spacing 0.4 -offset 0.4 \
        -stacked_via_bottom_layer M1

addStripe -skip_via_on_wire_shape Noshape \
          -block_ring_top_layer_limit M6 \
          -max_same_layer_jog_length 0.8 \
          -padcore_ring_bottom_layer_limit M6 \
          -number_of_sets 4 -skip_via_on_pin Standardcell \
          -stacked_via_top_layer M6 \
          -padcore_ring_top_layer_limit M6 -spacing 0.4 \
          -merge_stripes_value 0.4 -layer M6 \
          -block_ring_bottom_layer_limit M6 -width 0.44 \
          -nets {VDD VSS} -stacked_via_bottom_layer M1

globalNetConnect VDD -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSS -override -verbose -netlistOverride

# =========================================================================
# 5. Placement
# =========================================================================
setPlaceMode -fp false          ;# real placement, not floorplan-mode trial
placeDesign

# Post-placement timing snapshot
timeDesign -preCTS -pathReports -drvReports -slackReports \
           -numPaths 50 -prefix simple_mac_preCTS -outDir ../pnr_report

# =========================================================================
# 6. Clock tree synthesis
# =========================================================================
# CCOpt is the modern Innovus CTS engine. Pick clock buffer/inverter cells
# from the library; names below are PLACEHOLDERS from the 90 nm tutorial.
# EDIT for 45 nm: grep '^CELL.*BUF' and '^CELL.*INV' in the .lib or use
# get_lib_cells -filter "clock_cell==true" from a Genus session.

set_ccopt_mode -cts_buffer_cells {CLKBUFX2 CLKBUFX3 CLKBUFX4 CLKBUFX6 \
                                   CLKBUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX20} \
               -cts_inverter_cells {CLKINVX1 CLKINVX2 CLKINVX3 CLKINVX4 \
                                    CLKINVX6 CLKINVX8 CLKINVX12 CLKINVX16 CLKINVX20} \
               -cts_opt_priority all

create_ccopt_clock_tree_spec -file ../pnr_report/ccopt_spec.spec \
                              -keep_all_sdc_clocks -views {view1 view1}
source ../pnr_report/ccopt_spec.spec

ccopt_design -check_prerequisites
ccopt_design -outDir ../pnr_report/CTS_timing

# =========================================================================
# 7. Post-CTS timing check and optimisation
# =========================================================================
timeDesign -postCTS -pathReports -drvReports -slackReports \
           -numPaths 50 -prefix simple_mac_postCTS -outDir ../pnr_report

timeDesign -postCTS -hold -pathReports -slackReports \
           -numPaths 50 -prefix simple_mac_postCTS -outDir ../pnr_report

setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold

# =========================================================================
# 8. Routing
# =========================================================================
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false

routeDesign -globalDetail

timeDesign -postRoute -pathReports -drvReports -slackReports \
           -numPaths 50 -prefix simple_mac_postRoute -outDir ../pnr_report

# =========================================================================
# 9. Parasitic extraction (Quantus / extractRC)
# =========================================================================
extractRC
rcOut -setload ../pnr_report/simple_mac.setload
rcOut -setres  ../pnr_report/simple_mac.setres
rcOut -spf     ../pnr_report/simple_mac.spf
rcOut -spef    ../pnr_report/simple_mac.spef

# SDF for gate-level simulation and independent signoff STA
write_sdf -ideal_clock_network ../pnr_report/simple_mac.sdf

# Gate count
reportGateCount -level 5 -limit 100 -outfile ../pnr_report/simple_mac.gateCount

# =========================================================================
# 10. GDS streamout
# =========================================================================
# streamOut.map maps internal layer names to GDS layer/datatype numbers.
# The PDK usually ships one; if not, ask the TA. Placeholder path below.
streamOut ../pnr_report/simple_mac.gds \
          -mapFile $PDK_DIR/qx/mapFile \
          -libName DesignLib -units 2000 -mode ALL

saveNetlist ../pnr_report/simple_mac_post_route.v
defOut -floorplan -netlist -routing ../pnr_report/simple_mac.def
saveDesign ../pnr_report/simple_mac_upto_gds.enc

puts "===================================================================="
puts "DONE.  Deliverables in ../pnr_report/:"
puts "  simple_mac.gds              -- the layout, this is Project 3b's headline output"
puts "  simple_mac_post_route.v     -- final gate-level netlist"
puts "  simple_mac.spef             -- extracted parasitics for signoff STA"
puts "  simple_mac.sdf              -- gate + interconnect delays"
puts "  simple_mac.def              -- placement + routing geometry"
puts "  simple_mac_upto_gds.enc     -- full Innovus DB, restorable"
puts "===================================================================="
