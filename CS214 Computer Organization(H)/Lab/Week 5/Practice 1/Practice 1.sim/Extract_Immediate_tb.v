`timescale 1ns / 1ps

module Extract_Immediate_tb();
    reg [31:0] instruction;
    wire [31:0] immediate;

    Extract_Immediate dut (
        .instruction(instruction),
        .immediate(immediate)
    );

    initial begin
        instruction = 32'b10000000000100101000001100000111;
        #10; 
    end

endmodule