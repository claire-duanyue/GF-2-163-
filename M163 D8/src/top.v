//Design:           SystolicMUL_163_8_digits
//
//File:             PE.v
//
//Use:              systolic mul PE : PE_core + outer circuit  
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

`define DIGITS 8

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


wire [7:0]ao1,ao2,ao3,ao4,ao5,ao6,ao7,ao8,ao9,ao10,ao11,ao12,ao13,ao14,ao15,ao16,ao17,ao18,ao19,ao20,ao21;
wire [7:0]bo1,bo2,bo3,bo4,bo5,bo6,bo7,bo8,bo9,bo10,bo11,bo12,bo13,bo14,bo15,bo16,bo17,bo18,bo19,bo20,bo21;
wire [7:0]go1,go2,go3,go4,go5,go6,go7,go8,go9,go10,go11,go12,go13,go14,go15,go16,go17,go18,go19,go20,go21;
wire [6:0]pov1,pov2,pov3,pov4,pov5,pov6,pov7,pov8,pov9,pov10,pov11,pov12,pov13,pov14,pov15,pov16,pov17,pov18,pov19,pov20,pov21;
wire [6:0]poh1,poh2,poh3,poh4,poh5,poh6,poh7,poh8,poh9,poh10,poh11,poh12,poh13,poh14,poh15,poh16,poh17,poh18,poh19,poh20,poh21;


PE pe0(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctr),
  .a_in(a_in),
  .g_in(g_in),
  .b_in(b_in),
  .t_i_1_in(7'b0),
  .t_i_1_in_0(1'b0),
  .t_i_2_in(7'b0),
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
  .ctro(ctro6)
);

PE pe6(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro6),
  .a_in(ao6),
  .g_in(go6),
  .b_in(bo6),
  .t_i_1_in(poh6),
  .t_i_1_in_0(po6),
  .t_i_2_in(pov6),
  .a_out(ao7),
  .g_out(go7),
  .b_out(bo7),
  .t_i_1_out(poh7),
  .t_i_2_out(pov7),
  .t_i_1_out_0(po7),
  .ctro(ctro7)
);

PE pe7(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro7),
  .a_in(ao7),
  .g_in(go7),
  .b_in(bo7),
  .t_i_1_in(poh7),
  .t_i_1_in_0(po7),
  .t_i_2_in(pov7),
  .a_out(ao8),
  .g_out(go8),
  .b_out(bo8),
  .t_i_1_out(poh8),
  .t_i_2_out(pov8),
  .t_i_1_out_0(po8),
  .ctro(ctro8)
);

PE pe8(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro8),
  .a_in(ao8),
  .g_in(go8),
  .b_in(bo8),
  .t_i_1_in(poh8),
  .t_i_1_in_0(po8),
  .t_i_2_in(pov8),
  .a_out(ao9),
  .g_out(go9),
  .b_out(bo9),
  .t_i_1_out(poh9),
  .t_i_2_out(pov9),
  .t_i_1_out_0(po9),
  .ctro(ctro9)
);

PE pe9(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro9),
  .a_in(ao9),
  .g_in(go9),
  .b_in(bo9),
  .t_i_1_in(poh9),
  .t_i_1_in_0(po9),
  .t_i_2_in(pov9),
  .a_out(ao10),
  .g_out(go10),
  .b_out(bo10),
  .t_i_1_out(poh10),
  .t_i_2_out(pov10),
  .t_i_1_out_0(po10),
  .ctro(ctro10)
);

PE pe10(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro10),
  .a_in(ao10),
  .g_in(go10),
  .b_in(bo10),
  .t_i_1_in(poh10),
  .t_i_1_in_0(po10),
  .t_i_2_in(pov10),
  .a_out(ao11),
  .g_out(go11),
  .b_out(bo11),
  .t_i_1_out(poh11),
  .t_i_2_out(pov11),
  .t_i_1_out_0(po11),
  .ctro(ctro11)
);

PE pe11(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro11),
  .a_in(ao11),
  .g_in(go11),
  .b_in(bo11),
  .t_i_1_in(poh11),
  .t_i_1_in_0(po11),
  .t_i_2_in(pov11),
  .a_out(ao12),
  .g_out(go12),
  .b_out(bo12),
  .t_i_1_out(poh12),
  .t_i_2_out(pov12),
  .t_i_1_out_0(po12),
  .ctro(ctro12)
);

PE pe12(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro12),
  .a_in(ao12),
  .g_in(go12),
  .b_in(bo12),
  .t_i_1_in(poh12),
  .t_i_1_in_0(po12),
  .t_i_2_in(pov12),
  .a_out(ao13),
  .g_out(go13),
  .b_out(bo13),
  .t_i_1_out(poh13),
  .t_i_2_out(pov13),
  .t_i_1_out_0(po13),
  .ctro(ctro13)
);

PE pe13(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro13),
  .a_in(ao13),
  .g_in(go13),
  .b_in(bo13),
  .t_i_1_in(poh13),
  .t_i_1_in_0(po13),
  .t_i_2_in(pov13),
  .a_out(ao14),
  .g_out(go14),
  .b_out(bo14),
  .t_i_1_out(poh14),
  .t_i_2_out(pov14),
  .t_i_1_out_0(po14),
  .ctro(ctro14)
);

PE pe14(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro14),
  .a_in(ao14),
  .g_in(go14),
  .b_in(bo14),
  .t_i_1_in(poh14),
  .t_i_1_in_0(po14),
  .t_i_2_in(pov14),
  .a_out(ao15),
  .g_out(go15),
  .b_out(bo15),
  .t_i_1_out(poh15),
  .t_i_2_out(pov15),
  .t_i_1_out_0(po15),
  .ctro(ctro15)
);

PE pe15(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro15),
  .a_in(ao15),
  .g_in(go15),
  .b_in(bo15),
  .t_i_1_in(poh15),
  .t_i_1_in_0(po15),
  .t_i_2_in(pov15),
  .a_out(ao16),
  .g_out(go16),
  .b_out(bo16),
  .t_i_1_out(poh16),
  .t_i_2_out(pov16),
  .t_i_1_out_0(po16),
  .ctro(ctro16)
);

PE pe16(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro16),
  .a_in(ao16),
  .g_in(go16),
  .b_in(bo16),
  .t_i_1_in(poh16),
  .t_i_1_in_0(po16),
  .t_i_2_in(pov16),
  .a_out(ao17),
  .g_out(go17),
  .b_out(bo17),
  .t_i_1_out(poh17),
  .t_i_2_out(pov17),
  .t_i_1_out_0(po17),
  .ctro(ctro17)
);

PE pe17(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro17),
  .a_in(ao17),
  .g_in(go17),
  .b_in(bo17),
  .t_i_1_in(poh17),
  .t_i_1_in_0(po17),
  .t_i_2_in(pov17),
  .a_out(ao18),
  .g_out(go18),
  .b_out(bo18),
  .t_i_1_out(poh18),
  .t_i_2_out(pov18),
  .t_i_1_out_0(po18),
  .ctro(ctro18)
);

PE pe18(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro18),
  .a_in(ao18),
  .g_in(go18),
  .b_in(bo18),
  .t_i_1_in(poh18),
  .t_i_1_in_0(po18),
  .t_i_2_in(pov18),
  .a_out(ao19),
  .g_out(go19),
  .b_out(bo19),
  .t_i_1_out(poh19),
  .t_i_2_out(pov19),
  .t_i_1_out_0(po19),
  .ctro(ctro19)
);

PE pe19(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro19),
  .a_in(ao19),
  .g_in(go19),
  .b_in(bo19),
  .t_i_1_in(poh19),
  .t_i_1_in_0(po19),
  .t_i_2_in(pov19),
  .a_out(ao20),
  .g_out(go20),
  .b_out(bo20),
  .t_i_1_out(poh20),
  .t_i_2_out(pov20),
  .t_i_1_out_0(po20),
  .ctro(ctro20)
);


PE pe20(
  .clk(clk),
  .rstn(rstn),
  .ctr(ctro20),
  .a_in(ao20),
  .g_in(go20),
  .b_in(bo20),
  .t_i_1_in(poh20),
  .t_i_1_in_0(po20),
  .t_i_2_in(pov20),
  .a_out(ao21),
  .g_out(go21),
  .b_out(bo21),
  .t_i_1_out(poh21),
  .t_i_2_out(pov21),
  .t_i_1_out_0(po21),
  .ctro(ctro)
);

regist_1bit pe21(
  .clk(clk),
  .rstn(rstn),
  .in(po21),
  .out(po[7]));


assign po[6]=poh21[6]^(pov21[6]&ctro);
assign po[5]=poh21[5]^(pov21[5]&ctro);
assign po[4]=poh21[4]^(pov21[4]&ctro);
assign po[3]=poh21[3]^(pov21[3]&ctro);
assign po[2]=poh21[2]^(pov21[2]&ctro);
assign po[1]=poh21[1]^(pov21[1]&ctro);
assign po[0]=poh21[0]^(pov21[0]&ctro);

endmodule