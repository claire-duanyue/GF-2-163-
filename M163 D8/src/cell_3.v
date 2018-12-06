//Design:           SystolicMUL_163_8_digits
//
//File:             cell_3.v
//
//Use:              3xor cell.
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

module cell_3(
//-----input-----
  a_in,
  g_in,
  b_in,
  t_m_1_in,
  t_i_1_in,
//-----output----- 
  t_i_out
);

input a_in;
input g_in;
input b_in;
input t_m_1_in;
input t_i_1_in;

output t_i_out;

assign t_i_out= (t_m_1_in & g_in) ^ (a_in & b_in) ^ t_i_1_in;

endmodule
