#************************definition***********************************************
set SRC "../src"
set REPORT "../report"
set EXPORT "../export"
define_name_rules BORG -restricted "A-Z" -replacement_char "a-z"
#***********************read source******************************************
analyze -format verilog $SRC/cell_2.v
elaborate cell_2

analyze -format verilog $SRC/cell_3.v
elaborate cell_3

analyze -format verilog $SRC/cell_4.v
elaborate cell_4

analyze -format verilog $SRC/PE.v
elaborate PE

analyze -format verilog $SRC/PE_core.v
elaborate PE_core

analyze -format verilog $SRC/regist_1bit.v
elaborate regist_1bit

analyze -format verilog $SRC/regist_31bit.v
elaborate regist_31bit

analyze -format verilog $SRC/regist_32bit.v
elaborate regist_32bit

analyze -format verilog $SRC/row_1.v
elaborate row_1

analyze -format verilog $SRC/row_other.v
elaborate row_other

analyze -format verilog $SRC/top.v
elaborate top
#***********************************run*****************************************************

link

#set_fix_multiple_port_nets -all -buffer_constants

set_min_library scc65nll_hs_lvt_ss_v0p9_-40c_basic.db -min_version scc65nll_hs_lvt_ff_v1p1_-40c_basic.db
set_operating_conditions -min ff_v1p1_-40c -max ss_v0p9_-40c -analysis_type bc_wc
set auto_wire_mode_load_selection true
set_wire_load_mode top

set_max_fanout 50 [current_design]
set_max_transition 0.5 [current_design]

set_max_area 1

create_clock -period 13 -name clk [get_ports clk]
set_drive 0 [get_clocks clk]
set_clock_latency 0.1 [get_clocks clk]
#set_clock_uncertainty 0.1 [get_clocks clk]
set_clock_transition 0.1 [get_clocks clk]

set_input_delay -max 0.1 -clock clk [all_inputs]
set_output_delay -max 0.1 -clock clk [all_outputs]
set_max_delay 4.0 -from [all_inputs] -to [all_outputs]
set_min_delay 0.1 -from [all_inputs] -to [all_outputs]


#********************************************************************

change_names -hierarchy -rules BORG
remove_unconnected_ports [get_cells -hierarchical {*}]

#********************************************************************

check_design > $REPORT/check_design_M163_D32.rpt
check_timing > $REPORT/check_timing_M163_D32.rpt

#******************compile**********************

uniquify

compile -map_effort high -incremental_mapping

#**************report**************

report_design > $REPORT/M163_D32.rpt
report_area -h >> $REPORT/M163_D32.rpt
report_power >> $REPORT/M163_D32.rpt
report_timing -delay max -max_paths 200 > $REPORT/timing_setup_M163_D32.rpt
report_timing -delay min -max_paths 200 > $REPORT/timing_hold_M163_D32.rpt
report_constraint -all_violators -verbose > $REPORT/con_violators_M163_D32.rpt


write -format verilog -output $EXPORT/M163_D32.v -hierarchy
write -format ddc -output $EXPORT/M163_D32.ddc -hierarchy
write_sdf $EXPORT/M163_D32.sdf
write_sdc $EXPORT/M163_D32.sdc