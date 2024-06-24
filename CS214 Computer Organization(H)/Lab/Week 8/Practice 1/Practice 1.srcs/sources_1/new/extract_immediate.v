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


module extract_immediate(
input wire [31:0] instruction,
output reg [31:0] immediate,
output reg writeM,
output reg writeR
);

always @(*) 
begin
    case(instruction[6:0])
    7'b0110011: // R
    begin
        immediate = 32'b0;
        writeR = 1'b1;
        writeM = 1'b0;
    end
    7'b0010011: // I
    begin
        immediate = {{20{instruction[31]}}, instruction[31:20]};
        writeR = 1'b1;
        writeM = 1'b0;
    end
    7'b0100011: // S
    begin
        immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
        writeR = 1'b0;
        writeM = 1'b1;
    end
    7'b1100011: // B
    begin
        immediate = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
        writeR = 1'b1;
        writeM = 1'b0;
    end
    7'b0110111, 7'b0010111:
    begin
        immediate = {instruction[31:12], 12'b0};
        writeR = 1'b1;
        writeM = 1'b0;
    end
    7'b1101111, 7'b1100111:
    begin
        immediate = {{19{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
        writeR = 1'b1;
        writeM = 1'b0;
    end
    default:
    begin
        immediate = 32'b0;
        writeR = 1'b0;
        writeM = 1'b0;
    end
    endcase
end
    
    
endmodule
