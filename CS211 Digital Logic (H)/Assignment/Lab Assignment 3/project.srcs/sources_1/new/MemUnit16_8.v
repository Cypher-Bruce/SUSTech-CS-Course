`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 23:01:51
// Design Name: 
// Module Name: MemUnit16_8
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


module MemUnit16_8(
    input clk, rw, rst_n, // A rw of 1 indicates a read operation, and a rw of 0 indicates a write operation.
    input [3:0] addr, // address to be read or written
    input [7:0] data_in, // when in the write state, assign the value to the corresponding address
    output reg [7:0] data_out, // Data read in read state
    output reg data_valid //represents the data_out is valid
);

reg [7:0] memory [0:15];
integer i;

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        for(i = 0; i < 16; i = i + 1) begin
            memory[i] <= 8'b00000000;
        end
    end else begin
        if(rw == 0) begin
            memory[addr] <= data_in;
        end
    end
end

always @* begin
    data_out = (rw == 1 ? memory[addr] : 8'b00000000);
    data_valid = rw & rst_n;
end
endmodule
