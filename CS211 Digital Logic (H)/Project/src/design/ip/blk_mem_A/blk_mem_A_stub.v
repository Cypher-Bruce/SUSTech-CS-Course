// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Dec  7 23:30:34 2023
// Host        : Jaredan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Vivado_Project/Project/project_vga_v2/project_vga_v2.srcs/sources_1/ip/blk_mem_A/blk_mem_A_stub.v
// Design      : blk_mem_A
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module blk_mem_A(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[10:0],douta[23:0]" */;
  input clka;
  input ena;
  input [10:0]addra;
  output [23:0]douta;
endmodule
