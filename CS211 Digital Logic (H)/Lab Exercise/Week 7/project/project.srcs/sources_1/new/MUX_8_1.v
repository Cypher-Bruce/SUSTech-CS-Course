`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 17:10:02
// Design Name: 
// Module Name: MUX_8_1
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


module MUX_8_1(
input S2, S1, S0,
input I7, I6, I5, I4, I3, I2, I1, I0,
output reg Y
    );
    always @*
    begin
        case({S2, S1, S0})
            3'b000: Y = I0;
            3'b001: Y = I1;
            3'b010: Y = I2;
            3'b011: Y = I3;
            3'b100: Y = I4;
            3'b101: Y = I5;
            3'b110: Y = I6;
            3'b111: Y = I7;
        endcase
    end
endmodule
