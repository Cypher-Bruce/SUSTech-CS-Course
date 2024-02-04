`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 16:50:01
// Design Name: 
// Module Name: display
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


module display(
input [1:0] p,
output tub_sel,
output reg [7:0] tub_signal
    );
    assign tub_sel = 1'b1;
    always @(p)
    begin
        case(p)
        2'b00: tub_signal = 8'b00001010;
        2'b01: tub_signal = 8'b11001110;
        2'b10: tub_signal = 8'b10110110;
        default: tub_signal = 8'b10011110;
        endcase
    end
endmodule
