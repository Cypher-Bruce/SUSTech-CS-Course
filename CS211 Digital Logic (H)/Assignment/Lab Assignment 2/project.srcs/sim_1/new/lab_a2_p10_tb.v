`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 00:18:54
// Design Name: 
// Module Name: lab_a2_p10_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab_a2_p10_tb();
reg [3:0] in;
wire a2_p5_somin, a2_p5_pomax, a2_p6_more1, a2_p7_more1, a2_p8_more1, a2_p9_more1;
lab_a2_p5 p5(in[3], in[2], in[1], in[0], a2_p5_somin, a2_p5_pomax);
lab_a2_p6 p6(in, a2_p6_more1);
lab_a2_p7 p7(in, a2_p7_more1);
lab_a2_p8 p8(in, a2_p8_more1);
lab_a2_p9 p9(in, a2_p9_more1);
initial begin
    $monitor("%d %d %d %d %d %d %d", in, a2_p5_somin, a2_p5_pomax, a2_p6_more1, a2_p7_more1, a2_p8_more1, a2_p9_more1);
    in = 4'b0000;
    repeat(15) #10 in = in + 1;
    #10 $finish;
end
endmodule
