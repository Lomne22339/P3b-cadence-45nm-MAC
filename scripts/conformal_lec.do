// conformal_lec.do -- formal equivalence: RTL (golden) vs synthesised netlist
// Run:  lec -dofile conformal_lec.do
// NOTE: Conformal uses SPACES, not underscores. Comments use //, not #.

set log file ../eqv_report/lec.log -replace

// Simulation models for the library cells.
// NOTE: The 45 nm PDK ships slow.lib but no plain slow.v; per the Release Note
// (gsclib045_v3.5), there is a 'functional' view derived from slow.v inside the
// PDK. If Conformal errors on the read below, check /cadence/FOUNDRY/digital/45nm/
// for a *.v anywhere and update this path, or ask the TA for the sim model file.
read library /cadence/FOUNDRY/digital/45nm/dig/lib/slow.lib -liberty -both

read design ../rtl/simple_mac.v                            -verilog -golden
read design ../syn_report/simple_mac_netlist.v             -verilog -revised

set system mode lec

add compared points -all
compare
report compare data -noneq
report verification
