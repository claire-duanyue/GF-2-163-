//Design:           SystolicMUL_163_8_digits
//
//File:             PE_core.v
//
//Use:              systolic mul raw core
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created
//
//----------------------------------------------------------

`define DIGITS 16

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

wire [`DIGITS-2:0]t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14;

row_1 u0(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[15]),
  .t_m_1_in(t_m_1_in[15]),
  .t_i_1_in({t_i_1_in,t_i_1_in_0}),
  .t_i_2_in(t_i_2_in),
  .t_i_1_out(t0),
  .t_i_2_out(t_i_2_out[14])
  );

row_other u1(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[14]),
  .t_m_1_in(t_m_1_in[14]),
  .t_i_1_in(t0),
  .t_i_1_out(t1),
  .t_i_2_out(t_i_2_out[13])
  );

row_other u2(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[13]),
  .t_m_1_in(t_m_1_in[13]),
  .t_i_1_in(t1),
  .t_i_1_out(t2),
  .t_i_2_out(t_i_2_out[12])
  );

row_other u3(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[12]),
  .t_m_1_in(t_m_1_in[12]),
  .t_i_1_in(t2),
  .t_i_1_out(t3),
  .t_i_2_out(t_i_2_out[11])
  );
  
row_other u4(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[11]),
  .t_m_1_in(t_m_1_in[11]),
  .t_i_1_in(t3),
  .t_i_1_out(t4),
  .t_i_2_out(t_i_2_out[10])
  );
  
row_other u5(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[10]),
  .t_m_1_in(t_m_1_in[10]),
  .t_i_1_in(t4),
  .t_i_1_out(t5),
  .t_i_2_out(t_i_2_out[9])
  );
  
row_other u6(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[9]),
  .t_m_1_in(t_m_1_in[9]),
  .t_i_1_in(t5),
  .t_i_1_out(t6),
  .t_i_2_out(t_i_2_out[8])
  );
  
row_other u7(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[8]),
  .t_m_1_in(t_m_1_in[8]),
  .t_i_1_in(t6),
  .t_i_1_out(t7),
  .t_i_2_out(t_i_2_out[7])
  );
  
row_other u8(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[7]),
  .t_m_1_in(t_m_1_in[7]),
  .t_i_1_in(t7),
  .t_i_1_out(t8),
  .t_i_2_out(t_i_2_out[6])
  );
  
row_other u9(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[6]),
  .t_m_1_in(t_m_1_in[6]),
  .t_i_1_in(t8),
  .t_i_1_out(t9),
  .t_i_2_out(t_i_2_out[5])
  );
  
row_other u10(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[5]),
  .t_m_1_in(t_m_1_in[5]),
  .t_i_1_in(t9),
  .t_i_1_out(t10),
  .t_i_2_out(t_i_2_out[4])
  );
  
row_other u11(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[4]),
  .t_m_1_in(t_m_1_in[4]),
  .t_i_1_in(t10),
  .t_i_1_out(t11),
  .t_i_2_out(t_i_2_out[3])
  );
  
row_other u12(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[3]),
  .t_m_1_in(t_m_1_in[3]),
  .t_i_1_in(t11),
  .t_i_1_out(t12),
  .t_i_2_out(t_i_2_out[2])
  );

row_other u13(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[2]),
  .t_m_1_in(t_m_1_in[2]),
  .t_i_1_in(t12),
  .t_i_1_out(t13),
  .t_i_2_out(t_i_2_out[1])
  );

row_other u14(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[1]),
  .t_m_1_in(t_m_1_in[1]),
  .t_i_1_in(t13),
  .t_i_1_out(t14),
  .t_i_2_out(t_i_2_out[0])
  );

row_other u15(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[0]),
  .t_m_1_in(t_m_1_in[0]),
  .t_i_1_in(t14),
  .t_i_1_out(t_i_1_out),
  .t_i_2_out(t_i_1_out_0)
  );

assign a_out=a_in;
assign g_out=g_in;
endmodule
