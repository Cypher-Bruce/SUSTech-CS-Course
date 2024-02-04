`timescale 1ns / 1ps
module WelcomePage(
    input   wire            vga_clk     ,
    input   wire            rst_n       ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    input   wire    [63:0]  username    ,
    output  wire    [23:0]  pos_data     
    );
    parameter height_welcome = 100;
    parameter width_welcome = 300;
    parameter start_point_welcome_x = 170;
    parameter start_point_welcome_y = 100;
    
    wire    [15:0]      data_addr;
    wire                enable_pic;
    wire                enable_username;
    wire    [23:0]      welcome_data;
    wire    [23:0]      user_data;
    
    Welcome_page welcome_page_inst(
        .addra      (data_addr),
        .clka       (vga_clk),
        .douta      (welcome_data),
        .ena        (1)
    );
    
    panel_with_chars #(
        .panel_width     (240         ),
        .panel_height    (64          ),
        .panel_start_x   (200         ),
        .panel_start_y   (300         ),
        .char_count      (8           )
    )user_input(
        .vga_clk (vga_clk     ),
        .rst_n   (rst_n       ),
        .pos_x   (pos_x       ),
        .pos_y   (pos_y       ),
        .string  (username    ),
        .enable  (enable_username),
        .pos_data(user_data   )
    ); 
    
    assign enable_pic = ( (pos_y - start_point_welcome_y < height_welcome) && (pos_x - start_point_welcome_x < width_welcome) );                               
    assign data_addr = enable_pic ? ( (pos_y - start_point_welcome_y ) * width_welcome + (pos_x - start_point_welcome_x ) ) : 0;
    assign pos_data = enable_pic ? welcome_data :(enable_username ? ~user_data : 24'hFFFFFF);
endmodule
