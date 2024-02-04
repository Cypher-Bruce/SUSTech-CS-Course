`timescale 1ns / 1ps
`include "VGAparams.v"
module ChoosePanel#(      
    //In total there are eight panels and each panel can contain at most 9 character from 0-9 a-z
    parameter  char_width               =   24,
    parameter  char_height              =   32,
    parameter  panel_width              =   240,
    parameter  panel_height             =   64,


    //In total, there are 8 panels available for outputs. 
    parameter  start_point_x_panel_1    =   64,
    parameter  start_point_x_panel_2    =   336, 
     
    parameter  start_point_y_panel_1    =   112,
    parameter  start_point_y_panel_2    =   208,
    parameter  start_point_y_panel_3    =   304,

    parameter  panel_color              =   24'hFFFFFF
)(
   input   wire            vga_clk     ,
   input   wire            rst_n       ,
   input   wire    [9:0]   pos_x       ,
   input   wire    [9:0]   pos_y       ,
   input   wire    [7:0]   next_mode   ,
   output  reg     [23:0]  pos_data  
   );


//---------------------------Panel Instantiation---------------------------//
   wire                enable_1;
   wire    [23:0]      output_1;
   wire    [8*13-1:0]  string_freemode;
   assign  string_freemode = "Free Mode";
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_1),
       .char_count     (9                   )           
   ) panel_1
   ( 
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (string_freemode  ),   
       .enable   (enable_1),   
       .pos_data (output_1)
   );

   wire                enable_2;
   wire    [23:0]      output_2;
   wire    [8*13-1:0]  string_playmode;
   assign  string_playmode = "Play Mode";
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_2),
       .panel_start_y  (start_point_y_panel_1),
       .char_count     (9                   )           
   )panel_2
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (string_playmode  ),   
       .enable   (enable_2),   
       .pos_data (output_2)
   );

   wire                enable_3;
   wire    [23:0]      output_3;
   wire    [8*13-1:0]  string_learnmode;
   assign  string_learnmode = "Learn Mode";
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_2),
       .char_count     (10                   )           
   )panel_3
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (string_learnmode  ),   
       .enable   (enable_3),   
       .pos_data (output_3)
   );

   wire                enable_4;
   wire    [23:0]      output_4;
   wire    [8*13-1:0]  string_gamemode;
   assign  string_gamemode = "Game Mode";
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_2),
       .panel_start_y  (start_point_y_panel_2),
       .char_count     (9                   )           
   )panel_4
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (string_gamemode  ),   
       .enable   (enable_4),   
       .pos_data (output_4)
   );

   wire                enable_5;
   wire    [23:0]      output_5;
   wire    [8*13-1:0]  string_setting;
   assign  string_setting = "Setting";
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_1),
       .panel_start_y  (start_point_y_panel_3),
       .char_count     (7                   )           
   )panel_5
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (string_setting  ),   
       .enable   (enable_5),   
       .pos_data (output_5)
   );

   wire                enable_6;
   wire    [23:0]      output_6;
   wire    [8*13-1:0]  string_userranking;
   assign  string_userranking = "Scores";
   panel_with_chars #(
       .panel_start_x  (start_point_x_panel_2),
       .panel_start_y  (start_point_y_panel_3),
       .char_count     (6                    )           
   )panel_6
   (
       .vga_clk  (vga_clk ),   
       .rst_n    (rst_n   ),   
       .pos_x    (pos_x   ),   
       .pos_y    (pos_y   ),   
       .string   (string_userranking ),   
       .enable   (enable_6),   
       .pos_data (output_6)
   );

   
//---------------------------Highlight Panel---------------------------//
   reg         [2:0]       panel_highlight;
   //  | Panel 1[0]: 000 FreeMode  | Panel 2[1]: 001 PlayMode |
   //  | Panel 3[2]: 010 LearnMode | Panel 4[3]: 011 GameMode |
   //  | Panel 5[4]: 100 Setting   | Panel 6[5]: 101 UserRank |

   always @(posedge vga_clk or negedge rst_n) begin
       if(~rst_n)
           panel_highlight <= 3'b000;
       else begin 
           case(next_mode) 
               `FreeMode: panel_highlight <= 3'b000;
               `Song_PlayMode: panel_highlight <= 3'b001;
               `Song_LearnMode: panel_highlight <= 3'b010;
               `Song_GameMode: panel_highlight <= 3'b011;
               `SettingMode: panel_highlight <= 3'b100;
               `UserRanking: panel_highlight <= 3'b101;
               default: panel_highlight <= panel_highlight;
           endcase
       end
   end

//---------------------------Pos_Data Output Decision Panel---------------------------//
   always @(posedge vga_clk or negedge rst_n) begin
       if(~rst_n) 
           pos_data <= 24'b0;
       else begin
           if(enable_1)
               pos_data <= (panel_highlight == 3'b000) ? ~output_1 : output_1;
           else if(enable_2)
               pos_data <= (panel_highlight == 3'b001) ? ~output_2 : output_2;
           else if(enable_3)
               pos_data <= (panel_highlight == 3'b010) ? ~output_3 : output_3;
           else if(enable_4)
               pos_data <= (panel_highlight == 3'b011) ? ~output_4 : output_4;
           else if(enable_5)
               pos_data <= (panel_highlight == 3'b100) ? ~output_5 : output_5;
           else if(enable_6)
               pos_data <= (panel_highlight == 3'b101) ? ~output_6 : output_6;
           else 
               pos_data <= 24'hFFFFFF;
       end
   end    

endmodule
