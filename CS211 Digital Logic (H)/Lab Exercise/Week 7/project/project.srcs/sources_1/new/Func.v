`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 17:13:32
// Design Name: 
// Module Name: Func
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


module Func(
input A, B, C,
output Y
    );
    MUX_8_1 m(C, B, A, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, Y);
endmodule
