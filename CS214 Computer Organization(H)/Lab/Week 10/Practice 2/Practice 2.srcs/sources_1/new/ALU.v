`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/23 12:09:59
// Design Name: 
// Module Name: ALU
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


module ALU(
input [31:0] ReadData1,
input [31:0] ReadData2,
input [31:0] imm32,
input [1:0] ALUOp,
input ALUSrc,
input [2:0] funct3,
input [6:0] funct7,
output reg [31:0] ALUResult,
output zero
    );

reg [3:0] ALUControl;
wire [31:0] Operand2;

assign Operand2 = ALUSrc ? imm32 : ReadData2;
assign zero = ALUResult == 0;

always @* begin
    case(ALUOp)
        2'b00: 
        begin
            ALUControl = 4'b0010;
        end
        2'b01:
        begin
            ALUControl = 4'b0110;
        end
        2'b10:
        begin
            case(funct7)
                7'b0000000:
                begin
                    case(funct3)
                        3'b000:
                        begin
                            ALUControl = 4'b0010;
                        end
                        3'b111:
                        begin
                            ALUControl = 4'b0000;
                        end
                        3'b110:
                        begin
                            ALUControl = 4'b0001;
                        end
                    endcase
                end
                7'b0100000:
                begin
                    ALUControl = 4'b0110;
                end
            endcase
        end
    endcase
end

always @* begin
    case(ALUControl)
        4'b0000:
        begin
            ALUResult = ReadData1 & Operand2;
        end
        4'b0001:
        begin
            ALUResult = ReadData1 | Operand2;
        end
        4'b0010:
        begin
            ALUResult = ReadData1 + Operand2;
        end
        4'b0110:
        begin
            ALUResult = ReadData1 - Operand2;
        end
    endcase
end
endmodule
