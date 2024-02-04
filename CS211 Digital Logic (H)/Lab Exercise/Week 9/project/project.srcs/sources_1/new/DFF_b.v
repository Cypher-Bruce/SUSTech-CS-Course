`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 16:55:27
// Design Name: 
// Module Name: DFF_b
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


module DFF_b(
input clk, D,
output reg Q, 
output wire nQ
    );
    always @(negedge clk)
    begin
        Q <= D;
    end
    assign nQ = ~Q;
endmodule
