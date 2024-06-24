`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/23 11:26:35
// Design Name: 
// Module Name: Controller
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


module Controller(
input [6:0] inst,
output reg Branch,
output reg [1:0] ALUOp,
output reg ALUSrc,
output reg MemRead,
output reg MemWrite,
output reg MemtoReg,
output reg RegWrite
    );
    
always @*
begin
    case(inst)
        7'b0110011: // R-type
        begin
            Branch = 1'b0;
            ALUOp = 2'b10;
            ALUSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
        end
        7'b0010011: // I-type
        begin
            Branch = 1'b0;
            ALUOp = 2'b00;
            ALUSrc = 1'b1;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
        end
        7'b0000011: // I-type
        begin
            Branch = 1'b0;
            ALUOp = 2'b00;
            ALUSrc = 1'b1;
            MemRead = 1'b1;
            MemWrite = 1'b0;
            MemtoReg = 1'b1;
            RegWrite = 1'b1;
        end
        7'b0100011: // S-type
        begin
            Branch = 1'b0;
            ALUOp = 2'b00;
            ALUSrc = 1'b1;
            MemRead = 1'b0;
            MemWrite = 1'b1;
            MemtoReg = 1'b0;
            RegWrite = 1'b0;
        end
        7'b1100011: // B-type
        begin
            Branch = 1'b1;
            ALUOp = 2'b01;
            ALUSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b0;
        end
        default:
        begin
            Branch = 1'b0;
            ALUOp = 2'b00;
            ALUSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b0;
        end
    endcase
end

endmodule
