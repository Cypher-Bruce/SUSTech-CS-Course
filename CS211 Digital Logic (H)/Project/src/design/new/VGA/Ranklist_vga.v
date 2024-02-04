`timescale 1ns / 1ps
module Ranklist_vga #(
    parameter  char_width               =   24,
    parameter  char_height              =   32,
    parameter  panel_width              =   240,
    parameter  panel_height             =   64,
    parameter  start_point_x_panel_1    =   64,
    parameter  start_point_x_panel_2    =   336, 
    parameter  start_point_y_panel_1    =   200,
    parameter  panel_color              =   24'hFFFFFF
)(
    input   wire            vga_clk     ,
    input   wire            rst_n       ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    input   wire    [63:0]  username    ,
    input   wire    [14:0]  scores      ,
    input   wire            output_ready,
    output  reg     [23:0]  pos_data  
);


//---------------------------Panel Instantiation---------------------------//
wire                enable_1;
wire    [23:0]      output_1;
panel_with_chars #(
   .panel_start_x  (start_point_x_panel_1),
   .panel_start_y  (start_point_y_panel_1),
   .char_count     (13                  )           
) panel_1( 
   .vga_clk  (vga_clk ),   
   .rst_n    (rst_n   ),   
   .pos_x    (pos_x   ),   
   .pos_y    (pos_y   ),   
   .string   (username),   
   .enable   (enable_1),   
   .pos_data (output_1)
);

//Count the scores when a song is finished. 
wire                enable_2;
wire    [23:0]      output_2;
reg     output_ready_pre;
reg     output_ready_cur;
reg     [14:0]      tot_scores;
wire    [31:0]      tot_string;

initial begin
    tot_scores = 15'b0;
    output_ready_cur = 1'b0;
    output_ready_pre = 1'b0;
end
always @(posedge vga_clk) begin
    output_ready_cur <= output_ready;
    output_ready_pre <= output_ready_cur;
end
always @(posedge vga_clk) begin
    if(output_ready_cur == 1'b0 && output_ready_pre == 1'b1)
        tot_scores <= tot_scores + scores;
    else 
        tot_scores <= tot_scores;
end
//Change the number to string
numbers_to_string_large ntsl_inst(
    .number      (tot_scores),
    .string      (tot_string)
);
panel_with_chars #(
   .panel_start_x  (start_point_x_panel_2),
   .panel_start_y  (start_point_y_panel_1),
   .char_count     (4                   )           
)panel_2
(
   .vga_clk  (vga_clk ),   
   .rst_n    (rst_n   ),   
   .pos_x    (pos_x   ),   
   .pos_y    (pos_y   ),   
   .string   (tot_string),   
   .enable   (enable_2),   
   .pos_data (output_2)
);

//---------------------------Pos_Data Output Decision Panel---------------------------//
always @(posedge vga_clk or negedge rst_n) begin
   if(~rst_n) 
       pos_data <= 24'b0;
   else begin
       if(enable_1)
           pos_data <= output_1;
       else if(enable_2)
           pos_data <= ~output_2;
       else 
           pos_data <= 24'hFFFFFF;
   end
end    

endmodule
