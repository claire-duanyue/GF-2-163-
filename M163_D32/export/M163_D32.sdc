###################################################################

# Created by write_sdc on Fri Dec 26 03:40:38 2014

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -analysis_type bc_wc -max ss_v0p9_-40c -max_library   \
scc65nll_hs_lvt_ss_v0p9_-40c_basic\
                         -min ff_v1p1_-40c -min_library                        \
scc65nll_hs_lvt_ff_v1p1_-40c_basic
set_wire_load_mode top
set_max_area 1
set_max_transition 0.5 [current_design]
set_max_fanout 50 [current_design]
create_clock [get_ports clk]  -period 13  -waveform {0 6.5}
set_clock_latency 0.1  [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
set_max_delay 4  -from [list [get_ports clk] [get_ports rstn] [get_ports ctr] [get_ports       \
{a_in[31]}] [get_ports {a_in[30]}] [get_ports {a_in[29]}] [get_ports           \
{a_in[28]}] [get_ports {a_in[27]}] [get_ports {a_in[26]}] [get_ports           \
{a_in[25]}] [get_ports {a_in[24]}] [get_ports {a_in[23]}] [get_ports           \
{a_in[22]}] [get_ports {a_in[21]}] [get_ports {a_in[20]}] [get_ports           \
{a_in[19]}] [get_ports {a_in[18]}] [get_ports {a_in[17]}] [get_ports           \
{a_in[16]}] [get_ports {a_in[15]}] [get_ports {a_in[14]}] [get_ports           \
{a_in[13]}] [get_ports {a_in[12]}] [get_ports {a_in[11]}] [get_ports           \
{a_in[10]}] [get_ports {a_in[9]}] [get_ports {a_in[8]}] [get_ports {a_in[7]}]  \
[get_ports {a_in[6]}] [get_ports {a_in[5]}] [get_ports {a_in[4]}] [get_ports   \
{a_in[3]}] [get_ports {a_in[2]}] [get_ports {a_in[1]}] [get_ports {a_in[0]}]   \
[get_ports {g_in[31]}] [get_ports {g_in[30]}] [get_ports {g_in[29]}]           \
[get_ports {g_in[28]}] [get_ports {g_in[27]}] [get_ports {g_in[26]}]           \
[get_ports {g_in[25]}] [get_ports {g_in[24]}] [get_ports {g_in[23]}]           \
[get_ports {g_in[22]}] [get_ports {g_in[21]}] [get_ports {g_in[20]}]           \
[get_ports {g_in[19]}] [get_ports {g_in[18]}] [get_ports {g_in[17]}]           \
[get_ports {g_in[16]}] [get_ports {g_in[15]}] [get_ports {g_in[14]}]           \
[get_ports {g_in[13]}] [get_ports {g_in[12]}] [get_ports {g_in[11]}]           \
[get_ports {g_in[10]}] [get_ports {g_in[9]}] [get_ports {g_in[8]}] [get_ports  \
{g_in[7]}] [get_ports {g_in[6]}] [get_ports {g_in[5]}] [get_ports {g_in[4]}]   \
[get_ports {g_in[3]}] [get_ports {g_in[2]}] [get_ports {g_in[1]}] [get_ports   \
{g_in[0]}] [get_ports {b_in[31]}] [get_ports {b_in[30]}] [get_ports            \
{b_in[29]}] [get_ports {b_in[28]}] [get_ports {b_in[27]}] [get_ports           \
{b_in[26]}] [get_ports {b_in[25]}] [get_ports {b_in[24]}] [get_ports           \
{b_in[23]}] [get_ports {b_in[22]}] [get_ports {b_in[21]}] [get_ports           \
{b_in[20]}] [get_ports {b_in[19]}] [get_ports {b_in[18]}] [get_ports           \
{b_in[17]}] [get_ports {b_in[16]}] [get_ports {b_in[15]}] [get_ports           \
{b_in[14]}] [get_ports {b_in[13]}] [get_ports {b_in[12]}] [get_ports           \
{b_in[11]}] [get_ports {b_in[10]}] [get_ports {b_in[9]}] [get_ports {b_in[8]}] \
[get_ports {b_in[7]}] [get_ports {b_in[6]}] [get_ports {b_in[5]}] [get_ports   \
{b_in[4]}] [get_ports {b_in[3]}] [get_ports {b_in[2]}] [get_ports {b_in[1]}]   \
[get_ports {b_in[0]}]]  -to [list [get_ports {po[31]}] [get_ports {po[30]}] [get_ports {po[29]}]      \
[get_ports {po[28]}] [get_ports {po[27]}] [get_ports {po[26]}] [get_ports      \
{po[25]}] [get_ports {po[24]}] [get_ports {po[23]}] [get_ports {po[22]}]       \
[get_ports {po[21]}] [get_ports {po[20]}] [get_ports {po[19]}] [get_ports      \
{po[18]}] [get_ports {po[17]}] [get_ports {po[16]}] [get_ports {po[15]}]       \
[get_ports {po[14]}] [get_ports {po[13]}] [get_ports {po[12]}] [get_ports      \
{po[11]}] [get_ports {po[10]}] [get_ports {po[9]}] [get_ports {po[8]}]         \
[get_ports {po[7]}] [get_ports {po[6]}] [get_ports {po[5]}] [get_ports         \
{po[4]}] [get_ports {po[3]}] [get_ports {po[2]}] [get_ports {po[1]}]           \
[get_ports {po[0]}] [get_ports ctro]]
set_min_delay 0.1  -from [list [get_ports clk] [get_ports rstn] [get_ports ctr] [get_ports       \
{a_in[31]}] [get_ports {a_in[30]}] [get_ports {a_in[29]}] [get_ports           \
{a_in[28]}] [get_ports {a_in[27]}] [get_ports {a_in[26]}] [get_ports           \
{a_in[25]}] [get_ports {a_in[24]}] [get_ports {a_in[23]}] [get_ports           \
{a_in[22]}] [get_ports {a_in[21]}] [get_ports {a_in[20]}] [get_ports           \
{a_in[19]}] [get_ports {a_in[18]}] [get_ports {a_in[17]}] [get_ports           \
{a_in[16]}] [get_ports {a_in[15]}] [get_ports {a_in[14]}] [get_ports           \
{a_in[13]}] [get_ports {a_in[12]}] [get_ports {a_in[11]}] [get_ports           \
{a_in[10]}] [get_ports {a_in[9]}] [get_ports {a_in[8]}] [get_ports {a_in[7]}]  \
[get_ports {a_in[6]}] [get_ports {a_in[5]}] [get_ports {a_in[4]}] [get_ports   \
{a_in[3]}] [get_ports {a_in[2]}] [get_ports {a_in[1]}] [get_ports {a_in[0]}]   \
[get_ports {g_in[31]}] [get_ports {g_in[30]}] [get_ports {g_in[29]}]           \
[get_ports {g_in[28]}] [get_ports {g_in[27]}] [get_ports {g_in[26]}]           \
[get_ports {g_in[25]}] [get_ports {g_in[24]}] [get_ports {g_in[23]}]           \
[get_ports {g_in[22]}] [get_ports {g_in[21]}] [get_ports {g_in[20]}]           \
[get_ports {g_in[19]}] [get_ports {g_in[18]}] [get_ports {g_in[17]}]           \
[get_ports {g_in[16]}] [get_ports {g_in[15]}] [get_ports {g_in[14]}]           \
[get_ports {g_in[13]}] [get_ports {g_in[12]}] [get_ports {g_in[11]}]           \
[get_ports {g_in[10]}] [get_ports {g_in[9]}] [get_ports {g_in[8]}] [get_ports  \
{g_in[7]}] [get_ports {g_in[6]}] [get_ports {g_in[5]}] [get_ports {g_in[4]}]   \
[get_ports {g_in[3]}] [get_ports {g_in[2]}] [get_ports {g_in[1]}] [get_ports   \
{g_in[0]}] [get_ports {b_in[31]}] [get_ports {b_in[30]}] [get_ports            \
{b_in[29]}] [get_ports {b_in[28]}] [get_ports {b_in[27]}] [get_ports           \
{b_in[26]}] [get_ports {b_in[25]}] [get_ports {b_in[24]}] [get_ports           \
{b_in[23]}] [get_ports {b_in[22]}] [get_ports {b_in[21]}] [get_ports           \
{b_in[20]}] [get_ports {b_in[19]}] [get_ports {b_in[18]}] [get_ports           \
{b_in[17]}] [get_ports {b_in[16]}] [get_ports {b_in[15]}] [get_ports           \
{b_in[14]}] [get_ports {b_in[13]}] [get_ports {b_in[12]}] [get_ports           \
{b_in[11]}] [get_ports {b_in[10]}] [get_ports {b_in[9]}] [get_ports {b_in[8]}] \
[get_ports {b_in[7]}] [get_ports {b_in[6]}] [get_ports {b_in[5]}] [get_ports   \
{b_in[4]}] [get_ports {b_in[3]}] [get_ports {b_in[2]}] [get_ports {b_in[1]}]   \
[get_ports {b_in[0]}]]  -to [list [get_ports {po[31]}] [get_ports {po[30]}] [get_ports {po[29]}]      \
[get_ports {po[28]}] [get_ports {po[27]}] [get_ports {po[26]}] [get_ports      \
{po[25]}] [get_ports {po[24]}] [get_ports {po[23]}] [get_ports {po[22]}]       \
[get_ports {po[21]}] [get_ports {po[20]}] [get_ports {po[19]}] [get_ports      \
{po[18]}] [get_ports {po[17]}] [get_ports {po[16]}] [get_ports {po[15]}]       \
[get_ports {po[14]}] [get_ports {po[13]}] [get_ports {po[12]}] [get_ports      \
{po[11]}] [get_ports {po[10]}] [get_ports {po[9]}] [get_ports {po[8]}]         \
[get_ports {po[7]}] [get_ports {po[6]}] [get_ports {po[5]}] [get_ports         \
{po[4]}] [get_ports {po[3]}] [get_ports {po[2]}] [get_ports {po[1]}]           \
[get_ports {po[0]}] [get_ports ctro]]
set_input_delay -clock clk  -max 0.1  [get_ports clk]
set_input_delay -clock clk  -max 0.1  [get_ports rstn]
set_input_delay -clock clk  -max 0.1  [get_ports ctr]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[31]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[30]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[29]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[28]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[27]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[26]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[25]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[24]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[23]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[22]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[21]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[20]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[19]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[18]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[17]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[16]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[15]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[14]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[13]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[12]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[11]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[10]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[9]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[8]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[7]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[6]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[5]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[4]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[3]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[2]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[1]}]
set_input_delay -clock clk  -max 0.1  [get_ports {a_in[0]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[31]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[30]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[29]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[28]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[27]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[26]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[25]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[24]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[23]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[22]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[21]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[20]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[19]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[18]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[17]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[16]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[15]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[14]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[13]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[12]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[11]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[10]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[9]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[8]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[7]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[6]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[5]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[4]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[3]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[2]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[1]}]
set_input_delay -clock clk  -max 0.1  [get_ports {g_in[0]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[31]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[30]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[29]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[28]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[27]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[26]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[25]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[24]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[23]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[22]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[21]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[20]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[19]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[18]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[17]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[16]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[15]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[14]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[13]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[12]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[11]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[10]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[9]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[8]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[7]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[6]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[5]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[4]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[3]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[2]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[1]}]
set_input_delay -clock clk  -max 0.1  [get_ports {b_in[0]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[31]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[30]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[29]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[28]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[27]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[26]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[25]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[24]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[23]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[22]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[21]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[20]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[19]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[18]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[17]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[16]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[15]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[14]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[13]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[12]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[11]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[10]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[9]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[8]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[7]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[6]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[5]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[4]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[3]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[2]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[1]}]
set_output_delay -clock clk  -max 0.1  [get_ports {po[0]}]
set_output_delay -clock clk  -max 0.1  [get_ports ctro]
