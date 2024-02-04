`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 23:02:48
// Design Name: 
// Module Name: lab_a2_p6
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


module lab_a2_p6(
input [3:0] in,
output reg more1
    );
    always @* 
    begin
        case(in)
            4'b1111, 4'b1110, 4'b1101, 4'b1011, 4'b0111: more1 = 1'b1;
            default: more1 = 1'b0;
        endcase
    end
endmodule
