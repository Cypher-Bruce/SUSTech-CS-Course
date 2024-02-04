`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 16:47:09
// Design Name: 
// Module Name: Decoder_3_8
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


module Decoder_3_8(
    input I0, I1, I2, EN,
    output reg [7:0] Y
);
    always @*
    begin
        if(EN) 
            case({I2, I1, I0})
            3'b000: Y = 8'b00000001;
            3'b001: Y = 8'b00000010;
            3'b010: Y = 8'b00000100;
            3'b011: Y = 8'b00001000;
            3'b100: Y = 8'b00010000;
            3'b101: Y = 8'b00100000;
            3'b110: Y = 8'b01000000;
            3'b111: Y = 8'b10000000;
            endcase
         else
            Y = 8'b00000000;
    end
endmodule
