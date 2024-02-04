`timescale 1ns / 1ps
module vga_ascii #(
    parameter   char_color  = 24'h000000
)(  //This module transforms a charactor to pos_data based on x and y.
    input       [7:0]       ascii   ,
    input       [9:0]       x_over  ,
    input       [9:0]       y_over  ,  
    output      [23:0]      pix_data    
);

    reg [7:0]   stored_ascii[0 : 256 * 16 - 1];
    
    initial $readmemh("E:/notes/ASC16-96.txt",stored_ascii);
    
    assign pix_data = (stored_ascii[16 * ascii + y_over][7 - x_over]==1) ? 24'h000000 : 24'hFFFFFF;

endmodule