`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/06 17:06:52
// Design Name: 
// Module Name: Breath_light
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


module Breath_light(
    input clk,
    input rst_n,
    output reg led
    );
    reg [31:0] counter;
    parameter period = 10000;
    reg [31:0] step;
    reg [31:0] current_end;
    always @(posedge clk)
    begin
        if(~rst_n)
        begin
            counter <= 0;
            led <= 1;
            current_end <= 2;
            step <= 1;
        end 
        else begin 
            if(counter == current_end)
            begin
                led <= ~led;
            end
        
            if(current_end == 9999 || current_end == 1)
            begin
                step = ~step;
            end
            
            if(counter == period) 
            begin
                current_end <= current_end + step;
                led <= ~led;
                counter <= 0;
            end 
            else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
