###################################################################

# Created by write_sdc on Fri Dec 26 00:35:31 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -analysis_type bc_wc -max ss_v0p9_-40c -max_library   \
scc65nll_hs_lvt_ss_v0p9_-40c_basic\
                         -min ff_v1p1_-40c -min_library                        \
scc65nll_hs_lvt_ff_v1p1_-40c_basic
set_wire_load_mode top
set_max_area 1
set_max_transition 0.5 [current_design]
set_max_fanout 50 [current_design]
create_clock [get_ports clk]  -period 3.5  -waveform {0 1.75}
set_clock_latency 0.1  [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
set_max_delay 4  -from [list [get_ports clk] [get_ports rstn] [get_ports ctr] [get_ports       \
{a_in[7]}] [get_ports {a_in[6]}] [get_ports {a_in[5]}] [get_ports {a_in[4]}]   \
[get_ports {a_in[3]}] [get_ports {a_in[2]}] [get_ports {a_in[1]}] [get_ports   \
{a_in[0]}] [get_ports {g_in[7]}] [get_ports {g_in[6]}] [get_ports {g_in[5]}]   \
[get_ports {g_in[4]}] [get_ports {g_in[3]}] [get_ports {g_in[2]}] [get_ports   \
{g_in[1]}] [get_ports {g_in[0]}] [get_ports {b_in[7]}] [get_ports {b_in[6]}]   \
[get_ports {b_in[5]}] [get_ports {b_in[4]}] [get_ports {b_in[3]}] [get_ports   \
{b_in[2]}] [get_ports {b_in[1]}] [get_ports {b_in[0]}]]  -to [list [get_ports {po[7]}] [get_ports {po[6]}] [get_ports {po[5]}]         \
[get_ports {po[4]}] [get_ports {po[3]}] [get_ports {po[2]}] [get_ports         \
{po[1]}] [get_ports {po[0]}] [get_ports ctro]]
set_min_delay 0.1  -from [list [get_ports clk] [get_ports rstn] [get_ports ctr] [get_ports       \
{a_in[7]}] [get_ports {a_in[6]}] [get_ports {a_in[5]}] [get_ports {a_in[4]}]   \
[get_ports {a_in[3]}] [get_ports {a_in[2]}] [get_ports {a_in[1]}] [get_ports   \
{a_in[0]}] [get_ports {g_in[7]}] [get_ports {g_in[6]}] [get_ports {g_in[5]}]   \
[get_ports {g_in[4]}] [get_ports {g_in[3]}] [get_ports {g_in[2]}] [get_ports   \
{g_in[1]}] [get_ports {g_in[0]}] [get_ports {b_in[7]}] [get_ports {b_in[6]}]   \
[get_ports {b_in[5]}] [get_ports {b_in[4]}] [get_ports {b_in[3]}] [get_ports   \
{b_in[2]}] [get_ports {b_in[1]}] [get_ports {b_in[0]}]]  -to [list [get_ports {po[7]}] [get_ports {po[6]}] [get_ports {po[5]}]         \
[get_ports {po[4]}] [get_ports {po[3]}] [get_ports {po[2]}] [get_ports         \
{po[1]}] [get_ports {po[0]}] [get_ports ctro]]
set_input_delay -clock clk  -max 0.1  [get_ports clk]
set_input_delay -clock clk  -max 0.1  [get_ports rstn]
set_input_delay -clock clk  -max 0.1  [get_ports ctr]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[7]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[6]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[5]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[4]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[3]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[2]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[1]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[0]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[7]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[6]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[5]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[4]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[3]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[2]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[1]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[0]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[7]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[6]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[5]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[4]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[3]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[2]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[1]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[0]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[7]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[6]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[5]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[4]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[3]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[2]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[1]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[0]}]
set_output_delay -clock clk  -max 0.1  [get_ports ctro]
