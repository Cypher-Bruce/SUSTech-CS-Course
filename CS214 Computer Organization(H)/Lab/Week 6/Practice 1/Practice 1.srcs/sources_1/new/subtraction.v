`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/26 15:01:48
// Design Name: 
// Module Name: subtraction
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


module subtraction(in1,in2,result,overflow);
input [2:0] in1,in2;
output [2:0] result;
output overflow;
assign result = in1 - in2;
assign overflow = (in1[2] & ~in2[2] & ~result[2]) | (~in1[2] & in2[2] & result[2]);
endmodule
