`timescale 1ns / 1ps
`include "VGAparams.v"

module process(
    input   wire            clk     ,
    input   wire            rst_n   ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    input   wire    [9:0]   duration    ,
    output  wire    [23:0]  pos_data    
);
reg     [29:0]          cnt;
reg     [29:0]          counter;
reg                     slow_clk;
parameter               half_period    =   5000;
//This will slow the clk 
always @(posedge clk or negedge rst_n)begin
    if(~rst_n) begin
        cnt <= 30'b0;
        slow_clk <= 1'b0;
    end
    else begin
        if(cnt == half_period - 1) begin
            cnt <= 30'b0;
            slow_clk <= ~slow_clk;
        end
        else begin
            cnt <= cnt +1;
            slow_clk <= slow_clk;
        end
    end
end
//Counter based on the slow clk 
always @(posedge slow_clk or negedge rst_n)begin
    if(~rst_n)
        counter <= 30'b0;
    else begin
         if(counter == duration * `SAMPLE_INTERVAL  - 1) 
             counter <= counter;
         else 
             counter <= counter +1;
    end
end

//This will determine the color of the process bar,
wire  [23:0]   process_color;
wire  [7:0]    red_color;
wire  [7:0]    green_color;
wire  [9:0]    duration_test;
assign  duration_test = (duration == 10'b0) ? 200 : duration;
assign  red_color  = 8'd255 - ((counter * 8'd255) / (duration_test * `SAMPLE_INTERVAL));
assign  green_color = (counter * 8'd255) / (duration_test * `SAMPLE_INTERVAL);
assign  process_color = {red_color, green_color, 8'h00};

//Enable flag of the process bar. 
wire enable;
assign enable = (pos_x * duration_test * `SAMPLE_INTERVAL < counter * 640) ? 1'b1 : 1'b0;
assign pos_data =  (enable) ? process_color: 24'hFFFFFF;
endmodule
