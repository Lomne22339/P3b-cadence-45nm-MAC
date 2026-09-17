#######################################################
#                                                     
#  Tempus Timing Signoff Solution Command Logging File                     
#  Created on Tue Sep 15 16:41:53 2026                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Signoff Solution v20.10-p003_1 (64bit) 04/29/2020 15:56 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p003_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 04/29/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006

read_lib -max /cadence/FOUNDRY/digital/45nm/dig/lib/slow.lib
read_lib -min /cadence/FOUNDRY/digital/45nm/dig/lib/fast.lib
read_verilog ../syn_report/simple_mac_netlist.v
set_top_module simple_mac
read_sdc ../syn_report/simple_mac_pd.sdc
set_global timing_defaultDelay 0
check_timing                                                            > ../sta_report/check_timing.rpt
report_timing -late  -nworst 10                                         >> ../sta_report/setup.rpt
report_timing -early -nworst 10                                         >> ../sta_report/hold.rpt
report_timing -late  -nworst 10 -retime path_slew_propagation \
                                                                        >> ../sta_report/setup_pba.rpt
report_analysis_coverage                                                >> ../sta_report/coverage.rpt
report_constraints -all_violators >> ../sta_report/violators.rpt
exit
