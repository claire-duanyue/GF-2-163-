//Design:           SystolicMUL_163_8_digits
//
//File:             row_other.v
//
//Use:              other rows of a PE == 7 * 3xor + 1 * 2xor
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created
//
//----------------------------------------------------------

`define DIGITS 32

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
  .t_i_out(t_i_1_out[7])
  );
  
cell_3 u8(
  .a_in(a_in[8]),
  .g_in(g_in[8]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[7]),
  .t_i_out(t_i_1_out[8])
  );
  
cell_3 u9(
  .a_in(a_in[9]),
  .g_in(g_in[9]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[8]),
  .t_i_out(t_i_1_out[9])
  );
  
cell_3 u10(
  .a_in(a_in[10]),
  .g_in(g_in[10]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[9]),
  .t_i_out(t_i_1_out[10])
  );

cell_3 u11(
  .a_in(a_in[11]),
  .g_in(g_in[11]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[10]),
  .t_i_out(t_i_1_out[11])
  );
  
cell_3 u12(
  .a_in(a_in[12]),
  .g_in(g_in[12]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[11]),
  .t_i_out(t_i_1_out[12])
  );
  
cell_3 u13(
  .a_in(a_in[13]),
  .g_in(g_in[13]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[12]),
  .t_i_out(t_i_1_out[13])
  );
  
cell_3 u14(
  .a_in(a_in[14]),
  .g_in(g_in[14]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[13]),
  .t_i_out(t_i_1_out[14])
  );

cell_3 u15(
  .a_in(a_in[15]),
  .g_in(g_in[15]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[14]),
  .t_i_out(t_i_1_out[15])
  );

cell_3 u16(
  .a_in(a_in[16]),
  .g_in(g_in[16]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[15]), 
  .t_i_out(t_i_1_out[16])
  );

cell_3 u17(
  .a_in(a_in[17]),
  .g_in(g_in[17]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[16]), 
  .t_i_out(t_i_1_out[17])
  );

cell_3 u18(
  .a_in(a_in[18]),
  .g_in(g_in[18]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[17]), 
  .t_i_out(t_i_1_out[18])
  );

cell_3 u19(
  .a_in(a_in[19]),
  .g_in(g_in[19]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[18]),  
  .t_i_out(t_i_1_out[19])
  );

cell_3 u20(
  .a_in(a_in[20]),
  .g_in(g_in[20]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[19]),
  .t_i_out(t_i_1_out[20])
  );

cell_3 u21(
  .a_in(a_in[21]),
  .g_in(g_in[21]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[20]),
  .t_i_out(t_i_1_out[21])
  );
  
cell_3 u22(
  .a_in(a_in[22]),
  .g_in(g_in[22]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[21]),
  .t_i_out(t_i_1_out[22])
  );
  
cell_3 u23(
  .a_in(a_in[23]),
  .g_in(g_in[23]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[22]),
  .t_i_out(t_i_1_out[23])
  );
  
cell_3 u24(
  .a_in(a_in[24]),
  .g_in(g_in[24]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[23]),
  .t_i_out(t_i_1_out[24])
  );

cell_3 u25(
  .a_in(a_in[25]),
  .g_in(g_in[25]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[24]),
  .t_i_out(t_i_1_out[25])
  );
  
cell_3 u26(
  .a_in(a_in[26]),
  .g_in(g_in[26]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[25]),
  .t_i_out(t_i_1_out[26])
  );
  
cell_3 u27(
  .a_in(a_in[27]),
  .g_in(g_in[27]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[26]),
  .t_i_out(t_i_1_out[27])
  );
  
cell_3 u28(
  .a_in(a_in[28]),
  .g_in(g_in[28]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[27]),
  .t_i_out(t_i_1_out[28])
  );

cell_3 u29(
  .a_in(a_in[29]),
  .g_in(g_in[29]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[28]),
  .t_i_out(t_i_1_out[29])
  );
  
cell_3 u30(
  .a_in(a_in[30]),
  .g_in(g_in[30]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[29]),
  .t_i_out(t_i_1_out[30])
  );
  

cell_3 u31(
  .a_in(a_in[31]),
  .g_in(g_in[31]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[30]), 
  .t_i_out(t_i_2_out)
  );

endmodule

