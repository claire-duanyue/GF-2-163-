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

`define DIGITS  8
module PE(
//-----input-----
  clk,
  rstn,
  ctr,
  a_in,
  g_in,
  b_in,
  t_i_1_in,
  t_i_1_in_0,
  t_i_2_in,
//-----output-----
  a_out,
  g_out,
  b_out,
  t_i_1_out,
  t_i_2_out,
  t_i_1_out_0,
  ctro
);

input   clk,rstn,ctr;
input   [`DIGITS-1:0]a_in;
input   [`DIGITS-1:0]g_in;
input   [`DIGITS-1:0]b_in;
input   [`DIGITS-2:0]t_i_1_in;
input   t_i_1_in_0;
input   [`DIGITS-2:0]t_i_2_in;

output  [`DIGITS-1:0]a_out;
output  [`DIGITS-1:0]g_out;
output  [`DIGITS-1:0]b_out;
output  [`DIGITS-2:0]t_i_1_out;
output  [`DIGITS-2:0]t_i_2_out;
output  t_i_1_out_0;
output  ctro;

wire [`DIGITS-1:0]l_a,l_b,l_g;
wire [`DIGITS-2:0]l_t_i_1_in,l_t_i_2_in;
wire l_t_i_1_in_0,l_ctr;



regist_8bit u0(
  .clk(clk),
  .rstn(rstn),
  .in(a_in),
  .out(l_a)
);

regist_8bit u1(
  .clk(clk),
  .rstn(rstn),
  .in(b_in),
  .out(l_b)
);

regist_8bit u2(
  .clk(clk),
  .rstn(rstn),
  .in(g_in),
  .out(l_g)
);

regist_1bit u3(
  .clk(clk),
  .rstn(rstn),
  .in(ctr),
  .out(l_ctr)
);

regist_1bit u4(
  .clk(clk),
  .rstn(rstn),
  .in(l_ctr),
  .out(ctro)
);

regist_7bit u5(
  .clk(clk),
  .rstn(rstn),
  .in(t_i_1_in),
  .out(l_t_i_1_in)
);

regist_7bit u6(
  .clk(clk),
  .rstn(rstn),
  .in(t_i_2_in),
  .out(l_t_i_2_in)
);

regist_1bit u7(
  .clk(clk),
  .rstn(rstn),
  .in(t_i_1_in_0),
  .out(l_t_i_1_in_0)
);


wire [`DIGITS-2:0]c_t_i_1_in;
assign c_t_i_1_in=l_t_i_1_in && l_ctr;
wire c_t_i_1_in_0;
assign c_t_i_1_in_0=l_t_i_1_in_0 & l_ctr;

wire [`DIGITS-1:0]mux_b;
//reg  [`DIGITS-1:0]mux_bq;
wire  [`DIGITS-1:0]mux_bq;
assign mux_b=l_ctr? mux_bq:l_b;
regist_8bit u9(
  .clk(clk),
  .rstn(rstn),
  .in(mux_b),
  .out(mux_bq));
assign b_out=l_b; 
 
wire to_1;
//reg ti_1;
wire ti_1;
assign to_1=l_ctr?ti_1:l_t_i_1_in_0;
regist_1bit u10(
  .clk(clk),
  .rstn(rstn),
  .in(to_1),
  .out(ti_1));


wire [`DIGITS-2:0]to_7;
//reg [`DIGITS-2:0]ti_7;
wire [`DIGITS-2:0]ti_7;
assign to_7=ctro?ti_7:t_i_2_out;
regist_7bit u11(
  .clk(clk),
  .rstn(rstn),
  .in(to_7),
  .out(ti_7));


wire [`DIGITS-2:0]to;
wire [7:0] ao,go;
PE_core pe(
  .a_in(l_a),
  .g_in(l_g),
  .b_in(mux_bq),
  .t_m_1_in({to_1,to_7}),  //sequence?????
  .t_i_1_in(c_t_i_1_in),
  .t_i_1_in_0(c_t_i_1_in_0),
  .t_i_2_in(l_t_i_2_in),
  .a_out(ao),
  .g_out(go),
  .t_i_1_out(to),
  .t_i_2_out(t_i_2_out),
  .t_i_1_out_0(t_i_1_out_0)
);

regist_8bit u12(
  .clk(clk),
  .rstn(rstn),
  .in(ao),
  .out(a_out));

regist_8bit u13(
  .clk(clk),
  .rstn(rstn),
  .in(go),
  .out(g_out));
  
regist_7bit u14(
  .clk(clk),
  .rstn(rstn),
  .in(to),
  .out(t_i_1_out));

endmodule
