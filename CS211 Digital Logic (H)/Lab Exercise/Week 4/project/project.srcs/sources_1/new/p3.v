`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/11 17:06:02
// Design Name: 
// Module Name: p3
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


module p3(
input x,
input y,
input z,
output ans
    );
    assign ans = ~x&~y&z|~x&y&~z|x&~y&~z|x&y&z; 
endmodule
