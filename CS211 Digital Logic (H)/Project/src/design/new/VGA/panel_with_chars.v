`timescale 1ns / 1ps
//This is the module of panels with chars, you can configure chars and panels.
module panel_with_chars #(
    //Char Configuration
    parameter   char_width      =   8           ,
    parameter   char_height     =   16          ,   
    parameter   char_count      =   13          ,   
    parameter   char_start_x    =   16          ,
    parameter   char_start_y    =   28          ,
    parameter   char_color      =   24'h000000  ,

    //Panel Configuration
    parameter   panel_width     =   240         ,
    parameter   panel_height    =   64          ,
    parameter   panel_start_x   =   64          ,
    parameter   panel_start_y   =   64          ,
    parameter   panel_color     =   24'hFFFFFF  
)(
    input   wire                vga_clk     ,
    input   wire                rst_n       ,
    input   wire    [9:0]       pos_x       ,
    input   wire    [9:0]       pos_y       ,
    input   wire    [159:0]     string      ,
    output  wire                enable      ,
    output  reg     [23:0]      pos_data
);

//---------------------------Enable assignments---------------------------//
    wire    panel_enable;
    wire    char_enable;

    assign  panel_enable = (pos_x - panel_start_x < panel_width)
                        && (pos_x - panel_start_x >= 0) 
                        && (pos_y - panel_start_y < panel_height)
                        && (pos_y - panel_start_y >= 0);

    assign  char_enable  = (pos_x - panel_start_x - char_start_x < char_width * char_count)
                        && (pos_x - panel_start_x - char_start_x >= 0) 
                        && (pos_y - panel_start_y - char_start_y < char_height)
                        && (pos_y - panel_start_y >= 0);   
    
    assign  enable = panel_enable;

//----------------------------Char Manifestation--------------------------//
    wire    [7:0]   ascii   ;
    wire    [7:0]   x_over  ;
    wire    [7:0]   y_over  ;
    wire    [7:0]   count   ;

    assign  count   =  (char_enable) ? (pos_x - panel_start_x - char_start_x) / char_width : 0;
    assign  ascii   =  string[8*(char_count - count)-1 -:8];
    assign  x_over  =  (pos_x - panel_start_x - char_start_x) % char_width;
    assign  y_over  =  (pos_y - panel_start_y - char_start_y) % char_height; 

    wire    [23:0]  char_output;
    vga_ascii #(
        .char_color (char_color)
    )vga_ascii_inst(
        .ascii      (ascii   ),
        .x_over     (x_over  ),
        .y_over     (y_over  ),  
        .pix_data   (char_output)
    );

//---------------------------Pos_Data Output Decision Panel---------------------------//
    always @(posedge vga_clk or negedge rst_n) begin
        if(~rst_n)
            pos_data <= 24'b0;
        else begin
            if(panel_enable && char_enable)
                pos_data <= char_output;
            else if(panel_enable)
                pos_data <= panel_color;
            else
                pos_data <= 24'b0;
        end
    end

endmodule
