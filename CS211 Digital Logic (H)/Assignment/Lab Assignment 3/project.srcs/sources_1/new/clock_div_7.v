`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 22:49:08
// Design Name: 
// Module Name: clock_div_7
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


module clock_div_7(
    input clk, rst_n,
    output clk_out
);

reg [2:0] counter1, counter2;

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        counter1 <= 3'b000;
    end else begin
        case(counter1)
            3'b000: counter1 <= 3'b001;
            3'b001: counter1 <= 3'b011;
            3'b011: counter1 <= 3'b111;
            3'b111: counter1 <= 3'b110;
            3'b110: counter1 <= 3'b100;
            3'b100: counter1 <= 3'b010;
            3'b010: counter1 <= 3'b000;
            default: counter1 <= 3'b000;
        endcase
    end
end

always @(negedge clk or negedge rst_n) begin
    if(~rst_n) begin
        counter2 <= 3'b000;
    end else begin
        case(counter2)
            3'b000: counter2 <= 3'b001;
            3'b001: counter2 <= 3'b011;
            3'b011: counter2 <= 3'b111;
            3'b111: counter2 <= 3'b110;
            3'b110: counter2 <= 3'b100;
            3'b100: counter2 <= 3'b010;
            3'b010: counter2 <= 3'b000;
            default: counter2 <= 3'b000;
        endcase
    end
end

assign clk_out = counter1[0] | counter2[0];
endmodule
