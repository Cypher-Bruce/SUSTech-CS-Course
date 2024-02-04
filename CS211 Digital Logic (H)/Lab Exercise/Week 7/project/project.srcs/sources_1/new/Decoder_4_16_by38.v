`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 16:53:37
// Design Name: 
// Module Name: Decoder_4_16_by38
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


module Decoder_4_16_by38(
    input I0, I1, I2, I3,
    output [15:0] Y
    );
    wire [7:0] Y_15_8, Y_7_0;
    Decoder_3_8 d1(I0, I1, I2, I3, Y_15_8);
    Decoder_3_8 d2(I0, I1, I2, ~I3, Y_7_0);
    assign Y = {Y_15_8, Y_7_0};
endmodule
