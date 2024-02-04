`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 16:49:16
// Design Name: 
// Module Name: comparator
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


module comparator(
input [1:0] p1,
input [1:0] p2,
output reg [3:0] o 
    );
    always @*
    begin
        case({p1, p2})
            4'b0000, 4'b0101, 4'b1010:
                o = 4'b1100;
            4'b0001, 4'b0110, 4'b1000:
                o = 4'b0010;
            4'b0100, 4'b1001, 4'b0010:
                o = 4'b0001;
            default:
                o = 4'b0000;
        endcase
    end
endmodule
