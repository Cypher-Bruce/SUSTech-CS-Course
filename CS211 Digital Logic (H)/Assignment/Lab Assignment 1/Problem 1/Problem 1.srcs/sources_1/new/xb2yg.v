`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/06 00:18:00
// Design Name: 
// Module Name: xb2yg
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


module xb2yg(
input [3:0] xb,
output [3:0] yg
);
    wire temp;
    not not1(temp, xb[3]);
    not not2(yg[3], temp);
    xor xor1(yg[2], xb[2], xb[3]);
    xor xor2(yg[1], xb[1], xb[2]);
    xor xor3(yg[0], xb[0], xb[1]);
endmodule
