# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Tue Sep 15 16:30:10 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design simple_mac

create_clock -name "clk" -period 5.0 -waveform {0.0 2.5} [get_ports clk]
set_clock_transition -min 0.05 [get_clocks clk]
set_clock_transition -max 0.15 [get_clocks clk]
set_load -pin_load 0.05 [get_ports {acc_out[15]}]
set_load -pin_load 0.05 [get_ports {acc_out[14]}]
set_load -pin_load 0.05 [get_ports {acc_out[13]}]
set_load -pin_load 0.05 [get_ports {acc_out[12]}]
set_load -pin_load 0.05 [get_ports {acc_out[11]}]
set_load -pin_load 0.05 [get_ports {acc_out[10]}]
set_load -pin_load 0.05 [get_ports {acc_out[9]}]
set_load -pin_load 0.05 [get_ports {acc_out[8]}]
set_load -pin_load 0.05 [get_ports {acc_out[7]}]
set_load -pin_load 0.05 [get_ports {acc_out[6]}]
set_load -pin_load 0.05 [get_ports {acc_out[5]}]
set_load -pin_load 0.05 [get_ports {acc_out[4]}]
set_load -pin_load 0.05 [get_ports {acc_out[3]}]
set_load -pin_load 0.05 [get_ports {acc_out[2]}]
set_load -pin_load 0.05 [get_ports {acc_out[1]}]
set_load -pin_load 0.05 [get_ports {acc_out[0]}]
set_load -pin_load 0.05 [get_ports done]
set_load -pin_load 0.05 [get_ports busy]
set_false_path -from [get_ports rst_n]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports cf_we]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_addr[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_addr[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {cf_din[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports start]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {din[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {coef_sel[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {coef_sel[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports clr_acc]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports {acc_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports done]
set_output_delay -clock [get_clocks clk] -add_delay 1.5 [get_ports busy]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.2 [get_clocks clk]
set_clock_uncertainty -hold 0.2 [get_clocks clk]
