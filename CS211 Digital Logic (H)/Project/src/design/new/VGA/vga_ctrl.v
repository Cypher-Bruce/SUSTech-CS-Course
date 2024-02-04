module vga_ctrl (     
    input   wire            vga_clk,  
    input   wire            sys_rst_n,  
    input   wire    [23:0]  pix_data,  
    output  wire    [9:0]   pos_x,  
    output  wire    [9:0]   pos_y,  
    output  wire            hsync,  
    output  wire            vsync,  
    output  wire    [23:0]  rgb            
 );
parameter   integer     RESOLUTION_X        =   10'd640,   
                        RESOLUTION_Y        =   10'd480;   

parameter   integer     H_SYNC              =   10'd96,         
                        H_BACK_PORCH        =   10'd48,                             
                        H_VALID_STATE       =   10'd640,                           
                        H_FRONT_PORCH       =   10'd16,               
                        H_TOTAL             =   10'd800;    
   
parameter   integer     V_SYNC              =   10'd2,           
                        V_BACK_PORCH        =   10'd33,                    
                        V_VALID_STATE       =   10'd480,            
                        V_FRONT_PORCH       =   10'd10,           
                        V_TOTAL             =   10'd525;    

wire            rgb_valid;  
wire            pix_data_req;  

//-----------------------Horizontal Counter----------------------- 
reg     [9:0]   cnt_h;
//Counter to the whole horizontal period
always@(posedge vga_clk or  negedge sys_rst_n) begin   
    if(sys_rst_n == 1'b0)         
        cnt_h   <=  10'd0;     
    else if(cnt_h == H_TOTAL - 1'd1)         
        cnt_h   <=  10'd0;     
    else  
        cnt_h   <=  cnt_h + 1'd1;
end
//Assign Horizontal Sync Signal
assign  hsync = (cnt_h  <=  H_SYNC - 1'd1) ? 1'b1 : 1'b0 ;
//Assign Horizontal Position
assign  pos_x = (pix_data_req == 1'b1) ? (cnt_h - (H_SYNC + H_BACK_PORCH)) : 10'h3ff; 

//-----------------------Vertical Counter-----------------------
reg     [9:0]   cnt_v;
//Counter to the whole vertical period
always@(posedge vga_clk or  negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)      
        cnt_v   <=  10'd0 ;     
    else if((cnt_v == V_TOTAL - 1'd1) &&  (cnt_h == H_TOTAL-1'd1))        
        cnt_v   <=  10'd0 ;    
    else if(cnt_h == H_TOTAL - 1'd1)        
        cnt_v   <=  cnt_v + 1'd1 ;    
    else       
        cnt_v   <=  cnt_v ;
end
//Assign Vertical Sync Signal
assign  vsync = (cnt_v  <=  V_SYNC - 1'd1) ? 1'b1 : 1'b0 ;
//Assign Vertical Position
assign  pos_y = (pix_data_req == 1'b1) ? (cnt_v - (V_SYNC + V_BACK_PORCH)) : 10'h3ff;

//Initialize the counters
initial begin
    cnt_h <= 0;
    cnt_v <= 0;
end

//RGB Valid Signal: Determine whether it is time to output rgb signal.
assign  rgb_valid = ((cnt_h >= H_SYNC + H_BACK_PORCH) && 
                     (cnt_h < H_SYNC + H_BACK_PORCH + H_VALID_STATE) &&
                     (cnt_v >= V_SYNC + V_BACK_PORCH) &&                    
                     (cnt_v < V_SYNC + V_BACK_PORCH + V_VALID_STATE)) ? 1'b1 : 1'b0;

//Pixel Data Request: A period ahead of the rgb_valid signal, a flag to request the pixel data.
assign  pix_data_req = (((cnt_h >= H_SYNC + H_BACK_PORCH - 1'b1)                     
                       && (cnt_h < H_SYNC + H_BACK_PORCH + H_VALID_STATE - 1'b1))
                       &&((cnt_v >= V_SYNC + V_BACK_PORCH)
                       && (cnt_v < V_SYNC + V_BACK_PORCH + V_VALID_STATE)))
                       ? 1'b1 : 1'b0;

assign  rgb = (rgb_valid == 1'b1) ? pix_data : 23'b0 ;

endmodule
