module  vga_top (     
    input   wire            sys_clk     ,   //Input Clock: 100 MHz 
    input   wire            sys_rst_n   ,   //Reset Signal: Low active
    //General Inputs
    input           [7:0]   key         ,
    input   wire	[7:0]	mode	    ,
    input   wire    [7:0]   next_mode   ,     
    input   wire    [1:0]   shift       ,
    //Welcome Page Username Inputs
    input   wire    [63:0]  username    ,
    input   wire    [63:0]  currentuser  ,
    //Choose Panels Inputs
    input   wire            repertoire_page,
    input   wire    [1:0]   page_song_id,
    input   wire    [159:0] songname_1  ,
    input   wire    [159:0] songname_2  ,
    input   wire    [159:0] songname_3  ,
    input   wire    [159:0] songname_4  ,
    //Play Mode Inputs
    input   wire            output_ready,
    input   wire    [9:0]   data_out    ,
    //Setting Mode Iutputs
    input   wire    [2:0]   setting_cnt ,
    //Process Panel Instances
    input   wire    [9:0]   duration    ,
    //Bottom Outputs 
    output  wire    [9:0]   vga_bottom_pm,
    output  wire    [9:0]   vga_bottom_lm,
    output  wire    [9:0]   vga_bottom_gm,
    //Recording Inputs
    input                   recording    ,
    input                   handling_rec ,
    //General Outputs
    output  wire            hsync       ,   //Horizontal Sync Signal
    output  wire            vsync       ,   //Vertical Sync Signal
    output  wire    [23:0]  color           //RGB Data
);

wire               vga_clk ; 
wire               rst_n   ; 
wire    [9:0]      pos_x   ; 
wire    [9:0]      pos_y   ; 
wire    [23:0]     pix_data; 


//------------- clk_gen_inst -------------// 
//This module generates 25MHz vga_clk based on 100MHz sys_clk.
clk_wiz_0 clk_gen_inst (
    .clk_in1         (sys_clk    ), 
    .resetn          (sys_rst_n  ), 
    .clk_out1        (vga_clk    )
); 
    
//------------- vga_ctrl_inst -------------//
//This module is used to generate location information. 
vga_ctrl  vga_ctrl_inst(     
    .vga_clk        (vga_clk    ),  
    .sys_rst_n      (sys_rst_n  ), 
    .pix_data       (pix_data   ),  
    .pos_x          (pos_x      ),  
    .pos_y          (pos_y      ),  
    .hsync          (hsync      ),  
    .vsync          (vsync      ),  
    .rgb            (color      )
 );
 
//------------- vga_pic_inst -------------//
//This module is used to generate actually pixel data.
vga_pic vga_pic_inst
(   .sys_clk          (sys_clk    ),
    .vga_clk          (vga_clk    ), 
    .rst_n            (sys_rst_n  ), 
    .pos_x            (pos_x      ), 
    .pos_y            (pos_y      ), 
    //General Inputs
    .mode             (mode       ),
    .next_mode        (next_mode  ),
    .note             (key        ),
    .shift            (shift      ),
    //Welcome Page Inputs
    .username         (username   ),
    .currentuser      (currentuser),
    //Choose Panel Inputs
    .repertoire_page  (repertoire_page),
    .page_song_id     (page_song_id),
    .songname_1       (songname_1),
    .songname_2       (songname_2),
    .songname_3       (songname_3),
    .songname_4       (songname_4),
    //Play Mode Inputs
    .output_ready     (output_ready),
    .data_out         (data_out),
    //Process Panel Inputs
    .duration         (duration),
    //Bottom Outputs
    .vga_bottom_pm    (vga_bottom_pm),
    .vga_bottom_lm    (vga_bottom_lm),
    .vga_bottom_gm    (vga_bottom_gm),
    //Setting Mode Inputs
    .setting_cnt      (setting_cnt ),
    //Recording Inputs
    .recording       (recording    ),
    .handling_rec    (handling_rec),
    //Output Pixel Data
    .pos_data         (pix_data   )  
 );

 endmodule
