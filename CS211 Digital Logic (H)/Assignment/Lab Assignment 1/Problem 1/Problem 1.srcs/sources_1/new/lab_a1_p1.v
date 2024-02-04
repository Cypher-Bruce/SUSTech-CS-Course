`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 23:12:32
// Design Name: 
// Module Name: lab_a1_p1
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


module lab_a1_p1(
input A, input B, input C, input D,
output X, output Y
    );
    wire wire1, wire2, wire3, wire4, wire5;
    not not1(wire1, A);
    and and1(wire2, B, C);
    xnor xnor1(wire3, wire1, D);
    nand nand1(wire4, wire1, wire3);
    or or1(wire5, wire1, wire2);
    and and2(Y, wire4, wire5);
    or or2(X, wire5, wire3);
endmodule
