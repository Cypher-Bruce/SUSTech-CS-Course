`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 16:58:23
// Design Name: 
// Module Name: game
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


module game(
input [1:0] p1, p2,
input rst_n,
input sys_clk,
input evaluate,
output reg [3:0] o,
output reg tub_sel1, tub_sel2,
output reg [7:0] tub_signal1, tub_signal2
    );
    wire clk;
    wire useless_1, useless_2;
    wire [3:0] leds;
    reg state;
    wire [7:0] tub_temp1, tub_temp2;
    reg [3:0] temp_o;
    slow_clock_divider slow_clk(.sys_clk(sys_clk), .rst_n(rst_n), .clk(clk));
    display d1(.p(p1), .tub_sel(useless_1), .tub_signal(tub_temp1));
    display d2(.p(p2), .tub_sel(useless_2), .tub_signal(tub_temp2));
    comparator c(.p1(p1), .p2(p2), .o(leds));
    
    initial begin
        state = 0;
    end
    
    always @(posedge clk) begin
        if(~rst_n) begin
            state <= 0;
        end else begin
            if(evaluate) begin
                state <= 1;
            end else begin
                state <= state;
            end
        end
        
        if(state) begin
            tub_signal1 <= tub_signal1;
            tub_signal2 <= tub_signal2;
            temp_o <= temp_o;
        end else begin
            tub_signal1 <= tub_temp1;
            tub_signal2 <= tub_temp2;
            temp_o <= leds;
        end
    end
    
    always @* begin
        case(state)
            1'b0: begin tub_sel1 = 1'b0; tub_sel2 = 1'b0; o = 4'b0000; end
            1'b1: begin tub_sel1 = 1'b1; tub_sel2 = 1'b1; o = temp_o; end
        endcase
    end
endmodule
