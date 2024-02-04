`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 17:28:37
// Design Name: 
// Module Name: Practice2_B
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


module Practice2_B(
input [1:0] p1,
input [1:0] p2,
output reg [2:0] o 
    );
    always @*
    begin
        case({p1, p2})
            4'b0000, 4'b0101, 4'b1010:
                o = 3'b100;
            4'b0001, 4'b0110, 4'b1000:
                o = 3'b010;
            default:
                o = 3'b001;
        endcase
    end
endmodule
