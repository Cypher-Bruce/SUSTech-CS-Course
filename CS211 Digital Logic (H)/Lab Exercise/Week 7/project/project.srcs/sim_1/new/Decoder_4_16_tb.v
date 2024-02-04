`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 17:03:45
// Design Name: 
// Module Name: Decoder_4_16_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Decoder_4_16_tb();
reg I0, I1, I2, I3;
wire [15:0] Y1, Y2;

Decoder_4_16_by38 d1(I0, I1, I2, I3, Y1);
Decoder_4_16_inBe d2(I0, I1, I2, I3, Y2);

initial begin
    {I3, I2, I1, I0} = 4'b0000;
    repeat(15) #10 {I3, I2, I1, I0} = {I3, I2, I1, I0} + 1;
    #10 $finish;
end
endmodule
