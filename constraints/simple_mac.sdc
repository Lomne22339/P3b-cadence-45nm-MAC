# simple_mac.sdc -- timing constraints, 45 nm target
# Clock: 200 MHz (5.0 ns), matches what we ran on cmos065 (WNS 0, critical 3.09 ns)

create_clock -name clk -period 5.00 [get_ports clk]

set_clock_transition -rise -min 0.05 [get_clocks clk]
set_clock_transition -rise -max 0.15 [get_clocks clk]
set_clock_transition -fall -min 0.05 [get_clocks clk]
set_clock_transition -fall -max 0.15 [get_clocks clk]

set_clock_uncertainty 0.20 [get_clocks clk]

# I/O timing budgets (about 30 % of the period on each side; conservative)
set_input_delay  -clock [get_clocks clk] -add_delay 1.50 [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay -clock [get_clocks clk] -add_delay 1.50 [all_outputs]

set_load 0.05 [all_outputs]

# rst_n is asynchronous release; it should not sit on a normal timing path
set_false_path -from [get_ports rst_n]
