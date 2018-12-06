//Design:           SystolicMUL_163_8_digits
//
//File:             PE_core.v
//
//Use:              systolic mul raw core
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

`define DIGITS 8

module PE_core(
//-----input-----
  a_in,
  g_in,
  b_in,
  t_m_1_in,
  t_i_1_in,
  t_i_1_in_0,
  t_i_2_in,
//-----output-----
  a_out,
  g_out,
  t_i_1_out,
  t_i_2_out,
  t_i_1_out_0
);

input  [`DIGITS-1:0]a_in;
input  [`DIGITS-1:0]g_in;
input  [`DIGITS-1:0]b_in;
input  [`DIGITS-1:0]t_m_1_in;
input  [`DIGITS-2:0]t_i_1_in;
input  t_i_1_in_0;
input  [`DIGITS-2:0]t_i_2_in;

output  [`DIGITS-1:0]a_out;
output  [`DIGITS-1:0]g_out;
output  [`DIGITS-2:0]t_i_1_out;
output  [`DIGITS-2:0]t_i_2_out;
output  t_i_1_out_0;

wire [`DIGITS-2:0]t0,t1,t2,t3,t4,t5,t6;

row_1 u0(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[7]),
  .t_m_1_in(t_m_1_in[7]),
  .t_i_1_in({t_i_1_in,t_i_1_in_0}),
  .t_i_2_in(t_i_2_in),
  .t_i_1_out(t0),
  .t_i_2_out(t_i_2_out[6])
  );

row_other u1(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[6]),
  .t_m_1_in(t_m_1_in[6]),
  .t_i_1_in(t0),
  .t_i_1_out(t1),
  .t_i_2_out(t_i_2_out[5])
  );

row_other u2(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[5]),
  .t_m_1_in(t_m_1_in[5]),
  .t_i_1_in(t1),
  .t_i_1_out(t2),
  .t_i_2_out(t_i_2_out[4])
  );

row_other u3(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[4]),
  .t_m_1_in(t_m_1_in[4]),
  .t_i_1_in(t2),
  .t_i_1_out(t3),
  .t_i_2_out(t_i_2_out[3])
  );

row_other u4(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[3]),
  .t_m_1_in(t_m_1_in[3]),
  .t_i_1_in(t3),
  .t_i_1_out(t4),
  .t_i_2_out(t_i_2_out[2])
  );

row_other u5(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[2]),
  .t_m_1_in(t_m_1_in[2]),
  .t_i_1_in(t4),
  .t_i_1_out(t5),
  .t_i_2_out(t_i_2_out[1])
  );

row_other u6(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[1]),
  .t_m_1_in(t_m_1_in[1]),
  .t_i_1_in(t5),
  .t_i_1_out(t6),
  .t_i_2_out(t_i_2_out[0])
  );

row_other u7(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[0]),
  .t_m_1_in(t_m_1_in[0]),
  .t_i_1_in(t6),
  .t_i_1_out(t_i_1_out),
  .t_i_2_out(t_i_1_out_0)
  );

assign a_out=a_in;
assign g_out=g_in;
endmodule