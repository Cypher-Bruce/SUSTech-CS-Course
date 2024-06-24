`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/23 12:00:29
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(
input [1:0] ALUOp,
input [31:0] Inst,
output reg [3:0] ALUControl
    );

wire [6:0] funct7;
wire [2:0] funct3;
assign funct7 = Inst[31:25];
assign funct3 = Inst[14:12];

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


endmodule
