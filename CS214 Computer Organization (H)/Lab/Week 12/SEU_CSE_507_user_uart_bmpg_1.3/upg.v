`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/12 08:40:58
// Design Name: 
// Module Name: upg
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


module upg(
	input			upg_clk_i,		// 10MHz
	input			upg_rst_i,		// High active
	// blkram signals
	output			upg_clk_o,
	output			upg_wen_o,
	output [14:0]	upg_adr_o,
	output [31:0]	upg_dat_o,
	output			upg_done_o,
	// UART Pinouts
	input			upg_rx_i,
	output			upg_tx_o
);

	uart_bmpg upg_inst (
		.upg_clk_i		(upg_clk_i),	// 10MHz
		.upg_rst_i		(upg_rst_i),	// High active
		// blkram signals
		.upg_clk_o		(upg_clk_o),
		.upg_wen_o		(upg_wen_o),
		.upg_adr_o		(upg_adr_o),
		.upg_dat_o		(upg_dat_o),
		.upg_done_o		(upg_done_o),
		// UART Pinouts
		.upg_rx_i		(upg_rx_i),
		.upg_tx_o		(upg_tx_o)
	);

endmodule
