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

`define DIGITS 32

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

wire [`DIGITS-2:0]t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30;

row_1 u0(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[31]),
  .t_m_1_in(t_m_1_in[31]),
  .t_i_1_in({t_i_1_in,t_i_1_in_0}),
  .t_i_2_in(t_i_2_in),
  .t_i_1_out(t0),
  .t_i_2_out(t_i_2_out[30])
  );

row_other u1(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[30]),
  .t_m_1_in(t_m_1_in[30]),
  .t_i_1_in(t0),
  .t_i_1_out(t1),
  .t_i_2_out(t_i_2_out[29])
  );

row_other u2(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[29]),
  .t_m_1_in(t_m_1_in[29]),
  .t_i_1_in(t1),
  .t_i_1_out(t2),
  .t_i_2_out(t_i_2_out[28])
  );

row_other u3(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[28]),
  .t_m_1_in(t_m_1_in[28]),
  .t_i_1_in(t2),
  .t_i_1_out(t3),
  .t_i_2_out(t_i_2_out[27])
  );
  
row_other u4(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[27]),
  .t_m_1_in(t_m_1_in[27]),
  .t_i_1_in(t3),
  .t_i_1_out(t4),
  .t_i_2_out(t_i_2_out[26])
  );
  
row_other u5(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[26]),
  .t_m_1_in(t_m_1_in[26]),
  .t_i_1_in(t4),
  .t_i_1_out(t5),
  .t_i_2_out(t_i_2_out[25])
  );
  
row_other u6(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[25]),
  .t_m_1_in(t_m_1_in[25]),
  .t_i_1_in(t5),
  .t_i_1_out(t6),
  .t_i_2_out(t_i_2_out[24])
  );
  
row_other u7(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[24]),
  .t_m_1_in(t_m_1_in[24]),
  .t_i_1_in(t6),
  .t_i_1_out(t7),
  .t_i_2_out(t_i_2_out[23])
  );
  
row_other u8(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[23]),
  .t_m_1_in(t_m_1_in[23]),
  .t_i_1_in(t7),
  .t_i_1_out(t8),
  .t_i_2_out(t_i_2_out[22])
  );
  
row_other u9(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[22]),
  .t_m_1_in(t_m_1_in[22]),
  .t_i_1_in(t8),
  .t_i_1_out(t9),
  .t_i_2_out(t_i_2_out[21])
  );
  
row_other u10(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[21]),
  .t_m_1_in(t_m_1_in[21]),
  .t_i_1_in(t9),
  .t_i_1_out(t10),
  .t_i_2_out(t_i_2_out[20])
  );
  
row_other u11(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[20]),
  .t_m_1_in(t_m_1_in[20]),
  .t_i_1_in(t10),
  .t_i_1_out(t11),
  .t_i_2_out(t_i_2_out[19])
  );

row_other u12(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[19]),
  .t_m_1_in(t_m_1_in[19]),
  .t_i_1_in(t11),
  .t_i_1_out(t12),
  .t_i_2_out(t_i_2_out[18])
  );

row_other u13(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[18]),
  .t_m_1_in(t_m_1_in[18]),
  .t_i_1_in(t12),
  .t_i_1_out(t13),
  .t_i_2_out(t_i_2_out[17])
  );

row_other u14(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[17]),
  .t_m_1_in(t_m_1_in[17]),
  .t_i_1_in(t13),
  .t_i_1_out(t14),
  .t_i_2_out(t_i_2_out[16])
  );

row_other u15(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[16]),
  .t_m_1_in(t_m_1_in[16]),
  .t_i_1_in(t14),
  .t_i_1_out(t15),
  .t_i_2_out(t_i_2_out[15])
  );

row_other u16(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[15]),
  .t_m_1_in(t_m_1_in[15]),
  .t_i_1_in(t15),
  .t_i_1_out(t16),
  .t_i_2_out(t_i_2_out[14])
  );

row_other u17(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[14]),
  .t_m_1_in(t_m_1_in[14]),
  .t_i_1_in(t16),
  .t_i_1_out(t17),
  .t_i_2_out(t_i_2_out[13])
  );

row_other u18(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[13]),
  .t_m_1_in(t_m_1_in[13]),
  .t_i_1_in(t17),
  .t_i_1_out(t18),
  .t_i_2_out(t_i_2_out[12])
  );

row_other u19(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[12]),
  .t_m_1_in(t_m_1_in[12]),
  .t_i_1_in(t18),
  .t_i_1_out(t19),
  .t_i_2_out(t_i_2_out[11])
  );
  
row_other u20(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[11]),
  .t_m_1_in(t_m_1_in[11]),
  .t_i_1_in(t19),
  .t_i_1_out(t20),
  .t_i_2_out(t_i_2_out[10])
  );
  
row_other u21(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[10]),
  .t_m_1_in(t_m_1_in[10]),
  .t_i_1_in(t20),
  .t_i_1_out(t21),
  .t_i_2_out(t_i_2_out[9])
  );
  
row_other u22(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[9]),
  .t_m_1_in(t_m_1_in[9]),
  .t_i_1_in(t21),
  .t_i_1_out(t22),
  .t_i_2_out(t_i_2_out[8])
  );
  
row_other u23(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[8]),
  .t_m_1_in(t_m_1_in[8]),
  .t_i_1_in(t22),
  .t_i_1_out(t23),
  .t_i_2_out(t_i_2_out[7])
  );
  
row_other u24(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[7]),
  .t_m_1_in(t_m_1_in[7]),
  .t_i_1_in(t23),
  .t_i_1_out(t24),
  .t_i_2_out(t_i_2_out[6])
  );
  
row_other u25(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[6]),
  .t_m_1_in(t_m_1_in[6]),
  .t_i_1_in(t24),
  .t_i_1_out(t25),
  .t_i_2_out(t_i_2_out[5])
  );
  
row_other u26(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[5]),
  .t_m_1_in(t_m_1_in[5]),
  .t_i_1_in(t25),
  .t_i_1_out(t26),
  .t_i_2_out(t_i_2_out[4])
  );
  
row_other u27(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[4]),
  .t_m_1_in(t_m_1_in[4]),
  .t_i_1_in(t26),
  .t_i_1_out(t27),
  .t_i_2_out(t_i_2_out[3])
  );
  
row_other u28(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[3]),
  .t_m_1_in(t_m_1_in[3]),
  .t_i_1_in(t27),
  .t_i_1_out(t28),
  .t_i_2_out(t_i_2_out[2])
  );

row_other u29(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[2]),
  .t_m_1_in(t_m_1_in[2]),
  .t_i_1_in(t28),
  .t_i_1_out(t29),
  .t_i_2_out(t_i_2_out[1])
  );

row_other u30(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[1]),
  .t_m_1_in(t_m_1_in[1]),
  .t_i_1_in(t29),
  .t_i_1_out(t30),
  .t_i_2_out(t_i_2_out[0])
  );

row_other u31(
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in[0]),
  .t_m_1_in(t_m_1_in[0]),
  .t_i_1_in(t30),
  .t_i_1_out(t_i_1_out),
  .t_i_2_out(t_i_1_out_0)
  );

assign a_out=a_in;
assign g_out=g_in;
endmodule
