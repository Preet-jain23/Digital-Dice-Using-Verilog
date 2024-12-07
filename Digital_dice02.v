
//using 4 bits

module lfsr(out,clk,rst);
 output reg[3:0]out=4'b1001;
 input clk,rst;
 wire feedback;
 assign feedback=(out[1]^out[0]);
 always @(posedge clk, posedge rst)
 begin
 if(rst)
 out=4'b1001;
 else
 out[0]=out[1];
 out[1]=out[2];
 out[2]=out[3];
 out[3]=feedback;
 end
 endmodule
 module lfsr_tb();
 reg clk_tb;
 reg rst_tb;
 wire [3:0] out_tb;
 initial
 begin
 clk_tb = 0;
 rst_tb = 0;
 d
end
 always
 begin
 clk_tb = ~ clk_tb;
 end
 lfsr main(out_tb,clk_tb,rst_tb);
 endmodule
 // main module
 module Digital_dice(clk,rst,z);
 input clk, rst;
 wire [3:0]out;
 output reg [6:0] z;
 lfsr l(out, clk, rst);
 assign x=out;
 always @(*)
 if(out==4'b0000||out==4'b0001||out==4'b1010)
 begin
 z=7'b0110000;
 end
 else if(out==4'b0010||out==4'b0011||out==4'b1011)
 begin
 z=7'b1101101;
 end
 else if(out==4'b0100||out==4'b0101||out==4'b1100)
 begin
 z=7'b1111001;
 end
else if(out==4'b0110||out==4'b0111)
 begin
 z=7'b0110011;
 end
 else if(out==4'b1000||out==4'b1001)
 begin
 z=7'b1011011;
 end
 else
 begin
 z=7'b1011111;
 end
 endmodule
