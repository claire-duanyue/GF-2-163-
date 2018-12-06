//Design:           SystolicMUL_163_8_digits
//
//File:             resgist_7bit.v
//
//Use:              7 bit register
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created
//
//----------------------------------------------------------

module regist_31bit(
//-----input-----
  clk,
  rstn,
  in,
//-----output-----
  out
);

input clk;
input rstn;
input [30:0]in;
output [30:0]out;
reg [30:0]out;

always@(posedge clk or negedge rstn)
begin
  if(!rstn)
    begin
      out<=31'b0;
    end
  else
    begin
      out<=in;
    end
end

endmodule
