`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 00:12:58
// Design Name: 
// Module Name: lab_a2_p9
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


module lab_a2_p9(
input [3:0] in,
output more1
    );
    wire [15:0] out;
    Decoder_4_16 d(in, out);
    or or1(more1, out[7], out[11], out[13], out[14], out[15]);
endmodule
