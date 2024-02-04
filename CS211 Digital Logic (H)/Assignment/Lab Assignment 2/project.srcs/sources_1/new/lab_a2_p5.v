`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 22:55:47
// Design Name: 
// Module Name: lab_a2_p5
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


module lab_a2_p5(
input a, b, c, d,
output more1_somin, more1_pomax
    );;
    assign more1_somin = a&b&c&d | ~a&b&c&d | a&~b&c&d | a&b&~c&d | a&b&c&~d;
    assign more1_pomax = (~a|~b|c|d) & (~a|b|~c|d) & (~a|b|c|~d) & (a|~b|~c|d) & (a|~b|c|~d) & (a|b|~c|~d) & (a|b|c|~d) & (a|b|~c|d) & (a|~b|c|d)  & (~a|b|c|d)  & (a|b|c|d);
endmodule
