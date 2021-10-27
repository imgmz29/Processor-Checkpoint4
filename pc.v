module pc (clk, reset, in, out);
 input clk, reset;
 input wire[31:0] in;
 output wire[11:0] out;
 reg[11:0] out;
 
 initial
   begin
       out = 12'b0;
   end
 
 genvar i;
 generate
 for(i = 0; i < 32; i++) begin:pc
  dffe_ref dff(out[i], in[i], clk, 1'b1, reset);
 end
 endgenerate

endmodule