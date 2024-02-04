`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 17:05:19
// Design Name: 
// Module Name: P3
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


module P3(
input rst_n, x_in,clk,
output reg [2:0] state, nextstate
    );
    parameter S1 = 3'b001, S2 = 3'b010, S3 = 3'b100;
    
    always @(posedge clk, negedge rst_n)
    begin
        if(~rst_n)
            state <= S1;
        else
            state <= nextstate;
    end
    
    always @(state, x_in)
    begin
        case(state)
            S1: if(x_in) nextstate = S2; else nextstate = S1;
            S2: if(x_in) nextstate = S3; else nextstate = S2;
            S3: if(x_in) nextstate = S1; else nextstate = S3;
        endcase
    end
endmodule
