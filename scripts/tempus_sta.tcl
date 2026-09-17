# tempus_sta.tcl -- signoff-quality static timing analysis, post-synthesis
# Run:  tempus -nowin -file tempus_sta.tcl        (batch)
# Or:   tempus  then  source tempus_sta.tcl        (interactive)

set LIB /cadence/FOUNDRY/digital/45nm/dig/lib

file mkdir ../sta_report

# Two corners: slow for setup (late), fast for hold (early)
read_lib -max $LIB/slow.lib
read_lib -min $LIB/fast.lib

read_verilog ../syn_report/simple_mac_netlist.v
set_top_module simple_mac
read_sdc ../syn_report/simple_mac_pd.sdc

# No wire delays yet -- we're still pre-layout. After routing, replace this with read_spef.
set_global timing_defaultDelay 0

check_timing                                                            > ../sta_report/check_timing.rpt
report_timing -late  -nworst 10                                         >> ../sta_report/setup.rpt
report_timing -early -nworst 10                                         >> ../sta_report/hold.rpt
report_timing -late  -nworst 10 -retime path_slew_propagation \
                                                                        >> ../sta_report/setup_pba.rpt
report_analysis_coverage                                                >> ../sta_report/coverage.rpt
report_constraints -all_violators                                       >> ../sta_report/violators.rpt

# Uncomment to keep GUI open for path inspection
# start_gui
