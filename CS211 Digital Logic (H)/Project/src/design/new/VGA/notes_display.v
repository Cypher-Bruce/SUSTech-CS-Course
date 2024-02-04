//This is the module that displays the COE notes. 
module notes_display#(
    parameter  width            =   32,
    parameter  height           =   32,
    
    parameter  start_point_x_C  =   112,
    parameter  start_point_x_D  =   176,
    parameter  start_point_x_E  =   240,
    parameter  start_point_x_F  =   304,
    parameter  start_point_x_G  =   368,
    parameter  start_point_x_A  =   432,
    parameter  start_point_x_B  =   496,
    
    parameter  start_point_y    =   416
)
(
    input   wire            vga_clk     ,
    input   wire    [9:0]   pos_x       ,
    input   wire    [9:0]   pos_y       ,
    output  reg     [23:0]  pos_data    
);
    
//The following instantiation has used IP catalog, therefore need to instantiate ROM that has initialized loading COE files.
//------------------------Note_C_Display------------------------//    
    wire [23:0] data_output_C   ;
    wire [10:0] data_addr_C     ;
    wire        enabled_C       ;
    blk_mem_C   blk_mem_C_inst(.addra   (data_addr_C),
                               .clka    (vga_clk)   ,
                               .douta   (data_output_C),
                               .ena     (1)         
                               );
    assign enabled_C   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_C < width) );                               
    assign data_addr_C = enabled_C ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_C ) ) : 0;
    
//------------------------Note_D_Display------------------------//    
    wire [23:0] data_output_D   ;
    wire [10:0] data_addr_D     ;
    wire        enabled_D       ;
    blk_mem_D   blk_mem_D_inst(.addra   (data_addr_D),
                               .clka    (vga_clk)   ,
                               .douta   (data_output_D),
                               .ena     (1)         
                               );
    assign enabled_D   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_D < width) );                               
    assign data_addr_D = enabled_D ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_D ) ) : 0;
                             
//------------------------Note_E_Display------------------------//    
        wire [23:0] data_output_E   ;
        wire [10:0] data_addr_E     ;
        wire        enabled_E       ;                         
        blk_mem_E   blk_mem_E_inst(.addra   (data_addr_E),
                                   .clka    (vga_clk)   ,
                                   .douta   (data_output_E),
                                   .ena     (1)         
                                   );
        assign enabled_E   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_E < width) );                               
        assign data_addr_E = enabled_E ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_E ) ) : 0;
                                                      
//------------------------Note_F_Display------------------------//    
        wire [23:0] data_output_F   ;
        wire [10:0] data_addr_F     ;
        wire        enabled_F       ;                                                  
        blk_mem_F   blk_mem_F_inst(.addra   (data_addr_F),
                                   .clka    (vga_clk)    ,
                                   .douta   (data_output_F),
                                   .ena     (1)         
                                   );
        assign enabled_F   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_F < width) );                               
        assign data_addr_F = enabled_F ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_F ) ) : 0;
                                                                                                        
//------------------------Note_G_Display------------------------//    
        wire [23:0] data_output_G   ;
        wire [10:0] data_addr_G     ;
        wire        enabled_G       ;                                                                           
        blk_mem_G   blk_mem_G_inst(.addra   (data_addr_G),
                                   .clka    (vga_clk)    ,
                                   .douta   (data_output_G),
                                   .ena     (1)         
                                   );
        assign enabled_G   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_G < width) );                               
        assign data_addr_G = enabled_G ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_G ) ) : 0;
                          
//------------------------Note_A_Display------------------------//    
        wire [23:0] data_output_A   ;
        wire [10:0] data_addr_A     ;
        wire        enabled_A       ;                                                                                                   
        blk_mem_A   blk_mem_A_inst(.addra   (data_addr_A),
                                   .clka    (vga_clk)    ,
                                   .douta   (data_output_A),
                                   .ena     (1)         
                                   );
        assign enabled_A   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_A < width) );                               
        assign data_addr_A = enabled_A ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_A ) ) : 0;
    
//------------------------Note_B_Display------------------------//    
        wire [23:0] data_output_B   ;
        wire [10:0] data_addr_B     ;
        wire        enabled_B       ;                                                                                                   
        blk_mem_B   blk_mem_B_inst(.addra   (data_addr_B),
                                   .clka    (vga_clk)    ,
                                   .douta   (data_output_B),
                                   .ena     (1)         
                                   );
        assign enabled_B   = ( (pos_y - start_point_y < height) && (pos_x - start_point_x_B < width) );                               
        assign data_addr_B = enabled_B ? ( (pos_y - start_point_y ) * width + (pos_x - start_point_x_B ) ) : 0;
    
                  
    always @(posedge vga_clk) begin
        if(enabled_A)
            pos_data <= data_output_A;
        else if(enabled_B)
            pos_data <= data_output_B;
        else if(enabled_C)
            pos_data <= data_output_C;
        else if(enabled_D)
            pos_data <= data_output_D;
        else if(enabled_E)
            pos_data <= data_output_E;
        else if(enabled_F)
            pos_data <= data_output_F;
        else if(enabled_G)
            pos_data <= data_output_G;
        else    
            pos_data <= 24'hFFFFFF;                            
    end       
endmodule