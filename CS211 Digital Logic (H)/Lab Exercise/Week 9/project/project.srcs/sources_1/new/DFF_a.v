`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 16:50:34
// Design Name: 
// Module Name: DFF_a
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


module DFF_a(
input clk, D,
output Q, nQ
    );
    wire Q1, nQ1;
    D_latch master_L(clk, D, Q1, nQ1);
    D_latch slave_L(~clk, Q1, Q, nQ);
endmodule
