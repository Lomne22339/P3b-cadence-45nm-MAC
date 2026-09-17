######################################################################

# Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Tue Sep 15 13:46:02 IST 2026

# This file contains the RC script for /designs/simple_mac

######################################################################

::legacy::set_attribute -quiet init_lib_search_path /cadence/FOUNDRY/digital/45nm/dig/lib /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process no_value /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_hum false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet runtime_by_stage { {to_generic 0 8 0 7}  {first_condense 1 9 1 9}  {reify 1 10 2 11}  {global_incr_map 1 11 0 12}  {incr_opt 0 11 0 12} } /
::legacy::set_attribute -quiet timing_report_enable_common_header false /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_noorain22339.tstamp /
::legacy::set_attribute -quiet metric_enable true /
::legacy::set_attribute -quiet flow_metrics_snapshot_uuid 4ab14424-9f4d-4200-9102-5e6d17fa90eb /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet interconnect_mode wireload /
::legacy::set_attribute -quiet wireload_mode enclosed /
::legacy::set_attribute -quiet wireload_selection none /
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow/operating_conditions/slow
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 5000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design /designs/simple_mac /designs/simple_mac/ports_in/clk
::legacy::set_attribute -quiet slew {50.0 50.0 150.0 150.0} /designs/simple_mac/timing/clock_domains/domain_1/clk
::legacy::set_attribute -quiet clock_setup_uncertainty {200.0 200.0} /designs/simple_mac/timing/clock_domains/domain_1/clk
::legacy::set_attribute -quiet clock_hold_uncertainty {200.0 200.0} /designs/simple_mac/timing/clock_domains/domain_1/clk
define_cost_group -design /designs/simple_mac -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name create_clock_delay_domain_1_clk_R_0 /designs/simple_mac/ports_in/clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/simple_mac/timing/external_delays/create_clock_delay_domain_1_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 /designs/simple_mac/ports_in/clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/simple_mac/timing/external_delays/create_clock_delay_domain_1_clk_F_0
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14 /designs/simple_mac/ports_in/rst_n
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_1_1 /designs/simple_mac/ports_in/cf_we
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_2_1 {{/designs/simple_mac/ports_in/cf_addr[1]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_3_1 {{/designs/simple_mac/ports_in/cf_addr[0]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_4_1 {{/designs/simple_mac/ports_in/cf_din[7]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_5_1 {{/designs/simple_mac/ports_in/cf_din[6]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_6_1 {{/designs/simple_mac/ports_in/cf_din[5]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_7_1 {{/designs/simple_mac/ports_in/cf_din[4]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_8_1 {{/designs/simple_mac/ports_in/cf_din[3]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_9_1 {{/designs/simple_mac/ports_in/cf_din[2]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_10_1 {{/designs/simple_mac/ports_in/cf_din[1]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_11_1 {{/designs/simple_mac/ports_in/cf_din[0]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_12_1 /designs/simple_mac/ports_in/start
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_13_1 {{/designs/simple_mac/ports_in/din[7]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_14_1 {{/designs/simple_mac/ports_in/din[6]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_15_1 {{/designs/simple_mac/ports_in/din[5]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_16_1 {{/designs/simple_mac/ports_in/din[4]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_17_1 {{/designs/simple_mac/ports_in/din[3]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_18_1 {{/designs/simple_mac/ports_in/din[2]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_19_1 {{/designs/simple_mac/ports_in/din[1]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_20_1 {{/designs/simple_mac/ports_in/din[0]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_21_1 {{/designs/simple_mac/ports_in/coef_sel[1]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_22_1 {{/designs/simple_mac/ports_in/coef_sel[0]}}
external_delay -accumulate -input {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_14_23_1 /designs/simple_mac/ports_in/clr_acc
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15 {{/designs/simple_mac/ports_out/acc_out[15]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_24_1 {{/designs/simple_mac/ports_out/acc_out[14]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_25_1 {{/designs/simple_mac/ports_out/acc_out[13]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_26_1 {{/designs/simple_mac/ports_out/acc_out[12]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_27_1 {{/designs/simple_mac/ports_out/acc_out[11]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_28_1 {{/designs/simple_mac/ports_out/acc_out[10]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_29_1 {{/designs/simple_mac/ports_out/acc_out[9]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_30_1 {{/designs/simple_mac/ports_out/acc_out[8]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_31_1 {{/designs/simple_mac/ports_out/acc_out[7]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_32_1 {{/designs/simple_mac/ports_out/acc_out[6]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_33_1 {{/designs/simple_mac/ports_out/acc_out[5]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_34_1 {{/designs/simple_mac/ports_out/acc_out[4]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_35_1 {{/designs/simple_mac/ports_out/acc_out[3]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_36_1 {{/designs/simple_mac/ports_out/acc_out[2]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_37_1 {{/designs/simple_mac/ports_out/acc_out[1]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_38_1 {{/designs/simple_mac/ports_out/acc_out[0]}}
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_39_1 /designs/simple_mac/ports_out/done
external_delay -accumulate -output {1500.0 1500.0 1500.0 1500.0} -clock /designs/simple_mac/timing/clock_domains/domain_1/clk -name simple_mac.sdc_line_15_40_1 /designs/simple_mac/ports_out/busy
path_group -paths [specify_paths -to /designs/simple_mac/timing/clock_domains/domain_1/clk]  -name clk -group /designs/simple_mac/timing/cost_groups/clk -user_priority -1047552
path_disable -paths [specify_paths -lenient -from /designs/simple_mac/ports_in/rst_n]  -name simple_mac.sdc_line_20 -user_priority -901120
::legacy::set_attribute -quiet sdc_filename_linenumber {{../constraints/simple_mac.sdc 20}} /designs/simple_mac/timing/exceptions/path_disables/simple_mac.sdc_line_20
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
identify_multibit_cell_abstract_scan_segments -design /designs/simple_mac
# END DFT SECTION
::legacy::set_attribute -quiet seq_reason_deleted_internal {{{state_reg[1]} {{merged with busy_reg}} {state[1]} busy}} /designs/simple_mac
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 0} {cell_count 801} {utilization  0.00} {runtime 0 8 0 7} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 0} {cell_count 949} {utilization  0.00} {runtime 1 9 1 9} }{reify {wns 528} {tns 0} {vep 0} {area 0} {cell_count 587} {utilization  0.00} {runtime 1 10 2 11} }{global_incr_map {wns 156} {tns 0} {vep 0} {area 0} {cell_count 490} {utilization  0.00} {runtime 1 11 0 12} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 0} {cell_count 439} {utilization  0.00} {runtime 0 11 0 12} }} /designs/simple_mac
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/simple_mac
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/simple_mac.v} {../rtl/} {}}} /designs/simple_mac
::legacy::set_attribute -quiet hdl_user_name simple_mac /designs/simple_mac
::legacy::set_attribute -quiet verification_directory fv/simple_mac /designs/simple_mac
::legacy::set_attribute -quiet seq_reason_deleted {{{state_reg[1]} {{merged with busy_reg}}}} /designs/simple_mac
::legacy::set_attribute -quiet original_name clk /designs/simple_mac/ports_in/clk
::legacy::set_attribute -quiet original_name rst_n /designs/simple_mac/ports_in/rst_n
::legacy::set_attribute -quiet original_name cf_we /designs/simple_mac/ports_in/cf_we
::legacy::set_attribute -quiet original_name {cf_addr[1]} {/designs/simple_mac/ports_in/cf_addr[1]}
::legacy::set_attribute -quiet original_name {cf_addr[0]} {/designs/simple_mac/ports_in/cf_addr[0]}
::legacy::set_attribute -quiet original_name {cf_din[7]} {/designs/simple_mac/ports_in/cf_din[7]}
::legacy::set_attribute -quiet original_name {cf_din[6]} {/designs/simple_mac/ports_in/cf_din[6]}
::legacy::set_attribute -quiet original_name {cf_din[5]} {/designs/simple_mac/ports_in/cf_din[5]}
::legacy::set_attribute -quiet original_name {cf_din[4]} {/designs/simple_mac/ports_in/cf_din[4]}
::legacy::set_attribute -quiet original_name {cf_din[3]} {/designs/simple_mac/ports_in/cf_din[3]}
::legacy::set_attribute -quiet original_name {cf_din[2]} {/designs/simple_mac/ports_in/cf_din[2]}
::legacy::set_attribute -quiet original_name {cf_din[1]} {/designs/simple_mac/ports_in/cf_din[1]}
::legacy::set_attribute -quiet original_name {cf_din[0]} {/designs/simple_mac/ports_in/cf_din[0]}
::legacy::set_attribute -quiet original_name start /designs/simple_mac/ports_in/start
::legacy::set_attribute -quiet original_name {din[7]} {/designs/simple_mac/ports_in/din[7]}
::legacy::set_attribute -quiet original_name {din[6]} {/designs/simple_mac/ports_in/din[6]}
::legacy::set_attribute -quiet original_name {din[5]} {/designs/simple_mac/ports_in/din[5]}
::legacy::set_attribute -quiet original_name {din[4]} {/designs/simple_mac/ports_in/din[4]}
::legacy::set_attribute -quiet original_name {din[3]} {/designs/simple_mac/ports_in/din[3]}
::legacy::set_attribute -quiet original_name {din[2]} {/designs/simple_mac/ports_in/din[2]}
::legacy::set_attribute -quiet original_name {din[1]} {/designs/simple_mac/ports_in/din[1]}
::legacy::set_attribute -quiet original_name {din[0]} {/designs/simple_mac/ports_in/din[0]}
::legacy::set_attribute -quiet original_name {coef_sel[1]} {/designs/simple_mac/ports_in/coef_sel[1]}
::legacy::set_attribute -quiet original_name {coef_sel[0]} {/designs/simple_mac/ports_in/coef_sel[0]}
::legacy::set_attribute -quiet original_name clr_acc /designs/simple_mac/ports_in/clr_acc
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[15]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[15]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[15]}
::legacy::set_attribute -quiet original_name {acc_out[15]} {/designs/simple_mac/ports_out/acc_out[15]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[15]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[14]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[14]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[14]}
::legacy::set_attribute -quiet original_name {acc_out[14]} {/designs/simple_mac/ports_out/acc_out[14]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[14]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[13]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[13]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[13]}
::legacy::set_attribute -quiet original_name {acc_out[13]} {/designs/simple_mac/ports_out/acc_out[13]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[13]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[12]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[12]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[12]}
::legacy::set_attribute -quiet original_name {acc_out[12]} {/designs/simple_mac/ports_out/acc_out[12]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[12]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[11]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[11]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[11]}
::legacy::set_attribute -quiet original_name {acc_out[11]} {/designs/simple_mac/ports_out/acc_out[11]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[11]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[10]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[10]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[10]}
::legacy::set_attribute -quiet original_name {acc_out[10]} {/designs/simple_mac/ports_out/acc_out[10]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[10]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[9]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[9]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[9]}
::legacy::set_attribute -quiet original_name {acc_out[9]} {/designs/simple_mac/ports_out/acc_out[9]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[9]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[8]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[8]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[8]}
::legacy::set_attribute -quiet original_name {acc_out[8]} {/designs/simple_mac/ports_out/acc_out[8]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[8]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[7]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[7]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[7]}
::legacy::set_attribute -quiet original_name {acc_out[7]} {/designs/simple_mac/ports_out/acc_out[7]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[7]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[6]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[6]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[6]}
::legacy::set_attribute -quiet original_name {acc_out[6]} {/designs/simple_mac/ports_out/acc_out[6]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[6]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[5]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[5]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[5]}
::legacy::set_attribute -quiet original_name {acc_out[5]} {/designs/simple_mac/ports_out/acc_out[5]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[5]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[4]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[4]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[4]}
::legacy::set_attribute -quiet original_name {acc_out[4]} {/designs/simple_mac/ports_out/acc_out[4]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[4]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[3]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[3]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[3]}
::legacy::set_attribute -quiet original_name {acc_out[3]} {/designs/simple_mac/ports_out/acc_out[3]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[3]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[2]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[2]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[2]}
::legacy::set_attribute -quiet original_name {acc_out[2]} {/designs/simple_mac/ports_out/acc_out[2]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[2]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[1]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[1]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[1]}
::legacy::set_attribute -quiet original_name {acc_out[1]} {/designs/simple_mac/ports_out/acc_out[1]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[1]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 {/designs/simple_mac/ports_out/acc_out[0]}
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[0]}
::legacy::set_attribute -quiet external_capacitance_min 50.0 {/designs/simple_mac/ports_out/acc_out[0]}
::legacy::set_attribute -quiet original_name {acc_out[0]} {/designs/simple_mac/ports_out/acc_out[0]}
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} {/designs/simple_mac/ports_out/acc_out[0]}
::legacy::set_attribute -quiet external_pin_cap_min 50.0 /designs/simple_mac/ports_out/done
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} /designs/simple_mac/ports_out/done
::legacy::set_attribute -quiet external_capacitance_min 50.0 /designs/simple_mac/ports_out/done
::legacy::set_attribute -quiet original_name done /designs/simple_mac/ports_out/done
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} /designs/simple_mac/ports_out/done
::legacy::set_attribute -quiet external_pin_cap_min 50.0 /designs/simple_mac/ports_out/busy
::legacy::set_attribute -quiet external_capacitance_max {50.0 50.0} /designs/simple_mac/ports_out/busy
::legacy::set_attribute -quiet external_capacitance_min 50.0 /designs/simple_mac/ports_out/busy
::legacy::set_attribute -quiet original_name busy /designs/simple_mac/ports_out/busy
::legacy::set_attribute -quiet external_pin_cap {50.0 50.0} /designs/simple_mac/ports_out/busy
::legacy::set_attribute -quiet logical_hier false /designs/simple_mac/subdesigns/add_unsigned
::legacy::set_attribute -quiet rtlop_info {{} 0 0 0 3 0 7 0 2 1 1 0} /designs/simple_mac/instances_hier/add_61_40
::legacy::set_attribute -quiet logical_hier false /designs/simple_mac/subdesigns/mult_unsigned
::legacy::set_attribute -quiet rtlop_info {{} 0 0 0 3 0 47 0 2 1 1 0} /designs/simple_mac/instances_hier/mul_58_40
::legacy::set_attribute -quiet original_name {{coef[0][0]}} {/designs/simple_mac/instances_seq/coef_reg[0][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][0]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][0]} {/designs/simple_mac/instances_seq/coef_reg[0][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][0]}
::legacy::set_attribute -quiet original_name {coef[0][0]/q} {/designs/simple_mac/instances_seq/coef_reg[0][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[0][1]}} {/designs/simple_mac/instances_seq/coef_reg[0][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][1]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][1]} {/designs/simple_mac/instances_seq/coef_reg[0][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][1]}
::legacy::set_attribute -quiet original_name {coef[0][1]/q} {/designs/simple_mac/instances_seq/coef_reg[0][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[0][2]}} {/designs/simple_mac/instances_seq/coef_reg[0][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][2]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][2]} {/designs/simple_mac/instances_seq/coef_reg[0][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][2]}
::legacy::set_attribute -quiet original_name {coef[0][2]/q} {/designs/simple_mac/instances_seq/coef_reg[0][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[0][3]}} {/designs/simple_mac/instances_seq/coef_reg[0][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][3]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][3]} {/designs/simple_mac/instances_seq/coef_reg[0][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][3]}
::legacy::set_attribute -quiet original_name {coef[0][3]/q} {/designs/simple_mac/instances_seq/coef_reg[0][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[0][4]}} {/designs/simple_mac/instances_seq/coef_reg[0][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][4]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][4]} {/designs/simple_mac/instances_seq/coef_reg[0][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][4]}
::legacy::set_attribute -quiet original_name {coef[0][4]/q} {/designs/simple_mac/instances_seq/coef_reg[0][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[0][6]}} {/designs/simple_mac/instances_seq/coef_reg[0][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][6]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][6]} {/designs/simple_mac/instances_seq/coef_reg[0][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][6]}
::legacy::set_attribute -quiet original_name {coef[0][6]/q} {/designs/simple_mac/instances_seq/coef_reg[0][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[1][0]}} {/designs/simple_mac/instances_seq/coef_reg[1][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][0]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][0]} {/designs/simple_mac/instances_seq/coef_reg[1][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][0]}
::legacy::set_attribute -quiet original_name {coef[1][0]/q} {/designs/simple_mac/instances_seq/coef_reg[1][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[1][1]}} {/designs/simple_mac/instances_seq/coef_reg[1][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][1]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][1]} {/designs/simple_mac/instances_seq/coef_reg[1][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][1]}
::legacy::set_attribute -quiet original_name {coef[1][1]/q} {/designs/simple_mac/instances_seq/coef_reg[1][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[1][2]}} {/designs/simple_mac/instances_seq/coef_reg[1][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][2]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][2]} {/designs/simple_mac/instances_seq/coef_reg[1][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][2]}
::legacy::set_attribute -quiet original_name {coef[1][2]/q} {/designs/simple_mac/instances_seq/coef_reg[1][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[1][3]}} {/designs/simple_mac/instances_seq/coef_reg[1][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][3]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][3]} {/designs/simple_mac/instances_seq/coef_reg[1][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][3]}
::legacy::set_attribute -quiet original_name {coef[1][3]/q} {/designs/simple_mac/instances_seq/coef_reg[1][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[1][4]}} {/designs/simple_mac/instances_seq/coef_reg[1][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][4]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][4]} {/designs/simple_mac/instances_seq/coef_reg[1][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][4]}
::legacy::set_attribute -quiet original_name {coef[1][4]/q} {/designs/simple_mac/instances_seq/coef_reg[1][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[1][6]}} {/designs/simple_mac/instances_seq/coef_reg[1][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][6]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][6]} {/designs/simple_mac/instances_seq/coef_reg[1][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][6]}
::legacy::set_attribute -quiet original_name {coef[1][6]/q} {/designs/simple_mac/instances_seq/coef_reg[1][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][0]}} {/designs/simple_mac/instances_seq/coef_reg[2][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][0]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][0]} {/designs/simple_mac/instances_seq/coef_reg[2][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][0]}
::legacy::set_attribute -quiet original_name {coef[2][0]/q} {/designs/simple_mac/instances_seq/coef_reg[2][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][1]}} {/designs/simple_mac/instances_seq/coef_reg[2][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][1]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][1]} {/designs/simple_mac/instances_seq/coef_reg[2][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][1]}
::legacy::set_attribute -quiet original_name {coef[2][1]/q} {/designs/simple_mac/instances_seq/coef_reg[2][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][2]}} {/designs/simple_mac/instances_seq/coef_reg[2][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][2]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][2]} {/designs/simple_mac/instances_seq/coef_reg[2][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][2]}
::legacy::set_attribute -quiet original_name {coef[2][2]/q} {/designs/simple_mac/instances_seq/coef_reg[2][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][3]}} {/designs/simple_mac/instances_seq/coef_reg[2][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][3]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][3]} {/designs/simple_mac/instances_seq/coef_reg[2][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][3]}
::legacy::set_attribute -quiet original_name {coef[2][3]/q} {/designs/simple_mac/instances_seq/coef_reg[2][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][4]}} {/designs/simple_mac/instances_seq/coef_reg[2][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][4]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][4]} {/designs/simple_mac/instances_seq/coef_reg[2][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][4]}
::legacy::set_attribute -quiet original_name {coef[2][4]/q} {/designs/simple_mac/instances_seq/coef_reg[2][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][6]}} {/designs/simple_mac/instances_seq/coef_reg[2][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][6]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][6]} {/designs/simple_mac/instances_seq/coef_reg[2][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][6]}
::legacy::set_attribute -quiet original_name {coef[2][6]/q} {/designs/simple_mac/instances_seq/coef_reg[2][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[3][0]}} {/designs/simple_mac/instances_seq/coef_reg[3][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][0]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][0]} {/designs/simple_mac/instances_seq/coef_reg[3][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][0]}
::legacy::set_attribute -quiet original_name {coef[3][0]/q} {/designs/simple_mac/instances_seq/coef_reg[3][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[3][1]}} {/designs/simple_mac/instances_seq/coef_reg[3][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][1]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][1]} {/designs/simple_mac/instances_seq/coef_reg[3][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][1]}
::legacy::set_attribute -quiet original_name {coef[3][1]/q} {/designs/simple_mac/instances_seq/coef_reg[3][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[3][2]}} {/designs/simple_mac/instances_seq/coef_reg[3][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][2]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][2]} {/designs/simple_mac/instances_seq/coef_reg[3][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][2]}
::legacy::set_attribute -quiet original_name {coef[3][2]/q} {/designs/simple_mac/instances_seq/coef_reg[3][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[3][3]}} {/designs/simple_mac/instances_seq/coef_reg[3][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][3]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][3]} {/designs/simple_mac/instances_seq/coef_reg[3][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][3]}
::legacy::set_attribute -quiet original_name {coef[3][3]/q} {/designs/simple_mac/instances_seq/coef_reg[3][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[3][4]}} {/designs/simple_mac/instances_seq/coef_reg[3][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][4]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][4]} {/designs/simple_mac/instances_seq/coef_reg[3][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][4]}
::legacy::set_attribute -quiet original_name {coef[3][4]/q} {/designs/simple_mac/instances_seq/coef_reg[3][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[3][6]}} {/designs/simple_mac/instances_seq/coef_reg[3][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][6]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][6]} {/designs/simple_mac/instances_seq/coef_reg[3][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][6]}
::legacy::set_attribute -quiet original_name {coef[3][6]/q} {/designs/simple_mac/instances_seq/coef_reg[3][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[0]}} {/designs/simple_mac/instances_seq/mult_result_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[0]} {/designs/simple_mac/instances_seq/mult_result_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[0]}
::legacy::set_attribute -quiet original_name {mult_result[0]/q} {/designs/simple_mac/instances_seq/mult_result_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[1]}} {/designs/simple_mac/instances_seq/mult_result_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[1]} {/designs/simple_mac/instances_seq/mult_result_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[1]}
::legacy::set_attribute -quiet original_name {mult_result[1]/q} {/designs/simple_mac/instances_seq/mult_result_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[2]}} {/designs/simple_mac/instances_seq/mult_result_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[2]} {/designs/simple_mac/instances_seq/mult_result_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[2]}
::legacy::set_attribute -quiet original_name {mult_result[2]/q} {/designs/simple_mac/instances_seq/mult_result_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[3]}} {/designs/simple_mac/instances_seq/mult_result_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[3]} {/designs/simple_mac/instances_seq/mult_result_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[3]}
::legacy::set_attribute -quiet original_name {mult_result[3]/q} {/designs/simple_mac/instances_seq/mult_result_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[4]}} {/designs/simple_mac/instances_seq/mult_result_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[4]} {/designs/simple_mac/instances_seq/mult_result_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[4]}
::legacy::set_attribute -quiet original_name {mult_result[4]/q} {/designs/simple_mac/instances_seq/mult_result_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[5]}} {/designs/simple_mac/instances_seq/mult_result_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[5]} {/designs/simple_mac/instances_seq/mult_result_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[5]}
::legacy::set_attribute -quiet original_name {mult_result[5]/q} {/designs/simple_mac/instances_seq/mult_result_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[6]}} {/designs/simple_mac/instances_seq/mult_result_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[6]} {/designs/simple_mac/instances_seq/mult_result_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[6]}
::legacy::set_attribute -quiet original_name {mult_result[6]/q} {/designs/simple_mac/instances_seq/mult_result_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[7]}} {/designs/simple_mac/instances_seq/mult_result_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[7]} {/designs/simple_mac/instances_seq/mult_result_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[7]}
::legacy::set_attribute -quiet original_name {mult_result[7]/q} {/designs/simple_mac/instances_seq/mult_result_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[8]}} {/designs/simple_mac/instances_seq/mult_result_reg[8]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[8]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[8]} {/designs/simple_mac/instances_seq/mult_result_reg[8]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[8]}
::legacy::set_attribute -quiet original_name {mult_result[8]/q} {/designs/simple_mac/instances_seq/mult_result_reg[8]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[9]}} {/designs/simple_mac/instances_seq/mult_result_reg[9]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[9]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[9]} {/designs/simple_mac/instances_seq/mult_result_reg[9]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[9]}
::legacy::set_attribute -quiet original_name {mult_result[9]/q} {/designs/simple_mac/instances_seq/mult_result_reg[9]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[10]}} {/designs/simple_mac/instances_seq/mult_result_reg[10]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[10]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[10]} {/designs/simple_mac/instances_seq/mult_result_reg[10]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[10]}
::legacy::set_attribute -quiet original_name {mult_result[10]/q} {/designs/simple_mac/instances_seq/mult_result_reg[10]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[11]}} {/designs/simple_mac/instances_seq/mult_result_reg[11]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[11]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[11]} {/designs/simple_mac/instances_seq/mult_result_reg[11]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[11]}
::legacy::set_attribute -quiet original_name {mult_result[11]/q} {/designs/simple_mac/instances_seq/mult_result_reg[11]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[12]}} {/designs/simple_mac/instances_seq/mult_result_reg[12]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[12]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[12]} {/designs/simple_mac/instances_seq/mult_result_reg[12]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[12]}
::legacy::set_attribute -quiet original_name {mult_result[12]/q} {/designs/simple_mac/instances_seq/mult_result_reg[12]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[13]}} {/designs/simple_mac/instances_seq/mult_result_reg[13]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[13]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[13]} {/designs/simple_mac/instances_seq/mult_result_reg[13]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[13]}
::legacy::set_attribute -quiet original_name {mult_result[13]/q} {/designs/simple_mac/instances_seq/mult_result_reg[13]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[14]}} {/designs/simple_mac/instances_seq/mult_result_reg[14]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[14]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[14]} {/designs/simple_mac/instances_seq/mult_result_reg[14]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[14]}
::legacy::set_attribute -quiet original_name {mult_result[14]/q} {/designs/simple_mac/instances_seq/mult_result_reg[14]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{mult_result[15]}} {/designs/simple_mac/instances_seq/mult_result_reg[15]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/mult_result_reg[15]}
::legacy::set_attribute -quiet single_bit_orig_name {mult_result[15]} {/designs/simple_mac/instances_seq/mult_result_reg[15]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/mult_result_reg[15]}
::legacy::set_attribute -quiet original_name {mult_result[15]/q} {/designs/simple_mac/instances_seq/mult_result_reg[15]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{coef[2][5]}} {/designs/simple_mac/instances_seq/coef_reg[2][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][5]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][5]} {/designs/simple_mac/instances_seq/coef_reg[2][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][5]}
::legacy::set_attribute -quiet original_name {coef[2][5]/q} {/designs/simple_mac/instances_seq/coef_reg[2][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[2][5]/q} {/designs/simple_mac/instances_seq/coef_reg[2][5]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[2][7]}} {/designs/simple_mac/instances_seq/coef_reg[2][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[2][7]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[2][7]} {/designs/simple_mac/instances_seq/coef_reg[2][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[2][7]}
::legacy::set_attribute -quiet original_name {coef[2][7]/q} {/designs/simple_mac/instances_seq/coef_reg[2][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[2][7]/q} {/designs/simple_mac/instances_seq/coef_reg[2][7]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[1][5]}} {/designs/simple_mac/instances_seq/coef_reg[1][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][5]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][5]} {/designs/simple_mac/instances_seq/coef_reg[1][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][5]}
::legacy::set_attribute -quiet original_name {coef[1][5]/q} {/designs/simple_mac/instances_seq/coef_reg[1][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[1][5]/q} {/designs/simple_mac/instances_seq/coef_reg[1][5]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[0][7]}} {/designs/simple_mac/instances_seq/coef_reg[0][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][7]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][7]} {/designs/simple_mac/instances_seq/coef_reg[0][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][7]}
::legacy::set_attribute -quiet original_name {coef[0][7]/q} {/designs/simple_mac/instances_seq/coef_reg[0][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[0][7]/q} {/designs/simple_mac/instances_seq/coef_reg[0][7]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[3][7]}} {/designs/simple_mac/instances_seq/coef_reg[3][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][7]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][7]} {/designs/simple_mac/instances_seq/coef_reg[3][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][7]}
::legacy::set_attribute -quiet original_name {coef[3][7]/q} {/designs/simple_mac/instances_seq/coef_reg[3][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[3][7]/q} {/designs/simple_mac/instances_seq/coef_reg[3][7]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[1][7]}} {/designs/simple_mac/instances_seq/coef_reg[1][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[1][7]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[1][7]} {/designs/simple_mac/instances_seq/coef_reg[1][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[1][7]}
::legacy::set_attribute -quiet original_name {coef[1][7]/q} {/designs/simple_mac/instances_seq/coef_reg[1][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[1][7]/q} {/designs/simple_mac/instances_seq/coef_reg[1][7]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[3][5]}} {/designs/simple_mac/instances_seq/coef_reg[3][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[3][5]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[3][5]} {/designs/simple_mac/instances_seq/coef_reg[3][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[3][5]}
::legacy::set_attribute -quiet original_name {coef[3][5]/q} {/designs/simple_mac/instances_seq/coef_reg[3][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[3][5]/q} {/designs/simple_mac/instances_seq/coef_reg[3][5]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{coef[0][5]}} {/designs/simple_mac/instances_seq/coef_reg[0][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/coef_reg[0][5]}
::legacy::set_attribute -quiet single_bit_orig_name {coef[0][5]} {/designs/simple_mac/instances_seq/coef_reg[0][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/coef_reg[0][5]}
::legacy::set_attribute -quiet original_name {coef[0][5]/q} {/designs/simple_mac/instances_seq/coef_reg[0][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {coef[0][5]/q} {/designs/simple_mac/instances_seq/coef_reg[0][5]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[4]}} {/designs/simple_mac/instances_seq/acc_out_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[4]} {/designs/simple_mac/instances_seq/acc_out_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[4]}
::legacy::set_attribute -quiet original_name {acc_out[4]/q} {/designs/simple_mac/instances_seq/acc_out_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[4]/q} {/designs/simple_mac/instances_seq/acc_out_reg[4]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[9]}} {/designs/simple_mac/instances_seq/acc_out_reg[9]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[9]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[9]} {/designs/simple_mac/instances_seq/acc_out_reg[9]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[9]}
::legacy::set_attribute -quiet original_name {acc_out[9]/q} {/designs/simple_mac/instances_seq/acc_out_reg[9]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[9]/q} {/designs/simple_mac/instances_seq/acc_out_reg[9]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[0]}} {/designs/simple_mac/instances_seq/acc_out_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[0]} {/designs/simple_mac/instances_seq/acc_out_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[0]}
::legacy::set_attribute -quiet original_name {acc_out[0]/q} {/designs/simple_mac/instances_seq/acc_out_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[0]/q} {/designs/simple_mac/instances_seq/acc_out_reg[0]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[1]}} {/designs/simple_mac/instances_seq/acc_out_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[1]} {/designs/simple_mac/instances_seq/acc_out_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[1]}
::legacy::set_attribute -quiet original_name {acc_out[1]/q} {/designs/simple_mac/instances_seq/acc_out_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[1]/q} {/designs/simple_mac/instances_seq/acc_out_reg[1]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[7]}} {/designs/simple_mac/instances_seq/acc_out_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[7]} {/designs/simple_mac/instances_seq/acc_out_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[7]}
::legacy::set_attribute -quiet original_name {acc_out[7]/q} {/designs/simple_mac/instances_seq/acc_out_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[7]/q} {/designs/simple_mac/instances_seq/acc_out_reg[7]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[8]}} {/designs/simple_mac/instances_seq/acc_out_reg[8]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[8]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[8]} {/designs/simple_mac/instances_seq/acc_out_reg[8]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[8]}
::legacy::set_attribute -quiet original_name {acc_out[8]/q} {/designs/simple_mac/instances_seq/acc_out_reg[8]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[8]/q} {/designs/simple_mac/instances_seq/acc_out_reg[8]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{state[0]}} {/designs/simple_mac/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {state[0]} {/designs/simple_mac/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet original_name {state[0]/q} {/designs/simple_mac/instances_seq/state_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {state[0]/q} {/designs/simple_mac/instances_seq/state_reg[0]/pins_out/QN}
::legacy::set_attribute -quiet original_name busy /designs/simple_mac/instances_seq/busy_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/simple_mac/instances_seq/busy_reg
::legacy::set_attribute -quiet single_bit_orig_name busy /designs/simple_mac/instances_seq/busy_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/simple_mac/instances_seq/busy_reg
::legacy::set_attribute -quiet original_name busy/q /designs/simple_mac/instances_seq/busy_reg/pins_out/Q
::legacy::set_attribute -quiet original_name busy/q /designs/simple_mac/instances_seq/busy_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{acc_out[2]}} {/designs/simple_mac/instances_seq/acc_out_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[2]} {/designs/simple_mac/instances_seq/acc_out_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[2]}
::legacy::set_attribute -quiet original_name {acc_out[2]/q} {/designs/simple_mac/instances_seq/acc_out_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[2]/q} {/designs/simple_mac/instances_seq/acc_out_reg[2]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[11]}} {/designs/simple_mac/instances_seq/acc_out_reg[11]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[11]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[11]} {/designs/simple_mac/instances_seq/acc_out_reg[11]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[11]}
::legacy::set_attribute -quiet original_name {acc_out[11]/q} {/designs/simple_mac/instances_seq/acc_out_reg[11]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[11]/q} {/designs/simple_mac/instances_seq/acc_out_reg[11]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[3]}} {/designs/simple_mac/instances_seq/acc_out_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[3]} {/designs/simple_mac/instances_seq/acc_out_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[3]}
::legacy::set_attribute -quiet original_name {acc_out[3]/q} {/designs/simple_mac/instances_seq/acc_out_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[3]/q} {/designs/simple_mac/instances_seq/acc_out_reg[3]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[12]}} {/designs/simple_mac/instances_seq/acc_out_reg[12]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[12]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[12]} {/designs/simple_mac/instances_seq/acc_out_reg[12]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[12]}
::legacy::set_attribute -quiet original_name {acc_out[12]/q} {/designs/simple_mac/instances_seq/acc_out_reg[12]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[12]/q} {/designs/simple_mac/instances_seq/acc_out_reg[12]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[6]}} {/designs/simple_mac/instances_seq/acc_out_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[6]} {/designs/simple_mac/instances_seq/acc_out_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[6]}
::legacy::set_attribute -quiet original_name {acc_out[6]/q} {/designs/simple_mac/instances_seq/acc_out_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[6]/q} {/designs/simple_mac/instances_seq/acc_out_reg[6]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[10]}} {/designs/simple_mac/instances_seq/acc_out_reg[10]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[10]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[10]} {/designs/simple_mac/instances_seq/acc_out_reg[10]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[10]}
::legacy::set_attribute -quiet original_name {acc_out[10]/q} {/designs/simple_mac/instances_seq/acc_out_reg[10]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[10]/q} {/designs/simple_mac/instances_seq/acc_out_reg[10]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[13]}} {/designs/simple_mac/instances_seq/acc_out_reg[13]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[13]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[13]} {/designs/simple_mac/instances_seq/acc_out_reg[13]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[13]}
::legacy::set_attribute -quiet original_name {acc_out[13]/q} {/designs/simple_mac/instances_seq/acc_out_reg[13]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[13]/q} {/designs/simple_mac/instances_seq/acc_out_reg[13]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[15]}} {/designs/simple_mac/instances_seq/acc_out_reg[15]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[15]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[15]} {/designs/simple_mac/instances_seq/acc_out_reg[15]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[15]}
::legacy::set_attribute -quiet original_name {acc_out[15]/q} {/designs/simple_mac/instances_seq/acc_out_reg[15]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[15]/q} {/designs/simple_mac/instances_seq/acc_out_reg[15]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[14]}} {/designs/simple_mac/instances_seq/acc_out_reg[14]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[14]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[14]} {/designs/simple_mac/instances_seq/acc_out_reg[14]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[14]}
::legacy::set_attribute -quiet original_name {acc_out[14]/q} {/designs/simple_mac/instances_seq/acc_out_reg[14]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[14]/q} {/designs/simple_mac/instances_seq/acc_out_reg[14]/pins_out/QN}
::legacy::set_attribute -quiet original_name {{acc_out[5]}} {/designs/simple_mac/instances_seq/acc_out_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/simple_mac/instances_seq/acc_out_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {acc_out[5]} {/designs/simple_mac/instances_seq/acc_out_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/simple_mac/instances_seq/acc_out_reg[5]}
::legacy::set_attribute -quiet original_name {acc_out[5]/q} {/designs/simple_mac/instances_seq/acc_out_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {acc_out[5]/q} {/designs/simple_mac/instances_seq/acc_out_reg[5]/pins_out/QN}
::legacy::set_attribute -quiet original_name done /designs/simple_mac/instances_seq/done_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/simple_mac/instances_seq/done_reg
::legacy::set_attribute -quiet single_bit_orig_name done /designs/simple_mac/instances_seq/done_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/simple_mac/instances_seq/done_reg
::legacy::set_attribute -quiet original_name done/q /designs/simple_mac/instances_seq/done_reg/pins_out/Q
::legacy::set_attribute -quiet original_name done/q /designs/simple_mac/instances_seq/done_reg/pins_out/QN
# BEGIN PMBIST SECTION
# END PMBIST SECTION
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 19.13-s073_1
## flowkit v19.10-s013_1
## Written on 13:46:03 15-Sep 2026
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_flowkit_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_flowkit_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid 4ab14424-9f4d-4200-9102-5e6d17fa90eb}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_flowkit_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

