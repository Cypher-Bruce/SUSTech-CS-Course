`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 13:48:42
// Design Name: 
// Module Name: Extract_Immediate
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


module Extract_Immediate(
input wire [31:0] instruction,
output reg [31:0] immediate
);

always @(*) 
begin
    case(instruction[6:0])
    7'b0000011: // R
    begin
        immediate = 32'b0;
    end
    7'b0000111: // I
    begin
        immediate = {{20{instruction[31]}}, instruction[31:20]};
    end
    7'b0001111: // S
    begin
        immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
    end
    7'b0001011: // B
    begin
        immediate = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
    end
    7'b0011011: // U
    begin
        immediate = {instruction[31:12], 12'b0};
    end
    7'b0011111: // J
    begin
        immediate = {{19{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
    end
    default:
    begin
        immediate = 32'b0;
    end
    endcase
end
    
    
endmodule
