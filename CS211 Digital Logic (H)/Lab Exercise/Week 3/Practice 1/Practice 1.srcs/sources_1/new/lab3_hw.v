`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/27 16:57:32
// Design Name: 
// Module Name: lab3_hw
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


module lab3_hw(
    input x,
    input y,
    input z,
    output o1,
    output o2,
    output o3
    );
    assign o1 = ~x&~y&~z | ~x&y&z | x&~y&~z | x&~y&z | x&y&z;
    assign o2 = x&z | ~y&~z | y&z;
    assign o3 = (~y|z)&(x|y|~z);
    
endmodule
