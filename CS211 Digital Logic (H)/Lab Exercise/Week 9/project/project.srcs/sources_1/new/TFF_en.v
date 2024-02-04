`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 16:44:55
// Design Name: 
// Module Name: TFF_en
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


module TFF_en(
    input clk, T, E,
    output Q, nQ
    );
    wire J, K;
    and and1(J, E, T);
    or or1(K, ~E, T);
    JKFF jkff(clk, J, K, Q, nQ);
endmodule
