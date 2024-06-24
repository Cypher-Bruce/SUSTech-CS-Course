`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/26 13:25:04
// Design Name: 
// Module Name: adder
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


module adder (in1, in2, sum, overflow); //in verilog
input [2:0] in1, in2;
output [2:0] sum;
output overflow;
assign sum = in1 + in2;
assign overflow =
( in1[2] & in2[2] & ~sum[2] ) | /* two +ve operands, get -ve operand*/
(~in1[2] & ~in2[2] & sum[2] ); /* two -ve operands, get +ve operand*/
endmodule
