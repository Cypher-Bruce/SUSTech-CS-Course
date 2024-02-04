`timescale 1ns / 1ps
`include "VGAparams.v"
module Playmode_vga#(
    parameter  width            =   32,
    parameter  height           =   32,
    parameter  start_point_x_C  =   112,
    parameter  start_point_x_D  =   176,
    parameter  start_point_x_E  =   240,
    parameter  start_point_x_F  =   304,
    parameter  start_point_x_G  =   368,
    parameter  start_point_x_A  =   432,
    parameter  start_point_x_B  =   496,
    parameter  start_point_y    =   416
)(
    input   wire            vga_clk     ,
    input   wire            rst_n       ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    
    input   wire    [7:0]   note        ,
    input   wire    [1:0]   shift       ,
    input   wire            output_ready,
    output  reg     [23:0]  pos_data    ,
    output  wire    [9:0]   vga_bottom 
);
    



wire      [23:0]        background_color;  
wire      [7:0]        transition;
assign    transition = pos_y * 2 / 3 - 1;      
parameter  high_pitch_color =    8'hFF;
parameter  middle_pitch_color =  24'hFFFFFF;
parameter  low_pitch_color =     8'hFF;

assign background_color = (shift == 2'b10)? {transition, transition, high_pitch_color}: 
                         ((shift == 2'b01)? {low_pitch_color, transition, transition} : middle_pitch_color);        

//------------------------Note_block------------------------//    
reg [`BUFFER_LENGTH:0]      buffer [7:0];
reg [`DISPLAY_LENGTH-1:0]   display[7:0];
reg [19:0]                  count;
reg                         read_flag;
parameter  period           =   100000;
parameter  block_color      =   24'h000000;
parameter  hit_color        =   24'hFFF200;

always @(posedge vga_clk or negedge rst_n) begin
    if(~rst_n) begin
        count <= 20'b0;
        read_flag <= 1'b0;
    end
    else if (count == period - 1) begin
        count <= 20'b0;
        read_flag <= 1'b1;
    end
    else begin
        count <= count + 20'b1;
        read_flag <= 1'b0;
    end
end

always @(posedge vga_clk or negedge rst_n) begin
    if(~rst_n) begin
        {display[0]} <= `TOT_LENGTH'b0;
        {display[1]} <= `TOT_LENGTH'b0;
        {display[2]} <= `TOT_LENGTH'b0;
        {display[3]} <= `TOT_LENGTH'b0;
        {display[4]} <= `TOT_LENGTH'b0;
        {display[5]} <= `TOT_LENGTH'b0;
        {display[6]} <= `TOT_LENGTH'b0;
    end
    else begin
        if(read_flag == 1'b1) begin
            {display[0]} <= {display[0][`DISPLAY_LENGTH-2:0], (note[0] && output_ready)};//C
            {display[1]} <= {display[1][`DISPLAY_LENGTH-2:0], (note[1] && output_ready)};//D
            {display[2]} <= {display[2][`DISPLAY_LENGTH-2:0], (note[2] && output_ready)};//E
            {display[3]} <= {display[3][`DISPLAY_LENGTH-2:0], (note[3] && output_ready)};//F
            {display[4]} <= {display[4][`DISPLAY_LENGTH-2:0], (note[4] && output_ready)};//G
            {display[5]} <= {display[5][`DISPLAY_LENGTH-2:0], (note[5] && output_ready)};//A
            {display[6]} <= {display[6][`DISPLAY_LENGTH-2:0], (note[6] && output_ready)};//B
        end
    end
end

//--------------------Output Port----------------------//
assign vga_bottom = {1'b0, display[6][`DISPLAY_LENGTH-1],
                     display[5][`DISPLAY_LENGTH-1],
                     display[4][`DISPLAY_LENGTH-1],
                     display[3][`DISPLAY_LENGTH-1],
                     display[2][`DISPLAY_LENGTH-1],
                     display[1][`DISPLAY_LENGTH-1],
                     display[0][`DISPLAY_LENGTH-1], shift};

wire enable_A_flag = (pos_x - start_point_x_A < width) && (pos_x - start_point_x_A >= 0) && (pos_y < start_point_y - 16);                   
wire enable_B_flag = (pos_x - start_point_x_B < width) && (pos_x - start_point_x_B >= 0) && (pos_y < start_point_y - 16); 
wire enable_C_flag = (pos_x - start_point_x_C < width) && (pos_x - start_point_x_C >= 0) && (pos_y < start_point_y - 16); 
wire enable_D_flag = (pos_x - start_point_x_D < width) && (pos_x - start_point_x_D >= 0) && (pos_y < start_point_y - 16); 
wire enable_E_flag = (pos_x - start_point_x_E < width) && (pos_x - start_point_x_E >= 0) && (pos_y < start_point_y - 16); 
wire enable_F_flag = (pos_x - start_point_x_F < width) && (pos_x - start_point_x_F >= 0) && (pos_y < start_point_y - 16); 
wire enable_G_flag = (pos_x - start_point_x_G < width) && (pos_x - start_point_x_G >= 0) && (pos_y < start_point_y - 16); 

always @(posedge vga_clk) begin
    if(enable_A_flag)
        pos_data = (display[5][pos_y - 1] == 1'b1) ? ((display[5][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else if(enable_B_flag)
        pos_data = (display[6][pos_y - 1] == 1'b1) ? ((display[6][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else if(enable_C_flag)
        pos_data = (display[0][pos_y - 1] == 1'b1) ? ((display[0][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else if (enable_D_flag)
        pos_data = (display[1][pos_y - 1] == 1'b1) ? ((display[1][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else if(enable_E_flag)
        pos_data = (display[2][pos_y - 1] == 1'b1) ? ((display[2][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else if(enable_F_flag)
        pos_data = (display[3][pos_y - 1] == 1'b1) ? ((display[3][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else if(enable_G_flag)
        pos_data = (display[4][pos_y - 1] == 1'b1) ? ((display[4][`DISPLAY_LENGTH-1] == 1'b1) ? hit_color : block_color ): background_color;
    else 
        pos_data <= background_color;
end       
endmodule
