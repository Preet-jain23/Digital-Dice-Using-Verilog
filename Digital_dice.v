 //for 3 bit 
module lfsr(out,clk,rst);
 output reg[2:0]out=3'b000;
 input clk,rst;
 wire feedback;
 assign feedback=~(out[2]^out[1]);
 always @(posedge clk, posedge rst)
 begin
 if(rst)
 out=4'b0;
 else
 out={out[2:0],feedback};
 end
 endmodule

lfsr  main(out_tb,clk_tb,rst_tb);
 endmodule
 // main module
 module Digital_dice(clk,rst,z);
 input clk, rst;
 wire [2:0]out;
 output reg [6:0] z;
 lfsr (out, clk, rst);
 assign x=out;
 always @(*)
 case (out)
 3'b000:begin
           z=7'b0110000;
           end
 3'b001:begin
           z=7'b1101101;
           end
 3'b010:begin
           z=7'b1111001;
           end
 3'b011:begin
              z=7'b0110011;
           end
 3'b100:begin
           z=7'b1011011;
           end
 default:begin
           z=7'b1011111;
           end
 endcase
 endmodule

module lfsr_tb();
 reg clk_tb;
 reg rst_tb;
 wire [3:0] out_tb;
initial
 begin
 clk_tb = 0;
 rst_tb = 0;
 end
 always
 begin
 clk_tb = ~ clk_tb;
 end
