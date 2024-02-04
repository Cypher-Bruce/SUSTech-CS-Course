`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 16:46:41
// Design Name: 
// Module Name: D_latch
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


module D_latch(
input E, D,
output reg Q,
output wire nQ
    );
    
    assign nQ = ~Q;
    always @*
    begin
        if(E)
            Q = D;
        else
            Q = Q;
    end
endmodule
