//Design:           SystolicMUL_163_8_digits
//
//File:             row_other.v
//
//Use:              other rows of a PE == 7 * 3xor + 1 * 2xor    
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

`define DIGITS 8

module row_other(
//-----input-----
  a_in,
  g_in,
  b_in,
  t_m_1_in,
  t_i_1_in,
//-----output-----
  t_i_1_out,
  t_i_2_out
);

input [`DIGITS-1:0]a_in,g_in;
input b_in,t_m_1_in;
input [`DIGITS-2:0]t_i_1_in;

output [`DIGITS-2:0]t_i_1_out;
output t_i_2_out;


cell_2 u0(
  .a_in(a_in[0]),
  .g_in(g_in[0]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in), 
  .t_i_out(t_i_1_out[0])
  );

cell_3 u1(
  .a_in(a_in[1]),
  .g_in(g_in[1]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[0]),
  .t_i_out(t_i_1_out[1])
  );

cell_3 u2(
  .a_in(a_in[2]),
  .g_in(g_in[2]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[1]), 
  .t_i_out(t_i_1_out[2])
  );

cell_3 u3(
  .a_in(a_in[3]),
  .g_in(g_in[3]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[2]), 
  .t_i_out(t_i_1_out[3])
  );

cell_3 u4(
  .a_in(a_in[4]),
  .g_in(g_in[4]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[3]), 
  .t_i_out(t_i_1_out[4])
  );

cell_3 u5(
  .a_in(a_in[5]),
  .g_in(g_in[5]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[4]),  
  .t_i_out(t_i_1_out[5])
  );

cell_3 u6(
  .a_in(a_in[6]),
  .g_in(g_in[6]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[5]),
  .t_i_out(t_i_1_out[6])
  );

cell_3 u7(
  .a_in(a_in[7]),
  .g_in(g_in[7]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[6]), 
  .t_i_out(t_i_2_out)
  );

endmodule

