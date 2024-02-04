`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 16:47:32
// Design Name: 
// Module Name: JKFF
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


module JKFF(
    input clk, J, K,
    output reg Q,
    output nQ
    );
    
    assign nQ = ~Q;
    always @(posedge clk)
    begin
        case({J, K})
            2'b00: Q <= Q;
            2'b11: Q <= nQ;
            2'b10: Q <= 1'b1;
            2'b01: Q <= 1'b0;
        endcase
    end
endmodule
