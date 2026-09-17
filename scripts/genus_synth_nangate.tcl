set_db common_ui false

set_attr lib_search_path /cadence/FOUNDRY/digital/45nm/NangateOpenCellLibrary_v1.00_20080225/liberty
set_attr hdl_search_path ../rtl/
set_attr library FreePDK45_lib_v1.0_typical.lib

read_hdl simple_mac.v
elaborate
read_sdc ../constraints/simple_mac.sdc

synthesize -to_mapped -effort medium

write_hdl > ../syn_report/simple_mac_netlist_nangate.v
write_sdc > ../syn_report/simple_mac_pd_nangate.sdc

report timing > ../syn_report/simple_mac_timing_nangate.rep
report gates  > ../syn_report/simple_mac_cells_nangate.rep
report area   > ../syn_report/simple_mac_area_nangate.rep
exit
