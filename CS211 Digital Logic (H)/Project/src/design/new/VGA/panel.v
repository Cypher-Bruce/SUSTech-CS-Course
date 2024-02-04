`timescale 1ns / 1ps
//This is the module that can directly displays a choose panel with simple configurations.
//There are no instantiation of this module, but a few module is based on this one/
module panel(
    input   wire            vga_clk     ,
    input   wire            rst_n       ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    input   wire    [3:0]   key         , //0100 Up/0001 Right/1000 Left/0010 Down
    input   wire    [7:0]   enable_panel, 
    output  reg     [23:0]  pos_data  
    );
    
    //In total there are eight panels and each panel can contain at most 9 character from 0-9 a-z
    parameter  char_width               =   24;
    parameter  char_height              =   32;
    parameter  panel_width              =   240;
    parameter  panel_height             =   64;
    
    
    //In total, there are 8 panels available for outputs. 
    parameter  start_point_x_panel_1    =   64;
    parameter  start_point_x_panel_2    =   336; 
         
    parameter  start_point_y_panel_1    =   64;
    parameter  start_point_y_panel_2    =   160;
    parameter  start_point_y_panel_3    =   256;
    parameter  start_point_y_panel_4    =   352;

    parameter  panel_color              =   24'hFFFFFF;

    wire [8*13-1:0] string;
    assign string = "String test!";

//---------------------------Panel Instantiation---------------------------//
    wire                enable_1;
    wire    [23:0]      output_1;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_1),
        .panel_start_y  (start_point_y_panel_1)          
    ) panel_1
    ( 
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_1),   
        .pos_data (output_1)
    );

    wire                enable_2;
    wire    [23:0]      output_2;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_2),
        .panel_start_y  (start_point_y_panel_1)          
    )panel_2
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_2),   
        .pos_data (output_2)
    );

    wire                enable_3;
    wire    [23:0]      output_3;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_1),
        .panel_start_y  (start_point_y_panel_2)          
    )panel_3
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_3),   
        .pos_data (output_3)
    );

    wire                enable_4;
    wire    [23:0]      output_4;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_2),
        .panel_start_y  (start_point_y_panel_2)          
    )panel_4
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_4),   
        .pos_data (output_4)
    );

    wire                enable_5;
    wire    [23:0]      output_5;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_1),
        .panel_start_y  (start_point_y_panel_3)          
    )panel_5
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_5),   
        .pos_data (output_5)
    );

    wire                enable_6;
    wire    [23:0]      output_6;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_2),
        .panel_start_y  (start_point_y_panel_3)          
    )panel_6
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_6),   
        .pos_data (output_6)
    );

    wire                enable_7;
    wire    [23:0]      output_7;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_1),
        .panel_start_y  (start_point_y_panel_4)          
    )panel_7
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_7),   
        .pos_data (output_7)
    );

    wire                enable_8;
    wire    [23:0]      output_8;
    panel_with_chars #(
        .panel_start_x  (start_point_x_panel_2),
        .panel_start_y  (start_point_y_panel_4)          
    )panel_8
    (
        .vga_clk  (vga_clk ),   
        .rst_n    (rst_n   ),   
        .pos_x    (pos_x   ),   
        .pos_y    (pos_y   ),   
        .string   (string  ),   
        .enable   (enable_8),   
        .pos_data (output_8)
    );
//---------------------------Key Filter---------------------------//
    wire            up_flag;
    wire            right_flag;
    wire            left_flag;
    wire            down_flag; 
      
    key_filter key_filter_up(
        .sys_clk   (vga_clk), 
        .sys_rst_n (rst_n), 
        .key_in    (key[2]), 
        .key_flag  (up_flag)
    );
    
    key_filter key_filter_right(
        .sys_clk   (vga_clk), 
        .sys_rst_n (rst_n), 
        .key_in    (key[0]), 
        .key_flag  (right_flag)
    ); 

    key_filter key_filter_down(
        .sys_clk   (vga_clk), 
        .sys_rst_n (rst_n), 
        .key_in    (key[1]), 
        .key_flag  (down_flag)
    );

    key_filter key_filter_left(
        .sys_clk   (vga_clk), 
        .sys_rst_n (rst_n), 
        .key_in    (key[3]), 
        .key_flag  (left_flag)
    );     
    
//---------------------------Highlight Panel---------------------------//
    reg         [2:0]       panel_highlight;
    //  | Panel 1[0]: 000 | Panel 2[1]: 001 |
    //  | Panel 3[2]: 010 | Panel 4[3]: 011 |
    //  | Panel 5[4]: 100 | Panel 6[5]: 101 |
    //  | Panel 7[6]: 110 | Panel 8[7]: 111 |
    always @(posedge vga_clk or negedge rst_n) begin
        if(~rst_n)
            panel_highlight <= 3'b000;
        else if(up_flag) begin //Up
            case(panel_highlight) 
                3'b000: panel_highlight <= (enable_panel[6] == 1'b1) ? 3'b110 : 3'b000;
                3'b001: panel_highlight <= (enable_panel[7] == 1'b1) ? 3'b111 : 3'b001;
                3'b010: panel_highlight <= (enable_panel[0] == 1'b1) ? 3'b000 : 3'b010;
                3'b011: panel_highlight <= (enable_panel[1] == 1'b1) ? 3'b001 : 3'b011;
                3'b100: panel_highlight <= (enable_panel[2] == 1'b1) ? 3'b010 : 3'b100;
                3'b101: panel_highlight <= (enable_panel[3] == 1'b1) ? 3'b011 : 3'b101;
                3'b110: panel_highlight <= (enable_panel[4] == 1'b1) ? 3'b100 : 3'b110;
                3'b111: panel_highlight <= (enable_panel[5] == 1'b1) ? 3'b101 : 3'b111;
            endcase
        end
        else if(right_flag) begin //Right
            case(panel_highlight) 
                3'b000: panel_highlight <= (enable_panel[1] == 1'b1) ? 3'b001 : 3'b000;
                3'b001: panel_highlight <= (enable_panel[1] == 1'b1) ? 3'b001 : 3'b001;
                3'b010: panel_highlight <= (enable_panel[3] == 1'b1) ? 3'b011 : 3'b010;
                3'b011: panel_highlight <= (enable_panel[3] == 1'b1) ? 3'b011 : 3'b011;
                3'b100: panel_highlight <= (enable_panel[5] == 1'b1) ? 3'b101 : 3'b100;
                3'b101: panel_highlight <= (enable_panel[5] == 1'b1) ? 3'b101 : 3'b101;
                3'b110: panel_highlight <= (enable_panel[7] == 1'b1) ? 3'b111 : 3'b110;
                3'b111: panel_highlight <= (enable_panel[7] == 1'b1) ? 3'b111 : 3'b111;
            endcase
        end
        else if(left_flag) begin //Left
            case(panel_highlight) 
                3'b000: panel_highlight <= (enable_panel[0] == 1'b1) ? 3'b000 : 3'b000;
                3'b001: panel_highlight <= (enable_panel[0] == 1'b1) ? 3'b000 : 3'b001;
                3'b010: panel_highlight <= (enable_panel[2] == 1'b1) ? 3'b010 : 3'b010;
                3'b011: panel_highlight <= (enable_panel[2] == 1'b1) ? 3'b010 : 3'b011;
                3'b100: panel_highlight <= (enable_panel[4] == 1'b1) ? 3'b100 : 3'b100;
                3'b101: panel_highlight <= (enable_panel[4] == 1'b1) ? 3'b100 : 3'b101;
                3'b110: panel_highlight <= (enable_panel[6] == 1'b1) ? 3'b110 : 3'b110;
                3'b111: panel_highlight <= (enable_panel[6] == 1'b1) ? 3'b110 : 3'b111;
            endcase
        end
        else if(down_flag) begin //Down
            case(panel_highlight) 
                3'b000: panel_highlight <= (enable_panel[2] == 1'b1) ? 3'b010 : 3'b000;
                3'b001: panel_highlight <= (enable_panel[3] == 1'b1) ? 3'b011 : 3'b001;
                3'b010: panel_highlight <= (enable_panel[4] == 1'b1) ? 3'b100 : 3'b010;
                3'b011: panel_highlight <= (enable_panel[5] == 1'b1) ? 3'b101 : 3'b011;
                3'b100: panel_highlight <= (enable_panel[6] == 1'b1) ? 3'b110 : 3'b100;
                3'b101: panel_highlight <= (enable_panel[7] == 1'b1) ? 3'b111 : 3'b101;
                3'b110: panel_highlight <= (enable_panel[0] == 1'b1) ? 3'b000 : 3'b110;
                3'b111: panel_highlight <= (enable_panel[1] == 1'b1) ? 3'b001 : 3'b111;
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
            else if(enable_7)
                pos_data <= (panel_highlight == 3'b110) ? ~output_7 : output_7;
            else if(enable_8)
                pos_data <= (panel_highlight == 3'b111) ? ~output_8 : output_8;
            else 
                pos_data <= 24'hFFFFFF;
        end
    end    

endmodule
