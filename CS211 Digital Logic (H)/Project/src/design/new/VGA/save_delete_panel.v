module save_delete_panel(
    //This panel will show the save or delete panels. 
    input   wire            vga_clk     ,
    input   wire            rst_n       ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    output  wire            enable_pic  ,
    output  wire    [23:0]  pos_data     
    );
    parameter height = 64;
    parameter width = 100;
    parameter start_point_x = 10;
    parameter start_point_y = 300;
    
    wire [14:0] data_addr;
    Save_Delete save_delete_panel(
        .addra      (data_addr),
        .clka       (vga_clk),
        .douta      (pos_data),
        .ena        (1)
    );
    assign enable_pic  = ( (pos_y - start_point_y < height) && (pos_x - start_point_x < width) );                               
    assign data_addr = enable_pic ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x ) ) : 0;
endmodule