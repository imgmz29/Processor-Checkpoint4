module div_2_ctrl(clk, num1, num2, rst, clk_out);
 input clk, rst;
 input wire[2:0] num1, num2;
 output reg clk_out;
 
 reg[2:0] counter;
 initial begin
  counter = 3'b000;
  clk_out = 1'b0;
 end
 
 
 always@(posedge clk or posedge rst) begin
  if (rst == 1'b1) begin
   counter = 3'b000;
  end
  else begin
   if (counter == 3'b111) begin
    counter <= 3'b000;
   end
   else begin
    counter <= counter + 3'b001;
   end
  end
 end
 
 always@(posedge clk or posedge rst) begin
  if (rst == 1'b1) begin
   clk_out = 1'b0;
  end
  else begin
   if ((counter == num1) || (counter == num2)) begin
    clk_out = clk;
   end
   else begin
    clk_out = 1'b0;
   end
  end
 end
 
endmodule