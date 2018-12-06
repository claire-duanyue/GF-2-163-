//Design:           SystolicMUL_163_8_digits
//
//File:             resgist_1bit.v
//
//Use:              1 bit register
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------

module regist_1bit(
//-----input-----
  clk,
  rstn,
  in,
//-----output-----
  out
);

input clk;
input rstn;
input in;
output out;
reg out;

always@(posedge clk or negedge rstn)
begin
  if(!rstn)
    begin
      out<=1'b0;
    end
  else
    begin
      out<=in;
    end
end

endmodule