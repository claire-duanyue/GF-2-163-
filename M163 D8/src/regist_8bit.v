//Design:           SystolicMUL_163_8_digits
//
//File:             resgist_8bit.v
//
//Use:              8 bit register
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

module regist_8bit(
//-----input-----
  clk,
  rstn,
  in,
//-----output-----
  out
);

input clk;
input rstn;
input [7:0]in;
output [7:0]out;
reg [7:0]out;

always@(posedge clk or negedge rstn)
begin
  if(!rstn)
    begin
      out<=8'b0;
    end
  else
    begin
      out<=in;
    end
end

endmodule
