//Design:           SystolicMUL_163_8_digits
//
//File:             PE.v
//
//Use:              systolic mul PE : PE_core + outer circuit
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created
//
//----------------------------------------------------------

`define DIGITS 32

module top(
  clk,
  rstn,
  ctr,
  a_in,
  g_in,
  b_in,
  po,
  ctro
);

input clk;
input rstn;
input ctr;
input [`DIGITS-1:0]a_in,b_in,g_in;

output [`DIGITS-1:0]po;
output ctro;


wire [`DIGITS-1:0]ao1,ao2,ao3,ao4,ao5,ao6,ao7,ao8,ao9,ao10,ao11,ao12,ao13,ao14,ao15,ao16,ao17,ao18,ao19,ao20,ao21;
wire [`DIGITS-1:0]bo1,bo2,bo3,bo4,bo5,bo6,bo7,bo8,bo9,bo10,bo11,bo12,bo13,bo14,bo15,bo16,bo17,bo18,bo19,bo20,bo21;
wire [`DIGITS-1:0]go1,go2,go3,go4,go5,go6,go7,go8,go9,go10,go11,go12,go13,go14,go15,go16,go17,go18,go19,go20,go21;
wire [`DIGITS-2:0]pov1,pov2,pov3,pov4,pov5,pov6,pov7,pov8,pov9,pov10,pov11,pov12,pov13,pov14,pov15,pov16,pov17,pov18,pov19,pov20,pov21;
wire [`DIGITS-2:0]poh1,poh2,poh3,poh4,poh5,poh6,poh7,poh8,poh9,poh10,poh11,poh12,poh13,poh14,poh15,poh16,poh17,poh18,poh19,poh20,poh21;


PE pe0(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctr),
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in),
  .t_i_1_in(31'b0),   //change
  .t_i_1_in_0(1'b0),
  .t_i_2_in(31'b0),   //change
  .a_out(ao1),
  .g_out(go1),
  .b_out(bo1),
  .t_i_1_out(poh1),
  .t_i_2_out(pov1),
  .t_i_1_out_0(po1),
  .ctro(ctro1)
);

PE pe1(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro1),
  .a_in(ao1),
  .g_in(go1),
  .b_in(bo1),
  .t_i_1_in(poh1),
  .t_i_1_in_0(po1),
  .t_i_2_in(pov1),
  .a_out(ao2),
  .g_out(go2),
  .b_out(bo2),
  .t_i_1_out(poh2),
  .t_i_2_out(pov2),
  .t_i_1_out_0(po2),
  .ctro(ctro2)
);

PE pe2(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro2),
  .a_in(ao2),
  .g_in(go2),
  .b_in(bo2),
  .t_i_1_in(poh2),
  .t_i_1_in_0(po2),
  .t_i_2_in(pov2),
  .a_out(ao3),
  .g_out(go3),
  .b_out(bo3),
  .t_i_1_out(poh3),
  .t_i_2_out(pov3),
  .t_i_1_out_0(po3),
  .ctro(ctro3)
);


PE pe3(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro3),
  .a_in(ao3),
  .g_in(go3),
  .b_in(bo3),
  .t_i_1_in(poh3),
  .t_i_1_in_0(po3),
  .t_i_2_in(pov3),
  .a_out(ao4),
  .g_out(go4),
  .b_out(bo4),
  .t_i_1_out(poh4),
  .t_i_2_out(pov4),
  .t_i_1_out_0(po4),
  .ctro(ctro4)
);


PE pe4(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro4),
  .a_in(ao4),
  .g_in(go4),
  .b_in(bo4),
  .t_i_1_in(poh4),
  .t_i_1_in_0(po4),
  .t_i_2_in(pov4),
  .a_out(ao5),
  .g_out(go5),
  .b_out(bo5),
  .t_i_1_out(poh5),
  .t_i_2_out(pov5),
  .t_i_1_out_0(po5),
  .ctro(ctro5)
);


PE pe5(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro5),
  .a_in(ao5),
  .g_in(go5),
  .b_in(bo5),
  .t_i_1_in(poh5),
  .t_i_1_in_0(po5),
  .t_i_2_in(pov5),
  .a_out(ao6),
  .g_out(go6),
  .b_out(bo6),
  .t_i_1_out(poh6),
  .t_i_2_out(pov6),
  .t_i_1_out_0(po6),
  .ctro(ctro)
);


regist_1bit pe6(
  .clk(clk),
  .rstn(rstn),
  .in(po6),
  .out(po[31]));

assign po[30]=poh6[30]^(pov6[30]&ctro);
assign po[29]=poh6[29]^(pov6[29]&ctro);
assign po[28]=poh6[28]^(pov6[28]&ctro);
assign po[27]=poh6[27]^(pov6[27]&ctro);
assign po[26]=poh6[26]^(pov6[26]&ctro);
assign po[25]=poh6[25]^(pov6[25]&ctro);
assign po[24]=poh6[24]^(pov6[24]&ctro);
assign po[23]=poh6[23]^(pov6[23]&ctro);
assign po[22]=poh6[22]^(pov6[22]&ctro);
assign po[21]=poh6[21]^(pov6[21]&ctro);
assign po[20]=poh6[20]^(pov6[20]&ctro);
assign po[19]=poh6[19]^(pov6[19]&ctro);
assign po[18]=poh6[18]^(pov6[18]&ctro);
assign po[17]=poh6[17]^(pov6[17]&ctro);
assign po[16]=poh6[16]^(pov6[16]&ctro);
assign po[15]=poh6[15]^(pov6[15]&ctro);
assign po[14]=poh6[14]^(pov6[14]&ctro);
assign po[13]=poh6[13]^(pov6[13]&ctro);
assign po[12]=poh6[12]^(pov6[12]&ctro);
assign po[11]=poh6[11]^(pov6[11]&ctro);
assign po[10]=poh6[10]^(pov6[10]&ctro);
assign po[9]=poh6[9]^(pov6[9]&ctro);
assign po[8]=poh6[8]^(pov6[8]&ctro);
assign po[7]=poh6[7]^(pov6[7]&ctro);
assign po[6]=poh6[6]^(pov6[6]&ctro);
assign po[5]=poh6[5]^(pov6[5]&ctro);
assign po[4]=poh6[4]^(pov6[4]&ctro);
assign po[3]=poh6[3]^(pov6[3]&ctro);
assign po[2]=poh6[2]^(pov6[2]&ctro);
assign po[1]=poh6[1]^(pov6[1]&ctro);
assign po[0]=poh6[0]^(pov6[0]&ctro);

endmodule