`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 23:35:35
// Design Name: 
// Module Name: lab_a1_p2
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


module lab_a1_p2(
input A, input B, input C, input D,
output X, output Y
    );
    wire wire1, wire2, wire3, wire4, wire5;
    assign wire1 = ~A;
    assign wire2 = B&C;
    assign wire3 = D~^wire1;
    assign wire4 = ~(wire1&wire3);
    assign wire5 = wire1|wire2;
    assign X = wire3|wire5;
    assign Y = wire4&wire5;
endmodule
