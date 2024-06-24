`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/23 12:18:27
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
reg [31:0] Inst;
reg [31:0] Read_data_1;
reg [31:0] Read_data_2;
reg [31:0] Imme;
wire [1:0] ALUOp;
wire ALUSrc;
wire [31:0] ALU_result;
wire Zero;

ALU ALU_inst(
    .Inst(Inst),
    .Read_data_1(Read_data_1),
    .Read_data_2(Read_data_2),
    .Imme(Imme),
    .ALUOp(ALUOp),
    .ALUSrc(ALUSrc),
    .ALU_result(ALU_result),
    .Zero(Zero)
);

Controller Controller_inst(
    .Inst(Inst[6:0]),
    .ALUOp(ALUOp),
    .ALUSrc(ALUSrc)
    );

initial begin
Inst = 32'h0000a083;
Read_data_1 = 100;
Imme = 4;
#10
Inst = 32'h001080b3;
Read_data_1 = 15;
Read_data_2 = 9; 
#10
Inst = 32'h00102423;
Read_data_1 = 100;
Imme = 4;
#10
Inst = 32'hfe1008e3;
Read_data_1 = 50;
Read_data_2 = 50;
#10
Inst = 32'h00101663;
Read_data_1 = 50;
Read_data_2 = 40;
#10
Inst = 32'h403000b3;
Read_data_1 = 15;
Read_data_2 = 9; 
#10
Inst = 32'h0041f133;
Read_data_1 = 2;
Read_data_2 = 1; 
#10
Inst = 32'h005261b3;
Read_data_1 = 2;
Read_data_2 = 1; 
#10
$finish;
end
endmodule
