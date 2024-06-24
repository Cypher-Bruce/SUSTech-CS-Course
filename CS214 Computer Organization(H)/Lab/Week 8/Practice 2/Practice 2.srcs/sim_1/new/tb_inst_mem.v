`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/12 23:20:34
// Design Name: 
// Module Name: tb_inst_mem
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


module tb_inst_mem(

    );
    reg clk;
    reg [13:0] addr;
    wire [31:0] dout;
    m_inst urom(.clk(clk), .addr(addr), .dout(dout));
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        addr = 14'h0;
        repeat(20) #17 addr = addr + 1;
        #20 $finish;
    end
endmodule
