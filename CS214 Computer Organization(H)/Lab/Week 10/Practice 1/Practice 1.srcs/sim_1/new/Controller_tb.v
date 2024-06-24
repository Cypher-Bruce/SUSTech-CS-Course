`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/23 11:54:15
// Design Name: 
// Module Name: Controller_tb
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


module Controller_tb();
    
reg [31:0] address;
wire Branch;
wire [1:0] ALUOp;
wire ALUSrc;
wire MemRead;
wire MemWrite;
wire MemtoReg;
wire RegWrite;
Controller Controller_inst(
    .Inst(address[6:0]),
    .Branch(Branch),
    .ALUOp(ALUOp),
    .ALUSrc(ALUSrc),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .MemtoReg(MemtoReg),
    .RegWrite(RegWrite)
    );

initial begin
address = 32'h0000a083;
#10
address = 32'h001080b3;
#10
address = 32'h00102423;
#10
address = 32'hfe1008e3;
#10
address = 32'h00101663;
#10
address = 32'h403000b3;
#10
address = 32'h0041f133;
#10
address = 32'h005261b3;
#10
$finish;
end
endmodule
