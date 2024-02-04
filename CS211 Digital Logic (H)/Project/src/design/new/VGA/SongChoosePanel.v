`timescale 1ns / 1ps
`include "VGAparams.v"
module SongChoosePanel_vga#(
    //In total there are eight panels and each panel can contain at most 9 character from 0-9 a-z
   parameter  char_width               =   24,
   parameter  char_height              =   32,
   parameter  panel_width              =   480,
   parameter  panel_height             =   64,
   //In total, there are 8 panels available for outputs. 
   parameter  start_point_x_panel_1    =   80,  
   parameter  start_point_y_panel_1    =   64,
   parameter  start_point_y_panel_2    =   160,
   parameter  start_point_y_panel_3    =   256,
   parameter  start_point_y_panel_4    =   352,
   parameter  panel_color              =   24'hFFFFFF
)(
   input   wire            vga_clk     ,
   input   wire            rst_n       ,
   input   wire    [9:0]   pos_x       ,
   input   wire    [9:0]   pos_y       ,
   input   wire            repertoire_page,
   input   wire    [1:0]   page_song_id,
   input   wire    [159:0] songname_1  ,
   input   wire    [159:0] songname_2  ,
   input   wire    [159:0] songname_3  ,
   input   wire    [159:0] songname_4  ,
   output  reg     [23:0]  pos_data  
   );
   
//---------------------------Panel Instantiation---------------------------//
   wire                enable_1;
   wire    [23:0]      output_1;
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_1),
       .panel_width    (panel_width          ),
       .char_count     (20                   )        
   ) panel_1
   ( 
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (songname_1),   
       .enable   (enable_1),   
       .pos_data (output_1)
   );

   wire                enable_2;
   wire    [23:0]      output_2;
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_2),
       .panel_width    (panel_width          ),
       .char_count     (20                   )             
   )panel_2
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (songname_2),   
       .enable   (enable_2),   
       .pos_data (output_2)
   );

   wire                enable_3;
   wire    [23:0]      output_3;
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_3),
       .panel_width    (panel_width          ),
       .char_count     (20                   )              
   )panel_3
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (songname_3),   
       .enable   (enable_3),   
       .pos_data (output_3)
   );

   wire                enable_4;
   wire    [23:0]      output_4;
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_4),
       .panel_width    (panel_width          ),
       .char_count     (20                   )              
   )panel_4
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (songname_4),   
       .enable   (enable_4),   
       .pos_data (output_4)
   );
   

//---------------------------Pos_Data Output Decision Panel---------------------------//
   always @(posedge vga_clk or negedge rst_n) begin
       if(~rst_n) 
           pos_data <= 24'b0;
       else begin
           if(enable_1)
               pos_data <= (page_song_id == 2'b00) ? ~output_1 : output_1;
           else if(enable_2)
               pos_data <= (page_song_id == 2'b01) ? ~output_2 : output_2;
           else if(enable_3)
               pos_data <= (page_song_id == 2'b10) ? ~output_3 : output_3;
           else if(enable_4)
               pos_data <= (page_song_id == 2'b11) ? ~output_4 : output_4;
           else 
               pos_data <= 24'hFFFFFF;
       end
   end    

endmodule
