set log file ../eqv_report/lec_nangate.log -replace

read library /cadence/FOUNDRY/digital/45nm/NangateOpenCellLibrary_v1.00_20080225/verilog/FreePDK45_lib_v1.0_typical.v -verilog -both

read design ../rtl/simple_mac.v                        -verilog -golden
read design ../syn_report/simple_mac_netlist_nangate.v -verilog -revised

set system mode lec

add compared points -all
compare
report compare data -noneq
report verification
exit
