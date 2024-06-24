`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/27 07:17:21
// Design Name: 
// Module Name: uart_bmpg
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


module uart_bmpg(
	input wire		upg_clk_i,			// 10MHz
	input wire		upg_rst_i,			// High active
	// blkram signals
	output wire		upg_clk_o,
	output reg		upg_wen_o,
	output reg [14:0]	upg_adr_o,
	output reg [31:0]	upg_dat_o,
	output reg		upg_done_o,
	// UART Pinouts
	input wire		upg_rx_i,
	output wire		upg_tx_o
);
		
endmodule
