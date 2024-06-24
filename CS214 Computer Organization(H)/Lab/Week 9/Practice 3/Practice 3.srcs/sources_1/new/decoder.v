`timescale 1ns / 1ps

module decoder(
input [4:0] read_reg_1,
input [4:0] read_reg_2,
input [4:0] write_reg,
input [31:0] write_data,
input write_reg_flag,
input [31:0] inst,
input clk,
input rst_n,
output [31:0] read_data_1,
output [31:0] read_data_2,
output [31:0] imme
);

immediate_generator imme_gen(.inst(inst), .imme(imme));

reg [31:0] register [0:31];
assign read_data_1 = register[read_reg_1];
assign read_data_2 = register[read_reg_2];
    
always @(posedge clk)
begin
    if(!rst_n)
    begin
        register[0] <= 32'b0;
        register[1] <= 32'b0;
        register[2] <= 32'b0;
        register[3] <= 32'b0;
        register[4] <= 32'b0;
        register[5] <= 32'b0;
        register[6] <= 32'b0;
        register[7] <= 32'b0;
        register[8] <= 32'b0;
        register[9] <= 32'b0;
        register[10] <= 32'b0;
        register[11] <= 32'b0;
        register[12] <= 32'b0;
        register[13] <= 32'b0;
        register[14] <= 32'b0;
        register[15] <= 32'b0;
        register[16] <= 32'b0;
        register[17] <= 32'b0;
        register[18] <= 32'b0;
        register[19] <= 32'b0;
        register[20] <= 32'b0;
        register[21] <= 32'b0;
        register[22] <= 32'b0;
        register[23] <= 32'b0;
        register[24] <= 32'b0;
        register[25] <= 32'b0;
        register[26] <= 32'b0;
        register[27] <= 32'b0;
        register[28] <= 32'b0;
        register[29] <= 32'b0;
        register[30] <= 32'b0;
        register[31] <= 32'b0;
    end else begin
        if(write_reg_flag && write_reg != 0)
        begin
            register[write_reg] <= write_data;
        end
    end
end


endmodule
