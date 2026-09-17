set_db common_ui false
# genus_synth.tcl -- logic synthesis of simple_mac on 45 nm PDK
# Run:  cd scripts; genus -f genus_synth.tcl
# Or interactive:  genus  then  source genus_synth.tcl

# --- Library and source search paths ---
set_attr lib_search_path /cadence/FOUNDRY/digital/45nm/dig/lib
set_attr hdl_search_path ../rtl/
set_attr library slow.lib

# --- Read and elaborate ---
read_hdl simple_mac.v
elaborate
read_sdc ../constraints/simple_mac.sdc

# --- Synthesize ---
# 'medium' effort is the tutorial default; bump to 'high' if we want tighter closure later.
synthesize -to_mapped -effort medium

# --- Handoff files for physical design and STA ---
write_sdf -timescale ns -nonegchecks -recrem split \
          -edges check_edge > ../syn_report/simple_mac_delays.sdf
write_hdl                     > ../syn_report/simple_mac_netlist.v
write_sdc                     > ../syn_report/simple_mac_pd.sdc
write_script                  > ../syn_report/simple_mac_synth_sdc.g

# --- Reports (four files, one per aspect) ---
report timing > ../syn_report/simple_mac_timing.rep
report power  > ../syn_report/simple_mac_power.rep
report gates  > ../syn_report/simple_mac_cells.rep
report area   > ../syn_report/simple_mac_area.rep

# Leave Genus GUI up so we can inspect. Replace with 'exit' for pure batch.
gui_show
