`define BUFFER_LENGTH    20
`define DISPLAY_LENGTH   480
`define TOT_LENGTH       500
//This is the module that displays the falling blocks.
module notes_block #(
    parameter  width            =   32,
    parameter  height           =   32,
    parameter  period           =   100000,
    
    parameter  start_point_x_C  =   112,
    parameter  start_point_x_D  =   176,
    parameter  start_point_x_E  =   240,
    parameter  start_point_x_F  =   304,
    parameter  start_point_x_G  =   368,
    parameter  start_point_x_A  =   432,
    parameter  start_point_x_B  =   496,
    
    parameter  block_color      =   24'b0
)
(
    input   wire            vga_clk     ,
    input   wire            rst_n       ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    input   wire    [7:0]   note        ,
    output  reg     [23:0]  pos_data      
    );
        
    reg [`BUFFER_LENGTH:0]      buffer [7:0];
    reg [`DISPLAY_LENGTH-1:0]   display[7:0];
    reg [19:0]                  count;
    reg                         read_flag;
    
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
            {display[0], buffer[0]} <= `TOT_LENGTH'b0;
            {display[1], buffer[1]} <= `TOT_LENGTH'b0;
            {display[2], buffer[2]} <= `TOT_LENGTH'b0;
            {display[3], buffer[3]} <= `TOT_LENGTH'b0;
            {display[4], buffer[4]} <= `TOT_LENGTH'b0;
            {display[5], buffer[5]} <= `TOT_LENGTH'b0;
            {display[6], buffer[6]} <= `TOT_LENGTH'b0;
        end
        else begin
            if(read_flag == 1'b1) begin
                {display[0], buffer[0]} <= {display[0][`DISPLAY_LENGTH-2:0], buffer[0], note[0]};
                {display[1], buffer[1]} <= {display[1][`DISPLAY_LENGTH-2:0], buffer[1], note[1]};
                {display[2], buffer[2]} <= {display[2][`DISPLAY_LENGTH-2:0], buffer[2], note[2]};
                {display[3], buffer[3]} <= {display[3][`DISPLAY_LENGTH-2:0], buffer[3], note[3]};
                {display[4], buffer[4]} <= {display[4][`DISPLAY_LENGTH-2:0], buffer[4], note[4]};
                {display[5], buffer[5]} <= {display[5][`DISPLAY_LENGTH-2:0], buffer[5], note[5]};
                {display[6], buffer[6]} <= {display[6][`DISPLAY_LENGTH-2:0], buffer[6], note[6]};
            end
        end
    end
    
    wire enable_A = (pos_x - start_point_x_A < width) && (pos_x - start_point_x_A >= 0);
    wire enable_B = (pos_x - start_point_x_B < width) && (pos_x - start_point_x_B >= 0);
    wire enable_C = (pos_x - start_point_x_C < width) && (pos_x - start_point_x_C >= 0);
    wire enable_D = (pos_x - start_point_x_D < width) && (pos_x - start_point_x_D >= 0);
    wire enable_E = (pos_x - start_point_x_E < width) && (pos_x - start_point_x_E >= 0);
    wire enable_F = (pos_x - start_point_x_F < width) && (pos_x - start_point_x_F >= 0);
    wire enable_G = (pos_x - start_point_x_G < width) && (pos_x - start_point_x_G >= 0);
    
    always @(posedge vga_clk or negedge rst_n) begin
        if(~rst_n) 
            pos_data <= 24'b0;
        else begin
            if(enable_A)
                pos_data <= (display[5][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
            if(enable_B)
                pos_data <= (display[6][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
            if(enable_C)
                pos_data <= (display[0][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
            if(enable_D)
                pos_data <= (display[1][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
            if(enable_E)
                pos_data <= (display[2][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
            if(enable_F)
                pos_data <= (display[3][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
            if(enable_G)
                pos_data <= (display[4][pos_y-1] == 1'b1) ? block_color : 24'hFFFFFF;
        end
    end
    
endmodule
