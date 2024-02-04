`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 17:01:33
// Design Name: 
// Module Name: JKFF_2
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


module JKFF_2(
    input clk, J, K,
    output reg Q, nQ
    );
    
    always @(posedge clk)
        if({J, K} == 2'b10)
        begin
            {Q, nQ} <= 2'b10;
        end
        else if({J, K} == 2'b01)
        begin
            {Q, nQ} <= 2'b01;
        end
        else if({J, K} == 2'b11)
        begin
            Q <= nQ;
            nQ <= Q;
        end
endmodule
