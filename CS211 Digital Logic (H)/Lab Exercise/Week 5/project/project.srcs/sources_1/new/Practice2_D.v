`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 16:52:37
// Design Name: 
// Module Name: Practice2_D
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


module Practice2_D(
input [1:0] p1,
input [1:0] p2,
output [2:0] o 
    );
    assign o[2] = p1[0]&p2[0]|p1[1]&p2[1]|~p1[1]&~p1[0]&~p2[1]&~p2[0];
    assign o[1] = p1[0]&p2[1]|~p1[1]&~p1[0]&p2[0]|p1[1]&~p2[1]&~p2[0];
    assign o[0] = p1[1]&p2[0]|~p1[1]&~p1[0]&p2[1]|p1[0]&~p2[1]&~p2[0];
endmodule
