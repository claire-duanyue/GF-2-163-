//Design:           SystolicMUL_163_8_digits
//
//File:             cell_2.v
//
//Use:              2xor cell.
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

module cell_2(
//-----input-----
  a_in,
  g_in,
  b_in,
  t_m_1_in,
//-----output----- 
  t_i_out
);

input a_in;
input g_in;
input b_in;
input t_m_1_in;

output t_i_out;

assign t_i_out= (t_m_1_in & g_in) ^ (a_in & b_in);

endmodule