// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Dec 23 11:29:15 2023
// Host        : Cypher_Bruce running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Cyphe/Documents/SUSTech Assignment/Term 3/Digital
//               Logic/Project/Repo/Electronic-Organ/src/design/ip/Welcome_page/Welcome_page_sim_netlist.v}
// Design      : Welcome_page
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Welcome_page,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Welcome_page
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "5" *) 
  (* C_COUNT_36K_BRAM = "22" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     17.15077 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Welcome_page.mem" *) 
  (* C_INIT_FILE_NAME = "Welcome_page.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "35000" *) 
  (* C_READ_DEPTH_B = "35000" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "35000" *) 
  (* C_WRITE_DEPTH_B = "35000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Welcome_page_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module Welcome_page_blk_mem_gen_generic_cstr
   (douta,
    ena,
    addra,
    clka);
  output [23:0]douta;
  input ena;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire [17:0]p_39_out;
  wire ram_douta;
  wire ram_ena;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[10].ram.r_n_9 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_9 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_9 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_9 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_9 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_9 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_18 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[22].ram.r_n_1 ;
  wire \ramloop[22].ram.r_n_2 ;
  wire \ramloop[22].ram.r_n_3 ;
  wire \ramloop[22].ram.r_n_4 ;
  wire \ramloop[22].ram.r_n_5 ;
  wire \ramloop[22].ram.r_n_6 ;
  wire \ramloop[22].ram.r_n_7 ;
  wire \ramloop[22].ram.r_n_8 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_8 ;
  wire \ramloop[24].ram.r_n_0 ;
  wire \ramloop[24].ram.r_n_1 ;
  wire \ramloop[24].ram.r_n_2 ;
  wire \ramloop[24].ram.r_n_3 ;
  wire \ramloop[24].ram.r_n_4 ;
  wire \ramloop[24].ram.r_n_5 ;
  wire \ramloop[24].ram.r_n_6 ;
  wire \ramloop[24].ram.r_n_7 ;
  wire \ramloop[24].ram.r_n_8 ;
  wire \ramloop[25].ram.r_n_0 ;
  wire \ramloop[25].ram.r_n_1 ;
  wire \ramloop[25].ram.r_n_2 ;
  wire \ramloop[25].ram.r_n_3 ;
  wire \ramloop[25].ram.r_n_4 ;
  wire \ramloop[25].ram.r_n_5 ;
  wire \ramloop[25].ram.r_n_6 ;
  wire \ramloop[25].ram.r_n_7 ;
  wire \ramloop[25].ram.r_n_8 ;
  wire \ramloop[26].ram.r_n_0 ;
  wire \ramloop[26].ram.r_n_1 ;
  wire \ramloop[26].ram.r_n_2 ;
  wire \ramloop[26].ram.r_n_3 ;
  wire \ramloop[26].ram.r_n_4 ;
  wire \ramloop[26].ram.r_n_5 ;
  wire \ramloop[26].ram.r_n_6 ;
  wire \ramloop[26].ram.r_n_7 ;
  wire \ramloop[26].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_9 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_9 ;

  Welcome_page_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[26].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[3].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13 (\ramloop[11].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14 (\ramloop[10].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15 (\ramloop[9].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16 (\ramloop[8].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17 (\ramloop[15].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18 (\ramloop[14].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19 (\ramloop[13].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\ramloop[5].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20 (\ramloop[12].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29 (\ramloop[21].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 (\ramloop[6].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30 (\ramloop[20].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31 (\ramloop[19].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32 (\ramloop[18].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33 (\ramloop[25].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34 (\ramloop[24].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35 (\ramloop[23].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36 (\ramloop[22].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 (\ramloop[7].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .DOADO({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .DOPADOP(\ramloop[16].ram.r_n_8 ),
        .addra(addra[15:10]),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .p_39_out(p_39_out));
  Welcome_page_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (\ramloop[7].ram.r_n_1 ),
        .clka(clka),
        .\douta[0] (ram_douta),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[10].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[14] (\ramloop[10].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[11].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[14] (\ramloop[11].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[12].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[14] (\ramloop[12].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[13].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[14] (\ramloop[13].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[14].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[14] (\ramloop[14].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[15].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\douta[14] (\ramloop[15].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.DOADO({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .DOPADOP(\ramloop[16].ram.r_n_8 ),
        .addra(addra[10:0]),
        .clka(clka),
        .ena(ena),
        .ram_ena(ram_ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[17].ram.r_n_18 ),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .p_39_out(p_39_out));
  Welcome_page_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[8].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\douta[23] (\ramloop[18].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[9].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\douta[23] (\ramloop[19].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[1] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 }),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[10].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\douta[23] (\ramloop[20].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[11].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\douta[23] (\ramloop[21].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\douta[23] (\ramloop[22].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[13].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\douta[23] (\ramloop[23].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[14].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 }),
        .\douta[23] (\ramloop[24].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized24 \ramloop[25].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[15].ram.r_n_9 ),
        .clka(clka),
        .\douta[22] ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\douta[23] (\ramloop[25].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized25 \ramloop[26].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[22] ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\douta[23] (\ramloop[26].ram.r_n_8 ),
        .ena(ena),
        .ram_ena(ram_ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (\ramloop[7].ram.r_n_1 ),
        .clka(clka),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (\ramloop[7].ram.r_n_1 ),
        .clka(clka),
        .\douta[2] (\ramloop[3].ram.r_n_0 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[17].ram.r_n_18 ),
        .clka(clka),
        .\douta[5] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 }),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (\ramloop[7].ram.r_n_1 ),
        .clka(clka),
        .\douta[3] (\ramloop[5].ram.r_n_0 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (\ramloop[7].ram.r_n_1 ),
        .clka(clka),
        .\douta[4] (\ramloop[6].ram.r_n_0 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[7].ram.r_n_1 ),
        .addra(addra),
        .clka(clka),
        .\douta[5] (\ramloop[7].ram.r_n_0 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[8].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[14] (\ramloop[8].ram.r_n_8 ),
        .ena(ena));
  Welcome_page_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[9].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[13] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[14] (\ramloop[9].ram.r_n_8 ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module Welcome_page_blk_mem_gen_mux
   (douta,
    p_39_out,
    DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    ena,
    addra,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36 );
  output [23:0]douta;
  input [17:0]p_39_out;
  input [7:0]DOADO;
  input [0:0]DOPADOP;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input ena;
  input [5:0]addra;
  input clka;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [5:0]addra;
  wire clka;
  wire [23:0]douta;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_3_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_3_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_3_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_3_n_0 ;
  wire \douta[16]_INST_0_i_1_n_0 ;
  wire \douta[16]_INST_0_i_2_n_0 ;
  wire \douta[16]_INST_0_i_3_n_0 ;
  wire \douta[17]_INST_0_i_1_n_0 ;
  wire \douta[17]_INST_0_i_2_n_0 ;
  wire \douta[17]_INST_0_i_3_n_0 ;
  wire \douta[18]_INST_0_i_1_n_0 ;
  wire \douta[18]_INST_0_i_2_n_0 ;
  wire \douta[18]_INST_0_i_3_n_0 ;
  wire \douta[19]_INST_0_i_1_n_0 ;
  wire \douta[19]_INST_0_i_2_n_0 ;
  wire \douta[19]_INST_0_i_3_n_0 ;
  wire \douta[20]_INST_0_i_1_n_0 ;
  wire \douta[20]_INST_0_i_2_n_0 ;
  wire \douta[20]_INST_0_i_3_n_0 ;
  wire \douta[21]_INST_0_i_1_n_0 ;
  wire \douta[21]_INST_0_i_2_n_0 ;
  wire \douta[21]_INST_0_i_3_n_0 ;
  wire \douta[22]_INST_0_i_1_n_0 ;
  wire \douta[22]_INST_0_i_2_n_0 ;
  wire \douta[22]_INST_0_i_3_n_0 ;
  wire \douta[23]_INST_0_i_1_n_0 ;
  wire \douta[23]_INST_0_i_2_n_0 ;
  wire \douta[23]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire ena;
  wire [17:0]p_39_out;
  wire [5:0]sel_pipe;
  wire [5:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [0]),
        .I2(sel_pipe_d1[4]),
        .I3(sel_pipe_d1[5]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[10]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[4]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[4]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [4]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [4]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [4]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [4]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [4]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [4]),
        .O(\douta[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[11]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[5]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[5]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [5]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [5]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [5]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [5]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [5]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [5]),
        .O(\douta[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[12]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[12]_INST_0_i_3_n_0 ),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[12]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[6]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[6]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [6]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [6]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [6]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [6]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [6]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [6]),
        .O(\douta[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[13]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[13]_INST_0_i_3_n_0 ),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[13]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[7]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[7]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [7]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [7]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [7]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [7]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [7]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [7]),
        .O(\douta[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[14]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[14]_INST_0_i_3_n_0 ),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[14]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[8]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOPADOP),
        .I5(sel_pipe_d1[3]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18 ),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19 ),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20 ),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14 ),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15 ),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16 ),
        .O(\douta[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[15]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[15]_INST_0_i_3_n_0 ),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[15]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[9]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [0]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [0]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [0]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [0]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [0]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [0]),
        .O(\douta[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[16]_INST_0 
       (.I0(\douta[16]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[16]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[16]_INST_0_i_3_n_0 ),
        .O(douta[16]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[16]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[10]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[16]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [1]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [1]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [1]),
        .O(\douta[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[16]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [1]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [1]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [1]),
        .O(\douta[16]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[17]_INST_0 
       (.I0(\douta[17]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[17]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[17]_INST_0_i_3_n_0 ),
        .O(douta[17]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[17]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[11]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[17]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [2]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [2]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [2]),
        .O(\douta[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[17]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [2]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [2]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [2]),
        .O(\douta[17]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[18]_INST_0 
       (.I0(\douta[18]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[18]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[18]_INST_0_i_3_n_0 ),
        .O(douta[18]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[18]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[12]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[18]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [3]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [3]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [3]),
        .O(\douta[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[18]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [3]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [3]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [3]),
        .O(\douta[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[19]_INST_0 
       (.I0(\douta[19]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[19]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[19]_INST_0_i_3_n_0 ),
        .O(douta[19]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[19]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[13]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[19]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [4]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [4]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [4]),
        .O(\douta[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[19]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [4]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [4]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [4]),
        .O(\douta[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [1]),
        .I2(sel_pipe_d1[4]),
        .I3(sel_pipe_d1[5]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[20]_INST_0 
       (.I0(\douta[20]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[20]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[20]_INST_0_i_3_n_0 ),
        .O(douta[20]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[20]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[14]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[20]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [5]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [5]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [5]),
        .O(\douta[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[20]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [5]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [5]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [5]),
        .O(\douta[20]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[21]_INST_0 
       (.I0(\douta[21]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[21]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[21]_INST_0_i_3_n_0 ),
        .O(douta[21]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[21]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[15]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[21]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [6]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [6]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [6]),
        .O(\douta[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[21]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [6]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [6]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [6]),
        .O(\douta[21]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[22]_INST_0 
       (.I0(\douta[22]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[22]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[22]_INST_0_i_3_n_0 ),
        .O(douta[22]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[22]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[16]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[22]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26 [7]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27 [7]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28 [7]),
        .O(\douta[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[22]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22 [7]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23 [7]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24 [7]),
        .O(\douta[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[23]_INST_0 
       (.I0(\douta[23]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[23]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[23]_INST_0_i_3_n_0 ),
        .O(douta[23]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[23]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[17]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .I5(sel_pipe_d1[3]),
        .O(\douta[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[23]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34 ),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35 ),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36 ),
        .O(\douta[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[23]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30 ),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31 ),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32 ),
        .O(\douta[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[4]),
        .I4(sel_pipe_d1[5]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[4]),
        .I4(sel_pipe_d1[5]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[4]),
        .I4(sel_pipe_d1[5]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[4]),
        .I4(sel_pipe_d1[5]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[6]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[0]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[0]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [0]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [0]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [0]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [0]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [0]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [0]),
        .O(\douta[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[7]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[1]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[1]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [1]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [1]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [1]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [1]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [1]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [1]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[8]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[2]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [2]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [2]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [2]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [2]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [2]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [2]),
        .O(\douta[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \douta[9]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(p_39_out[3]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(DOADO[3]),
        .I5(sel_pipe_d1[3]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10 [3]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11 [3]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12 [3]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [3]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7 [3]),
        .I4(sel_pipe_d1[2]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8 [3]),
        .O(\douta[9]_INST_0_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[4]),
        .Q(sel_pipe_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[5] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[5]),
        .Q(sel_pipe_d1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(ena),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clka),
        .CE(ena),
        .D(addra[4]),
        .Q(sel_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[5] 
       (.C(clka),
        .CE(ena),
        .D(addra[5]),
        .Q(sel_pipe[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width
   (\douta[0] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[0] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[0] (\douta[0] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized0
   (\douta[1] ,
    clka,
    ena,
    addra);
  output [1:0]\douta[1] ;
  input clka;
  input ena;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [1:0]\douta[1] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[1] (\douta[1] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized1
   (\douta[1] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[1] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[1] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[1] (\douta[1] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized10
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized11
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized12
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized13
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized14
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized15
   (DOADO,
    DOPADOP,
    clka,
    ram_ena,
    ena,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input ram_ena;
  input ena;
  input [10:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire ena;
  wire ram_ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ram_ena(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized16
   (p_39_out,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ena,
    addra);
  output [17:0]p_39_out;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire [17:0]p_39_out;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .p_39_out(p_39_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized17
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized18
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized19
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized2
   (\douta[2] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[2] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[2] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[2] (\douta[2] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized20
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized21
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized22
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized23
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized24
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized25
   (\douta[22] ,
    \douta[23] ,
    ram_ena,
    clka,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  output ram_ena;
  input clka;
  input ena;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire ram_ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena(ena),
        .ram_ena(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized3
   (\douta[5] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [3:0]\douta[5] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [3:0]\douta[5] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[5] (\douta[5] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized4
   (\douta[3] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[3] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[3] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[3] (\douta[3] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized5
   (\douta[4] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[4] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[4] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[4] (\douta[4] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized6
   (\douta[5] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [0:0]\douta[5] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [0:0]\douta[5] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[5] (\douta[5] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized7
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized8
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Welcome_page_blk_mem_gen_prim_width__parameterized9
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;

  Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init
   (\douta[0] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[0] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0AFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFC1C17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF),
    .INIT_10(256'h3E0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_12(256'hFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E01FFFFFFF),
    .INIT_13(256'hFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E02FFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F807FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFF9FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFF),
    .INIT_16(256'hFFFFFFFFF1FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFE0FFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87),
    .INIT_19(256'hFFFFFFF001FF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E02FFFFFFFF),
    .INIT_1A(256'hF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F00FFFFFFFFFFFFFFFE3FFFFFFFFC0007),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFC3F407FFFFFFFFFFFFFF80FFFFFFFF80FE3F1FFFFFFFFF),
    .INIT_1D(256'hFFFFFFFE2FC03FFFFFFFFFFFFFF007FFFFFFF01FF1F3FFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h05FFFFFFFF0FFFFF003FFFFFFE03FF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h3FFFE061FFFFFFE07FFCE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA),
    .INIT_20(256'hFFFC07FFE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FE01FFFFFFFE0),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C00FFFFFFFC01FFFE0F0FFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5E00FFFFFFF861FFFE0F8FFFFFFC07FFE4F),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFC1F80FFFFFFF8F0FFFF0F87FFFFFC07FFF1FFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFE0F007FFFFFF1F8FFFF07C7FFFFF807FFF3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h7FFFFFF1FC7FFF07C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFF87C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00),
    .INIT_27(256'hF807FF9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC07FFFFFF3FC7),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3801FFFFFF3FE3FFF83E1FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E01FFFFFF3FE3FFFC3E1FFFFF807FF3BFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFE2E00FFFFFF3FF1FFFC1E1FFFFF807FE7BFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFF9E01FFFFFFFFF1FFFE1E0FFFFF807FCFBFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFF8FFFF0F0FFFFF807F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF0F0FFFFF807F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E017),
    .INIT_2E(256'h03E7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA00FFFFFFFFF8FF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1007FFFFFFFFCFFFF8F07FFFF8),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE180BFFFFFFFFC7FFF8707FFFF803EFF7FFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFF8407FFFFFFFFC7FFFC707FFFF803CFE7FFFFFFFFFFFFFF7F),
    .INIT_32(256'hFFFFF8807FFFFFFFFE3FFFE307FFFF803DFCFFFFFFFFFFFFFFC1FFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFE3FFFE383FFFF803DFDFFFFFFFFFFFFFFC0FFFCFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hF183FFFF801CF3FFFFFFFFFFFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFF8801FF),
    .INIT_35(256'hE07FFFFFFFFFFFFFF803FF81FFFFFFFFFFFFFFFFFFFFFFFE603FFFFFFFFF3FFF),
    .INIT_36(256'hFFFFFF809FF80FFFFFFFFFFFFFFFFFF03FFFF802FFFFFFFFF1FFFF183FFFFC01),
    .INIT_37(256'h837FFFFFFFFFFFFFFFFC00FFFF801FFFF83FFF1FFFF883FFFFC01FDFFFFFFFFF),
    .INIT_38(256'hFFFFFFFF8007FFF801FFFE00FFF8FFFF801FFFFC01FFFFFFFFFFC1FFFFFC0DFF),
    .INIT_39(256'h1FFF800FFFC003FF8FFFFC01FFFFC01FFFFFFFFFF007FFFFC0EFF837FC1FFFFF),
    .INIT_3A(256'h001FF8FFFFE01FFFFC00FFFFFFFFFE001FFFFC0EFFC3BFC0FFFF87F0FFFFF1F0),
    .INIT_3B(256'h01FFFFC00FFFFFFFFFE000FFFFE077FC3DFC0FFFF03F07FFFF3FC0FFFD007FFC),
    .INIT_3C(256'hFFFFFFFE0007FFFE073FC3EFC0FFFE3DF83FFFF3FC0FFFE007FF8000FFC7FFFE),
    .INIT_3D(256'h3FFFE07BFC1EFE07FFE7EFC1FFFF3FE07FFF00FFF80007FC7FFFF01FFFFE00FF),
    .INIT_3E(256'hF7E07FFE7E7C0FFFF3FF03FFF003FF87C03FE3FFFF00FFFFE00FFFFFFFFFC000),
    .INIT_3F(256'hE07FFFBFF01FFF003FF87F01FE3FFFF80FFFFE00FFFFFFFFFC1E01FFFF03DFE1),
    .INIT_40(256'hFFF003FFC7F81FE1FFFF80FFFFE007FFFFFFFFE3F80FFFF03DFE1FBF07FFCFF7),
    .INIT_41(256'hC0FF1FFFFC07FFFF007FFFFFFFFE3FC07FFF03EFE0FBF03FFCFF3F03FFFFFF81),
    .INIT_42(256'h7FFFF007FFFFFFFFE3FE07FFF81F7F0FDF03FFCFFBF01FFFFFFC0FFF801FFC7F),
    .INIT_43(256'hFFFFFE3FF03FFF81F7F0FEF83FFC7F9F81FFFFFFC0FFFC03FFC7FC07F1FFFFC0),
    .INIT_44(256'hFFF81FBF0FEF81FFC7FDFC07FFFFFE0BFFC03FFE3FE07F8FFFFE03FFFF007FFF),
    .INIT_45(256'h780FFC7FDFC03FFFFFE03FFE01FFE3FF03F8FFFFE01FFFF007FFFFFFFFF1FF03),
    .INIT_46(256'h07FFFFFE05FFE01FFF1FF03FC7FFFE01FFFF803FFFFFDFFF1FF81FFFC0FDF87F),
    .INIT_47(256'hFE00FFF8FF83FC7FFFE00FFFF803FFFFFDFFF8FF81FFFC0FDF87F3C1FFE7FDFE),
    .INIT_48(256'h1FC7FFFF007FFF803FFFFFEFFFC7FC0FFFC0FEF87FBC0FFE7FDFE01FFFFFF01F),
    .INIT_49(256'hFFF803FFFFFEFFFE3FC0FFFC07F7C3FDC0FFE7FCFF03FFFFFF00FFE01FFFC7F8),
    .INIT_4A(256'hF7FFF9FE0FFFE07F7C3FCE0FFE3FCFF02FFFFFF01FFF01FFFE3FC1FE3FFFF007),
    .INIT_4B(256'hFE07FBC3FEE07FF3FCFF80FFFFFF80FFF80FFFF8FC1FE3FFFF063FFF801FFFFF),
    .INIT_4C(256'h03FF3FCFF81FFFFFF807FF80FFFFFFC0FF1FFFF021FFFC01FFFFFF7FFFE7E07F),
    .INIT_4D(256'h7FFFFF80FFF807FFFFFE0FF1FFFF031FFFC01FFFFFFBFFFFFE03FFE07FDC1FF6),
    .INIT_4E(256'h803FFFFFE0FF0FFFF038FFFC01FFFFFFBFFFFFF03FFE07FEE1FF303FF1FDFFC0),
    .INIT_4F(256'hF8FFFF03C7FFC01FFFFFFDFFFFFF07FFE03FE01FF801FF9FDFFC07FFFFF807FF),
    .INIT_50(256'hFE00FFFFFFDFFFFFF03FFF03FF01FFC07FF9FDFFC07FFFFF803FF803FFFFFE0F),
    .INIT_51(256'hFFFFFF03FFF03FF83FFC06FFCFDFFE03FFFFFC11FFC0DFFFFFE0FF8FFFF03C3F),
    .INIT_52(256'h03FFE7FFE077FCF9FFE03FFFFFC01FFC05FFFFFE0FFC7FFF01E3FFE00FFFFFFE),
    .INIT_53(256'hFFE7BFFE05FFFFFC00FF806FFFFFE07FC7FFF01F1FFE00FFFFFFFFFFFFF01FFF),
    .INIT_54(256'hFFFFC0D7FE03FFFFFE07FE3FFF01F0FFE00FFFFFFF7FFFFF02FFF03FFFFFFF0F),
    .INIT_55(256'h77FFFFE07FE3FFF01F87FF00FFFFFFFBFFFFF02FFF03FFFFFFFFFBFE73FFE07F),
    .INIT_56(256'h1FFF03FC3FF00FFFFFFFBFFFFF037FF03FFFFFFFFFDFF37FFE06FFFFFC0EFFE0),
    .INIT_57(256'h007FFFFFFDFFFFF03FFF03FFFFFFFFFEFF87FFE077FFFFC0E3FC07BFFFFE0FFF),
    .INIT_58(256'hFFFF07BFF03FFFFFFFFFF7F8FFFE07BFFFFC1E5FC03DFFFFE0FFF1FFF03FE3FF),
    .INIT_59(256'hFFFFFFFFFFBF8FFFE07BFFFFC1E9FE03DFFFFE0FFF8FFF03FE1FF007FFFFFFEF),
    .INIT_5A(256'h607FFE07DFFFFC1F1FE07EFFFFE0FFF8FFF03FF0FF007FFFFFFF7FFFF07DFF03),
    .INIT_5B(256'hFF81F17F03F7FFFC1FFFC7FE03FF87F00FFFFFFFF7FFFF07CFF03FFFFFFFFFFC),
    .INIT_5C(256'hBFFFC1FFFC3FE07FFC3F00FFFFFFFFBFFFF07EFF03FFFFFFFFFFF063FFE07EFF),
    .INIT_5D(256'hFC07FFE1F00FFFFFFFFDFFFE0FF7F03FFFFFFFFFFFFF1FFC0FF7FFF83F87E03F),
    .INIT_5E(256'hFFFFFFFFE7FFC0FF1E03FFFFFFFFFFFFF8FFC0FFBFFF03FC3E07FDFFF83FFFE1),
    .INIT_5F(256'hFC1FF8007FFFFFFFFFFFFFC7F80FFCFFE07FD1E03FE7FF03FFFF0700FFFF0E00),
    .INIT_60(256'hFFFFFFFFFFFE1F01FFE3FC0FFE8F0FFF1FE07FFFF8000FFFF8001FFFFFFFFF3F),
    .INIT_61(256'hF0003FFF0001FFF040FFF8300FFFFFC001FFFFC001FFFFFFFFF8FF03FFC007FF),
    .INIT_62(256'h3FFFA017FFE003FFFFFE003FFFFE003FFFFFFFFFC1807FFE00FFFFFFFFFFFFFF),
    .INIT_63(256'h80FFFFFFF80FFFFFF807FFFFFFFFFF001FFFF01FFFFFFFFFFFFFFFC007FFFC00),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFC07FFFF83FFFFFFFFFFFFFFFF01FFFFF00FFFFD00FFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFF3),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[0] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0
   (\douta[1] ,
    clka,
    ena,
    addra);
  output [1:0]\douta[1] ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2_n_0 ;
  wire [15:0]addra;
  wire clka;
  wire [1:0]\douta[1] ;
  wire ena;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\douta[1] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0008)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2 
       (.I0(ena),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[1] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[1] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[1] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFE002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFE1C17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF),
    .INIT_10(256'h3E0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_12(256'hFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E03FFFFFFF),
    .INIT_13(256'hFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F80FFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFE8FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFF),
    .INIT_16(256'hFFFFFFFFF87C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFE0FFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87),
    .INIT_19(256'hFFFFFFF001FF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F00FFFFFFFF),
    .INIT_1A(256'hF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E00FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F807FFFFFFFFFFFFFFE3FFFFFFFFC0007),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFF1FC0BFFFFFFFFFFFFFF80FFFFFFFF80FE3F1FFFFFFFFF),
    .INIT_1D(256'hFFFFFFFF3F803FFFFFFFFFFFFFF007FFFFFFF01FF1F3FFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h01FFFFFFFF0FFFFF003FFFFFFE03FF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h3FFFE061FFFFFFE07FFCE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FE),
    .INIT_20(256'hFFFC07FFE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47C03FFFFFFFE0),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F00FFFFFFFC01FFFE0F0FFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F00FFFFFFF861FFFE0F8FFFFFFC07FFE4F),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFE3F807FFFFFF8F0FFFF0F87FFFFFC07FFF1FFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFF0F007FFFFFF1F8FFFF07C7FFFFF807FFF3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h3FFFFFF1FC7FFF07C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFF87C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0700),
    .INIT_27(256'hF807FF9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C03FFFFFF3FC7),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C07FFFFFF3FE3FFF83E1FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE5C03FFFFFF3FE3FFFC3E1FFFFF807FF3BFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFF3E01FFFFFF3FF1FFFC1E1FFFFF807FE7BFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFF1E01FFFFFFFFF1FFFE1E0FFFFF807FCFBFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFF8FFFF0F0FFFFF807F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF0F0FFFFF807F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87007),
    .INIT_2E(256'h03E7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF00FFFFFFFFF8FF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC780FFFFFFFFFCFFFF8F07FFFF8),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF3003FFFFFFFFC7FFF8707FFFF803EFF7FFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFF1807FFFFFFFFC7FFFC707FFFF803CFE7FFFFFFFFFFFFFF7F),
    .INIT_32(256'hFFFFF8807FFFFFFFFE3FFFE307FFFF803DFCFFFFFFFFFFFFFFC1FFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFE3FFFE383FFFF803DFDFFFFFFFFFFFFFFC0FFFCFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hF183FFFF801CF3FFFFFFFFFFFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFFA801FF),
    .INIT_35(256'hE07FFFFFFFFFFFFFF803FF81FFFFFFFFFFFFFFFFFFFFFFFE601FFFFFFFFF3FFF),
    .INIT_36(256'hFFFFFF809FF80FFFFFFFFFFFFFFFFFF03FFFF002FFFFFFFFF1FFFF183FFFFC01),
    .INIT_37(256'h837FFFFFFFFFFFFFFFFC00FFFF000FFFF83FFF1FFFF883FFFFC01FDFFFFFFFFF),
    .INIT_38(256'hFFFFFFFF8007FFF801FFFE00FFF8FFFF801FFFFC01FFFFFFFFFFC1FFFFFC0DFF),
    .INIT_39(256'h1FFF800FFFC003FF8FFFFC01FFFFC01FFFFFFFFFF007FFFFC0EFF837FC1FFFFF),
    .INIT_3A(256'h001FF8FFFFE01FFFFC00FFFFFFFFFE001FFFFC0EFFC3BFC0FFFF87F0FFFFF1F0),
    .INIT_3B(256'h01FFFFC00FFFFFFFFFE000FFFFE077FC3DFC0FFFF03F07FFFF3FC0FFFD00FFFC),
    .INIT_3C(256'hFFFFFFFE0007FFFE073FC3EFC0FFFE3DF83FFFF3FC0FFFF80FFF8000FFC7FFFE),
    .INIT_3D(256'h3FFFE07BFC1EFE07FFE7EFC1FFFF3FE07FFF007FF80007FC7FFFF01FFFFE00FF),
    .INIT_3E(256'hF7E07FFE7E7C0FFFF3FF03FFF007FF87C03FE3FFFF00FFFFE00FFFFFFFFFC000),
    .INIT_3F(256'hE07FFFBFF01FFF803FF87F01FE3FFFF80FFFFE00FFFFFFFFFC1E01FFFF03DFE1),
    .INIT_40(256'hFFF407FFC7F81FE1FFFF80FFFFE007FFFFFFFFE3F80FFFF03DFE1FBF07FFCFF7),
    .INIT_41(256'hC0FF1FFFFC07FFFF007FFFFFFFFE3FC07FFF03EFE0FBF03FFCFF3F03FFFFFF81),
    .INIT_42(256'h7FFFF007FFFFFFFFE3FE07FFF81F7F0FDF03FFCFFBF01FFFFFFC0FFFC01FFC7F),
    .INIT_43(256'hFFFFFE3FF03FFF81F7F0FEF83FFC7F9F81FFFFFFC0FFF803FFC7FC07F1FFFFC0),
    .INIT_44(256'hFFF81FBF0FEF81FFC7FDFC0FFFFFFE0BFFC01FFE3FE07F8FFFFE03FFFF007FFF),
    .INIT_45(256'h781FFC7FDFC07FFFFFE07FFE01FFE3FF03F8FFFFE01FFFF007FFFFFFFFF1FF03),
    .INIT_46(256'h07FFFFFE03FFC01FFF1FF03FC7FFFE01FFFF803FFFFFDFFF1FF81FFFC0FDF87F),
    .INIT_47(256'hFE00FFF8FF83FC7FFFE00FFFF803FFFFFDFFF8FF81FFFC0FDF87F3C1FFE7FDFE),
    .INIT_48(256'h1FC7FFFF007FFF803FFFFFEFFFC7FC0FFFC0FEF87FBC07FE7FDFE01FFFFFF03F),
    .INIT_49(256'hFFF803FFFFFEFFFE3FC0FFFC07F7C3FDC07FE7FCFF01FFFFFF03FFF01FFFC7F8),
    .INIT_4A(256'hF7FFF9FE0FFFE07F7C3FCE0FFE3FCFF03FFFFFF00FFF01FFFE3FC1FE3FFFF007),
    .INIT_4B(256'hFE07FBC3FEE03FF3FCFF81FFFFFF80FFE80FFFF8FC1FE3FFFF063FFF801FFFFF),
    .INIT_4C(256'h03FF3FCFF80FFFFFF807FF80FFFFFFC0FF1FFFF021FFFC01FFFFFF7FFFE7E07F),
    .INIT_4D(256'h7FFFFF80FFF007FFFFFE0FF1FFFF031FFFC01FFFFFFBFFFFFE07FFE07FDC1FF6),
    .INIT_4E(256'h803FFFFFE0FF0FFFF038FFFC01FFFFFFBFFFFFF03FFE07FEE1FF303FF1FDFFC0),
    .INIT_4F(256'hF8FFFF03C7FFC01FFFFFFDFFFFFF03FFE03FE01FF801FF9FDFFC07FFFFF807FF),
    .INIT_50(256'hFE00FFFFFFDFFFFFF03FFF03FF01FFC07FF9FDFFC07FFFFF803FF803FFFFFE0F),
    .INIT_51(256'hFFFFFF03FFF03FF83FFC06FFCFDFFE03FFFFFC1BFFC0DFFFFFE0FF8FFFF03C3F),
    .INIT_52(256'h03FFE7FFE077FCF9FFE03FFFFFC02FFC01FFFFFE0FFC7FFF01E3FFE00FFFFFFE),
    .INIT_53(256'hFFE7BFFE01FFFFFC05FFC06FFFFFE07FC7FFF01F1FFE00FFFFFFFFFFFFF01FFF),
    .INIT_54(256'hFFFFC0CFFE07FFFFFE07FE3FFF01F0FFE00FFFFFFF7FFFFF02FFF03FFFFFFF0F),
    .INIT_55(256'h37FFFFE07FE3FFF01F87FF00FFFFFFFBFFFFF02FFF03FFFFFFFFFBFE73FFE07F),
    .INIT_56(256'h1FFF03FC3FF00FFFFFFFBFFFFF037FF03FFFFFFFFFDFF37FFE06FFFFFC0C7FC0),
    .INIT_57(256'h007FFFFFFDFFFFF03FFF03FFFFFFFFFEFF87FFE077FFFFC0C7FE07BFFFFE0FFF),
    .INIT_58(256'hFFFF07BFF03FFFFFFFFFF7F8FFFE07BFFFFC1F1FC07DFFFFE0FFF1FFF03FE3FF),
    .INIT_59(256'hFFFFFFFFFFBF8FFFE07BFFFFC1F9FE03DFFFFE0FFF8FFF03FE1FF007FFFFFFEF),
    .INIT_5A(256'h607FFE07DFFFFC1F3FF03EFFFFE0FFF8FFF03FF0FF007FFFFFFF7FFFF07DFF03),
    .INIT_5B(256'hFF81F17E07F7FFFC1FFFC7FE03FF87F00FFFFFFFF7FFFF07CFF03FFFFFFFFFFC),
    .INIT_5C(256'hBFFFC1FFFC3FE07FFC3F00FFFFFFFFBFFFF07EFF03FFFFFFFFFFF063FFE07EFF),
    .INIT_5D(256'hFC07FFE1F00FFFFFFFFDFFFE0FF7F03FFFFFFFFFFFFF1FFC0FF7FFF83F87E03F),
    .INIT_5E(256'hFFFFFFFFE7FFC0FF1E03FFFFFFFFFFFFF8FFC0FFBFFF03FE3E03FDFFF83FFFE1),
    .INIT_5F(256'hFC1FF8007FFFFFFFFFFFFFC7F80FFCFFE07FF3E07FE7FF03FFFF0700FFFF0E00),
    .INIT_60(256'hFFFFFFFFFFFE1F01FFE3FC0FFE9E0FFF1FE07FFFF8000FFFF8001FFFFFFFFF3F),
    .INIT_61(256'hF0003FFF0001FFF0C07FF8300FFFFFC001FFFFC001FFFFFFFFF8FF03FFC007FF),
    .INIT_62(256'h3FFFC01FFFE003FFFFFE003FFFFE003FFFFFFFFFC1807FFE00FFFFFFFFFFFFFF),
    .INIT_63(256'h80FFFFFFF80FFFFFF807FFFFFFFFFF001FFFF01FFFFFFFFFFFFFFFC007FFFC00),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFC07FFFF83FFFFFFFFFFFFFFFF01FFFFF00FFFFC01FFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF3),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[1] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE3007FFFFFFFFC7FFF0203FFFF001E7E3FFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFF0807FFFFFFFF87FFF8307FFFF001C7C3FFFFFFFFFFFFFEFF),
    .INITP_02(256'hFFFFFCC03FFFFFFFFC3FFFC103FFFF0038FC7FFFFFFFFFFFFFC0FFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFE1FFFE103FFFF8018F8FFFFFFFFFFFFFF80FFFB7FFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hE001FFFF801C60FFFFFFFFFFFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFFC001FF),
    .INITP_05(256'hE01FFFFFFFFFFFFFF801FF00FFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFE1FFF),
    .INITP_06(256'hFFFFFF809FF807FFFFFFFFFFFFFFFFF01FFFF001FFFFFFFFF0FFFE083FFFF800),
    .INITP_07(256'h007FFFFFFFFFFFFFFFF8007FFF000FFFF85FFE1FFFF001FFFF800E87FFFFFFFF),
    .INITP_08(256'hFFFFFFFF8003FFFC01FFFC007FF0FFFF801FFFFC01FFFFFFFFFFC2FFFFF80DFF),
    .INITP_09(256'h1FFFE00FFFC003FF8FFFFC01FFFF800FFFFFFFFFF007FFFFC0C7F023FC1FFFFB),
    .INITP_0A(256'h000FF87FFFC00FFFF800FFFFFFFFFE000FFFFC047F81BFC07FFF87F07FFFF0E0),
    .INITP_0B(256'h01FFFFC007FFFFFFFFE000FFFFC067F838F80FFFF01E07FFFF1F00FFFE007FFC),
    .INITP_0C(256'hFFFFFFFC0007FFFE073F81CFC07FFE08F81FFFE1F807FFF00FFF8000FFC3FFFE),
    .INITP_0D(256'h3FFFC039FC1C7C03FFE78F80FFFE3FE07FFF007FF80007F83FFFE00FFFFC00FF),
    .INITP_0E(256'hE3C07FFC7C3807FFF3FE01FFF003FF81001FC3FFFE00FFFFE00FFFFFFFFFC000),
    .INITP_0F(256'hE07FFF3FF01FFF807FF87C01FE3FFFF007FFFC007FFFFFFFFC1A01FFFE018FC0),
    .INIT_00(256'h4C7FFFFFFFFFFFAC00CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E000000000000000000DEFFFFFF0D00),
    .INIT_02(256'h002FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E000000003EFF6E00000000003EFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D0000),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFBA000069FF86000000000000000483FFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0E61CD6FFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFF7E0000000000000000000EFFFF0F0000CEFFFFFFFFFF8E00009EFFFF),
    .INIT_0B(256'hFFFFFFFFFFEC0000006CEF2F00000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE0000008DFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h0600004ACB2400000000000000FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFF8F90000000101EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h00003DFFFF0E009CFFFFFFFFFF7F5000ACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h00000000004CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00000000000000),
    .INIT_15(256'hFFFFFFFFFFEF6C000020BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0C0000007ECF),
    .INIT_16(256'h007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6100101F51000000000000),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h00000000BDFFFFFFFFFFFFFFFFFFFFFFFFCE01213EDFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000),
    .INIT_1C(256'h6F9C001C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFF3F0000000000000000006CFFFF1E00ECFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0000008CEF5C00000000005FFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0000002EFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFE3D8006C520000000000000000F2FFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFF7F10000000801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0000000000000000EDFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hBF00000000000000000000AFFF3F0010DEFFCF2E40000CAEFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFBF5C0000005EEC00000000007EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0C00009CFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'h00EC1C0000000000000085FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFAF3F5FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F70),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFF0F000000000000000000BEFFFFFFFFFFFFFFFFFF5E000000000020AE),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFDD0000200000004CDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h0000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C000000000000000000CE),
    .INIT_31(256'hFFFFFF1D000000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E0000005C4D000000),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h00B00E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F240000000000000000003CE3),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FDD80000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h0D00408FFFFFFFFFFFFFFFFFFD00000000000010AEFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF00000000000010),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFCC0000000000000000000EFFFFFFBE0D2C009C0EBFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFDC0000004C0000000000BCFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFF5F6D50000040216EDFFFFFFFFFFFFFFFFFFFFFFFAE0000003DFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFF9600000000000000000000C6FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF0E200000000000000000200EEFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h7E00000000003C0C201FFFFFFFFFFFFFFFCF7F7F7F5FAFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF8C0000000000001F1D004DFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAD70000030013EAFFFFFFFFFFFFFFF),
    .INIT_42(256'h000000000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'h1F00000000000000000010DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D0000),
    .INIT_44(256'h3EDFFFFFFFFFFFFFFFFFFFEF5C0000108FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'h000000000000006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE100000000000000060),
    .INIT_46(256'hFD000000000000000000000000DC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD10000),
    .INIT_47(256'h0FFFFFFFFFFFFFFFFF7F7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFF8D0000000010ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9DDD),
    .INIT_49(256'hFFCD000000000000BD8F2C00CEFFFFFFFFFFFFFFFE00000000007FAE007CBFFF),
    .INIT_4A(256'hFFFFFF0F400000000000000020BDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E0000000000000000004CFFFFFFFF),
    .INIT_4D(256'hDD000000DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D0000000000000000002F),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFF2F1000000000000000000000A01FFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'h0000805FFFFFFFFFFFFFFFFFFFFFFFFFFFF321000000000000000030DFFFFFFF),
    .INIT_50(256'h5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F1000001C6DFDBD7C00000000),
    .INIT_51(256'hEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4D000000002D9FFFFFFFFF6F90000020),
    .INIT_52(256'h7CCFFFFFFFFFFFFFCF0C00000000EEFFDD005DFFFFFFFFFFFF5D000000000000),
    .INIT_53(256'h000050AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000000000006CFF2E00),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F400000000000000000),
    .INIT_55(256'hFFFFFFFFFFBE000000000000000000008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFF9F2C00000000000000004EFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h00000000000000000000104EFFFFFFFFFFFFFFFF7F0000005CEFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFC38C0000000000000000BAFFFFFFFFFFFFFFFFFFFFFFFF2D0000),
    .INIT_59(256'hFFFFFFFFFFFFFFCD00003C4FFFFFFFEF3E0C0000000000609FFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFDD0000000000009C7FFFFFFF7E00000000007DCFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'h0000ADFFEFBC009EFFFFFFFFFF4E0000000000008DFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFF5C0000000000000FEFAC00DDFFFFFFFFFFFFFFDC0000),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFDD00000000000000000000000000BDEFFFFFFFFFFFFF),
    .INIT_5E(256'h00000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'h000000000000006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F000000000000),
    .INIT_60(256'hBDFFFFFFFFFFFFFFFF1D0000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00),
    .INIT_61(256'h0000000079FFFFFFFFFFFFFFFFFFFFFFDF200000000000000000000000000000),
    .INIT_62(256'hFFFFFFFFFF8E000000000000ACCFFFFFFFFFFFFFFFFFFFFFFFFFFF1B08000000),
    .INIT_63(256'hCFFFFFFF1D0000000000ECCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC00002EFF),
    .INIT_64(256'hFF8F0000000000004CEFFFFFFFFFFFFFFFFFFFFFFFFF7F100000CC3E9D0C009C),
    .INIT_65(256'h0000000000ADFF1F00105FFFFFFFFFFFFF0E000000007CFFFF5F1C408FFFFFFF),
    .INIT_66(256'h000000000000000000000000004DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D00),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C00),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C000000000000000000EDFFFFFFFFFFFFFF),
    .INIT_69(256'h00ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6C00000000000000ACFFFFFFFF),
    .INIT_6A(256'hFFFFFFFF7F00000000000000000000000000000000CDFFFFFFFFFFFFFFAE0000),
    .INIT_6B(256'h006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000044EFFFFFFFFFFFFF),
    .INIT_6C(256'hBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC00004FFFFFFFFFFFFFFF9D0000000000),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFCD00002DEFFFFFFE2C007DFFFFFF9F4C0000000000EC),
    .INIT_6E(256'hFFFFFFFFFF8F00000000005FFFFF2E00FCFFFFFFFFFFEC000000000000EEFFFF),
    .INIT_6F(256'h00004DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE0000000000004CEFFF8D00FCFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_71(256'hFFFF4D0000000000000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFF7E0000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h9EEC00000000000000006EFFFFFFFFFFFFEF5C0000004FFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFF020000000000000000FAFFFFFFFFFFFFFFFFFFFF7F000000001C4E6F),
    .INIT_75(256'hFFFFFF6D00005FFFFFFFFFFFFFFFDF9C000000000000AEFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'h005FFFFFFFFF3E0000DEFFFFFFCE000000000000CCDFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFEFDC004EFFFFFFFF3E0000000000009DFFFFFFFFFFFFFFFFFFFFFFFF6C00),
    .INIT_78(256'hFFFFFFFFFFFFEF3C000000000000EEFFBF6C008EFFFFFFFFFFFFEC000000001E),
    .INIT_79(256'hFFFFFFFFFFFF0000000000DD5FCE3D0000000000000000DDFFFFFFFFFFFFFFFF),
    .INIT_7A(256'h3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h00000000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E000000000000000000),
    .INIT_7C(256'hFFFFFFFFFFFFDD0000009DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC000000),
    .INIT_7D(256'h00D1FFFFFFFFFFFFFFFFFFFFAF00000000DDFFFFFFFF7E2C000000000000103F),
    .INIT_7E(256'hFFFFFF1F00000000000050BFFFFFFFFFFFFFFFFFFFFFFFFF1B00000000000000),
    .INIT_7F(256'hFFFF9D0000000000006DFFFFFFFFFFFFFFFFFFFFFFFFFF7F9C002FFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF803FF83F00FE1FFFF00FFFFE007FFFFFFFFC3E007FFF038FC0F3E03FFC7E3),
    .INITP_01(256'h80FF0FFFFC07FFFE003FFFFFFFFC3F807FFE01EFE0FBF03FFC7E1E01FFFFFF81),
    .INITP_02(256'h7FFFF007FFFFFFFFE3FC07FFF00E7E078E03FFC7F3E01FFFFFF80FFFC03FFC3F),
    .INITP_03(256'hFFFFFE1FE01FFF81E3E0FCF01FFC7F1F80FFFFFFC0FFF801FF83F807E0FFFFC0),
    .INITP_04(256'hFFF00F9F07EF81FFC7F8F80FFFFFFC07FFC03FFC3FE07F07FFFC01FFFE007FFF),
    .INITP_05(256'h301FFC3F8F803FFFFFE07FFE01FFC1FE03F8FFFFE01FFFF003FFFFF9FFE0FE01),
    .INITP_06(256'h07FFFFFC03FFC01FFF0FE03F87FFFC01FFFF003FFFFFCFFF0FF00FFF80F9F07E),
    .INITP_07(256'hFE00FFF0FF01FC7FFFE007FFF001FFFFF8FFF8FF81FFF8078F87E380FFC3FDFC),
    .INITP_08(256'h0F83FFFE007FFF803FFFFFCFFF83FC0FFF807E783FBC07FE7F8FC03FFFFFE01F),
    .INITP_09(256'hFFF001FFFFFCFFFE1F807FFC07E783F8C0FFC3F8FE03FFFFFF01FFF01FFF87F0),
    .INITP_0A(256'hE7FFE1FC07FFC03E3C1F8C07FE3FCFE01FFFFFE00FFE00FFFE1F81FC1FFFE007),
    .INITP_0B(256'hFE07FB81FE407FE3FCFF01FFFFFF00FFF007FFF88C0FC1FFFF001FFF801FFFFF),
    .INITP_0C(256'h03FF1F8FF00FFFFFF807FF007FFFD000FE1FFFE001FFF801FFFFFE7FFFC4407F),
    .INITP_0D(256'hFFFFFF007FF003FFFFFC07F1FFFE010FFFC00FFFFFF3FFFE8203FFC07F8C1FE6),
    .INITP_0E(256'h803FFFFFC0FF0FFFF030FFF801FFFFFF3FFFFFE07FFC03FC40FE003FF1F8FF80),
    .INITP_0F(256'hF07FFF0183FFC00FFFFFF9FFFFFF03FFE03FC40FF001FF1F8FFC07FFFFF803FF),
    .INIT_00(256'h00000000006CFFFFFFFFFFFFFFFFFFFFFFDF00004CFFFFFFFFFFEFAC00BCFFFF),
    .INIT_01(256'h00008DFFFFCE005CBFFFFFFFFFFF3E00000000FCFFFFFF3F0C308FFFFFFF9F0C),
    .INIT_02(256'hFFFFFFFE5C00000000000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D00000000),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C0000003DFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFF3F000000000000000000006FFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000BDFFFFFFFFFFFFFF),
    .INIT_06(256'hFF3C0000007EFFFFFFFFFF4F5C0000000000009CDFFFFFFFFFFF7F00000030BF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFF34800000000000000A8FFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFF7D000000000000BD),
    .INIT_09(256'hFFFFFFFFFF7F00007CFFFFFFFFFFFFBE0000FEFFFFFFCF7C0000000000001EFF),
    .INIT_0A(256'hFFFF8F0000000010BFFFFFFFFD002DFFFFFFFF0D0000000000000FFFFFFFFFFF),
    .INIT_0B(256'h408FFFFFFFFFFFFFFFFFFFFFFFFFFFBE0000000000004CEFFFFF4D00BDFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC000000FDFFFFFFFFFF9F9C000000000000),
    .INIT_0D(256'h000000000000000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFF1D000000000000105FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C),
    .INIT_0F(256'h5F2C000000000000FDFFFFFFFFFFFF1D0000004EFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFF89000000000000000093FFFFFFFFFFFFFFFFFFFF4D0000001EFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFF8F1C0000000000206FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFAC006DFFFFFFFFFE000000000000103FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hEFBC007EFFFFFF7E000000000000BDFFFFFFFFFFFFFFFFFFFF1F00007CFFFFFF),
    .INIT_14(256'hFFFFFFCF1C000000000000FEFFFFAF4C102FFFFFFFFFFFEC000000009EFFFFFF),
    .INIT_15(256'hFFFFED0000006DFFFFFFFFFFFF9F8C0000000000005DFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D000000000000000000CDFFFF),
    .INIT_18(256'hFFFFFFAE000000ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFF9E000000DCFFFFFFFFFFFFFFDE000000000000207FFFFF),
    .INIT_1A(256'hFFAD000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFC600000000000000007EFF),
    .INIT_1B(256'h7D000000000000BCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h00006CFFFFFFFFFFFFFFFFFFFF7F000030FFFFFFFFFFFFFF3E0030DFFFFFFFFF),
    .INIT_1D(256'hFFFFFFAE00DCEFFFFFFFFF3E000000006DFFFFFFFF1F0C408FFFFFCF1C000000),
    .INIT_1E(256'hFFFF4F2C000000000000FEFFFFFFFFFFFFFFFFFFFFFFFFFF3D000000000000BD),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0000004CEFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFF2E0000000000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C000000000000008EFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'h00003FFFFFFFFFFFFFFFAD0000000000007DFFFFFFFFFFEF5C000000FEFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFDF300000000000000075FFFFFFFFFFFFFFFFFFFFDF5C00),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0C00000000001C33FFFF),
    .INIT_25(256'hFF7F000000AFFFFFFFFFFFFFAF0C00FEFFFFFFFFAF4C000000000000C9FFFFFF),
    .INIT_26(256'h000000004CEFFFFFFFFFCD002DFFFFFF5D0000000000000FFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFF8E0000000000007CFFFFFFFF4D003EFFFFFFFF8F),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFC0000008EFFFFFFFFFFFFFF4E000000000000FCFF),
    .INIT_29(256'h00000000003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEF),
    .INIT_2A(256'hFFFF7D0000000000000050AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F00000000),
    .INIT_2B(256'h0000000000108FFFFFFFFFFFFD0000004DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h00000000000070FFFFFFFFFFFFFFFFFFFFFF6E000000FCFFFFFFFFFFFFFFCF6C),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFF2D000000000000A9FFFFFFFFFFFFFFFFFFFFFFFF5D00),
    .INIT_2E(256'hFFDC000EFFFFFFFFFF6E00000000000000FAFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'h007EFFFFBE000000000000B9FFFFFFFFFFFFFFFFFFEF000000FEFFFFFFFFFFFF),
    .INIT_30(256'hAF0C0000000000004FFFFFFFAF4C307FFFFFFFFFBC000000000FFFFFFFFFDF7C),
    .INIT_31(256'h0000007CDFFFFFFFFFFFFFFFDC000000000000FEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D00AEFFFFFFFFFFFFFFFFFFFFFF0F),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1C0000000000000000006FFFFFFFFFFF),
    .INIT_34(256'h8F0C0000108FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E00000000000000004D),
    .INIT_35(256'hFFFFFFFFFFFFFF1D0000004EFFFFFFFFFFFFFF7E000000000000DDFFFFFFFFFF),
    .INIT_36(256'h000000000024DBFFFFFFFFFFFFFFFFFFFFFFA600000000000000006FFFFFFFFF),
    .INIT_37(256'h00000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE00),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFAC00004EFFFFFFFFFFFFFFBD003DFFFFFFFFFFEFBC00),
    .INIT_39(256'hFFAE00FCFFFFFFFFFD00000000DDFFFFFFFFFFFE00408FFFEF4C00000000004C),
    .INIT_3A(256'h2F0000000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFEC0000000000001EFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFCE00ECFFFFFFFFFFFFFFFFFFFFFFFFBD000000BDFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFC0000000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFF3F000000000000000000AEFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'h0FFFFFFFFFFFFFEF8C00000000004CEFFFFFFFFFFF2D000000EDFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFCF200000000000000072FFFFFFFFFFFFFFFFFFFFFFAF9C000010),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4C0000000000003AFFFFFFFFFF),
    .INIT_41(256'h008DFFFFFFFFFFFFFF7E009CFFFFFFFFFFFFDE0000000000000053FFFFFFFFFF),
    .INIT_42(256'h008CFFFFFFFFFFFF8D002DFFFFAD000000000000C6FFFFFFFFFFFFFFFFFF4D00),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFF0E000000000000FCFFFFFFFFFF4D004EFFFFFF3F000000),
    .INIT_44(256'hFFFFFFFFFFFFFFFFEFEC0000007EFFFFFFFFFFFFFF3D0000000000108FFFFFFF),
    .INIT_45(256'h0000BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C002FFFFFFF),
    .INIT_46(256'h0000000000000000508FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD00000000000000),
    .INIT_47(256'h000000EEFFFFFFFFFFDE0000005CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF1C),
    .INIT_48(256'h0000006DFFFFFFFFFFFFFFFFFFFFFFFF9FBC0000300FFFFFFFFFFFFF5E000000),
    .INIT_49(256'hFFFFFFFFFFFFFF8D00000000000078EBFFFFFFFFFFFFFFFFFFFFFF3900000000),
    .INIT_4A(256'hFFFFFFFFFFFFFFFC00000000000065FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFF1F00000000000045FFFFFFFFFFFFFFFFFF3E00005CFFFFFFFFFFFFFFFE0030),
    .INIT_4C(256'h0000000020DFFFFFFFFFAF4C205FFFFFFF6C000000006FFFFFFFFFFFBF6C005E),
    .INIT_4D(256'h00108EFFFFFFFFFFFFFE0000000000003EFFFFFFFFFFFFFFFFFFFFFFFF1F0000),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E005DFFFFFFFFFFFFFFFFFFFFFFFFCF1D00),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFDE000000000000000000ECFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'h00009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000000000000000002DFFFF),
    .INIT_51(256'hFFFFFFFFFFCF9D0000101EEFFFFFFFFFCF2C00000000007DFFFFFFFFFFFF8C00),
    .INIT_52(256'h00000086FFFFFFFFFFFFFFFFFFFFFF7E000000000000001CCFFFFFFFFFFFFFFF),
    .INIT_53(256'h00000C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE00000000),
    .INIT_54(256'hFFFFFFFFFFFF5F0000000FFFFFFFFFFFFF1F0000FFFFFFFFFFFFFFFE00000000),
    .INIT_55(256'h00ACCFFFFF9D000000002EFFFFFFFFFFFFBE00203FFF9C00000000000C9FFFFF),
    .INIT_56(256'h00000000ECFFFFFFFFFFFFFFFFFFFFFFFFEF2C000000000000FEFFFFFFFFFFAE),
    .INIT_57(256'hFFFFEF6C106FFFFFFFFFFFFFFFFFFFFFFFFFEF0E0C0000BDBFFFFFFFFFFF9C00),
    .INIT_58(256'hBF00000000000000000030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFF7D00000000001C6C0000004EFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hAD5ECEFECF6D00000000005CFFFFFFFFFFFF2E000000DCFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFB70C000000000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F1D000070),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1C000000000000B0FFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFF7F0000FFFFFFFFFFFFFFFFDC000000000000C9FFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFF4D008CCF1E000000000000B5FFFFFFFFFFFFFFFFFF7C0000EDFF),
    .INIT_5F(256'hFFFFFFFFFFFF1D000000000000FDFFFFFFFFFFFF5D006DFFFFCE00000000FCFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFF6F7D0C00408D3EAEFE9F0E000000000000BFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E007DFFFFFFFFFFFF),
    .INIT_62(256'h00000E000000203FFFFFFFFFFFFFFFFFFFFFFFFFFFBC0000000000000000004F),
    .INIT_63(256'h5FFFFFFFFFFFBF1C0000002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E00000000),
    .INIT_64(256'h5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2E3D8C3C5CBCFEBE000000000000),
    .INIT_65(256'hFFFFFFFF0D00000000000000C2FFFFFFFFFFFFFFFFFFFFFFFC00000000000000),
    .INIT_66(256'hFFFFFFFF9E00000000000024BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'h0000000000209FFFFFFFFFFFFFFFFFCD00008CFFFFFFFFFFFFFE0000FFFFFFFF),
    .INIT_68(256'h000DFFFFFFFFFFFFBF7C002EFFCF0000000010BFFFFFFFFFFFFF9F3C005D8F00),
    .INIT_69(256'h5D9C5C4CAC6E6F000000000000AAFFFFFFFFFFFFFFFFFFFFFFFF1E0000000000),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFDF5C107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6E),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFF9D0000000000000000008EFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE0000000000003EAD000000ACCFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFCF1C00000000006EFFFFFFFFFFFF9D0000008D),
    .INIT_6E(256'hCCFFFFFFFFFFFFFFFFFFFFFF2600000000000000002EFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E00000000000000),
    .INIT_70(256'hFFFFFF5F0000003FFFFFFFFFFFBE001CFFFFFFFFFFFFFFFFDF4C000000000000),
    .INIT_71(256'h6EFF3C00000000FEFFFFFFFFFFFFFF7E00001EBC0000000000009DFFFFFFFFFF),
    .INIT_72(256'h00C1FFFFFFFFFFFFFFFFFFFFFFFFFE0000000000003CFFFFFFFFFFFFFF2F0C00),
    .INIT_73(256'h7E007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C00000000),
    .INIT_74(256'h00000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFF2F0000000000006DDFAC0000007DFFFFFFFFFFFFFFFFFFFFFFFF9E0000),
    .INIT_76(256'hFFFFDC0000000000ADFFFFFFFFFFFF3F00000020AFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'h4F000000000000000040BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFF0F0000000000000000BEFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFF2E008CFFFFFFFFFFFFFFFFFFBD00000000000040BFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFC000000000000000000104FFFFFFFFFFFFFFFFFDC0000EDFFFFFFFF),
    .INIT_7B(256'hFFFFCF000000000000006FFFFFFFFFFFFFFF6E0010210000000000FEFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D000000000054EFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8C105FFFFFFFFFFFFFFFFF),
    .INIT_7E(256'h3F0C0000007EFFFFFFFFFFFFFFFFFFFFFF8F000000000000000000CCFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFC0000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F000000000000BCFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFC00FFFFFF9FFFFFE01FFE01FF01FF801FF0FDFFC07FFFFF803FF803FFFFFE0F),
    .INITP_01(256'h7FFFFF01FFF01FF03FF8067F879FFC03FFFFF801FFC01FFFFFC07F07FFF0183F),
    .INITP_02(256'h03FFC3FFE027F8F9FFE03FFFFFC09FF801FFFFFC07F83FFF01C1FFE00FFFFFFC),
    .INITP_03(256'h7FC79FFC00FFFFFC09FFC067FFFFE07F83FFF01E1FFC007FFFFFE7FFFFF01FFF),
    .INITP_04(256'hFFFFC08FFC027FFFFE07FC3FFF01E07FE00FFFFFFF3FFFFF00FFE03FFFFFFF07),
    .INITP_05(256'h27FFFFE07FE3FFF01F83FE007FFFFFF3FFFFF00FFE01FFFFFFF1F9FC73FFC00F),
    .INITP_06(256'h1FFF01F83FF007FFFFFF1FFFFF033FF01FFFFFFFFFCFE13FFE00FFFFF80CFFE0),
    .INITP_07(256'h007FFFFFFDFFFFF033FF01FFFFFFFFFC7F07FFE033FFFF80C3FC031FFFFE07FE),
    .INITP_08(256'hFFFF03BFF01FFFFFFFFFE3F87FFE033FFFFC0E3FE079FFFFC07FF1FFF01FC1FE),
    .INITP_09(256'hFFFFFFFFFF3F07FFC031FFFFC0F3FE038FFFFC0FFF07FE03FC1FE007FFFFFFC7),
    .INITP_0A(256'h703FFC07DFFFF81F9FE03EFFFFE07FF07FF01FF0FE007FFFFFFE7FFFE038FF01),
    .INITP_0B(256'hFF81F8FE03E7FFFC0FFF87FE03FF03E007FFFFFFE3FFFF078FF03FFFFFFFFFF8),
    .INITP_0C(256'h3FFFC1FFF83FE07FF81E007FFFFFFF9FFFE03C7E03FFFFFFFFFFC023FFC07EFF),
    .INITP_0D(256'hFC03FFC0F00FFFFFFFF8FFFC07E3F01FFFFFFFFFFF760FFC07E7FFF01FCFF03F),
    .INITP_0E(256'h7FFFFFFFC7FFC07F0C03FFFFFFFFFFFFF07FC0FF1FFF01FE7F03F8FFF81FFFE0),
    .INITP_0F(256'hF81FF0007FFFFFFFFFFFFF87F00FF87FC07FE1F07FC3FF01FFFE07007FFE0200),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00000000001DFFFFFF),
    .INIT_01(256'hCF0000000000001000B0FFFFFFFFFFFFFFFFFFFFFF700000000000002000EDFF),
    .INIT_02(256'hFF0F00000000000000BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h008C0C0DFFFFFFFFFFFFFFFFAE00006CFFFFFFFFFF5D003DFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFCD00000000000000BFFFFFFFFFFFFFFFFF7F2C000000000000),
    .INIT_05(256'hFFFFFF5E0000000000003EFFFFFFFFFFFFFFFFFFFFFFFFAC000000000000BEFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFBE003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFF7C000000000000000020EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFF0000000000004CFFFF2E000000304FFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFF5E00000000008CFFFFFFFFFFFFFFBE0000006CEFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFF8D0000000000003C7C207FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C00000000003C38007AFF),
    .INIT_0C(256'hEF8C0000DEFFFFFFFF5C00FDFFFFFFFFFFFFFFFFFFEF3C000000000000106FFF),
    .INIT_0D(256'h00004DFFFFFFFFFFFFFFFFFFFF9E000000000000003DCD009EFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFF4D0000000000001EFFFFFFFFFFFFFFFFFF0E000000),
    .INIT_0F(256'hEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000000000005CDF),
    .INIT_10(256'h000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00),
    .INIT_11(256'h00000000000000FFFFEFFC0000008CCFFFFFFFFFFFFFFFFFFFFF7D0000000000),
    .INIT_12(256'h000000003CFFFFFFFFFFFFFFEF8C000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h000000000066003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFF3D000000000000F10068D7FFFFFFFFFFFFFFFFFF9E0000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFF3D000000000000001DFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFDD0000000000007ECF8C50AFFFFFFFFFFFFFFF7E00003DFFFFFF0F00001F),
    .INIT_17(256'h0000000000008DFFFFFFFFFFFFFFFFFFFF0FDC0000EC9FFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFF8F00000000000000FDFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0C9CEFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h0000004DFFFFFFFFFFFFFFFFFFFF7E0000000000000000006EFFFFFFFFFFFFFF),
    .INIT_1B(256'hFF4E000000ECFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF8F3C),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F000000000000FFFFFFFFFFFFFF),
    .INIT_1D(256'h00000000934800F9FFFFFFFFFFFFFFFFFFAB000000000000002F1D00CEFFFFFF),
    .INIT_1E(256'h0000000000B400AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD0000),
    .INIT_1F(256'h0C3DFFFFFFFFFFFFFFEF8C00006FFFFF9D006CFFFFFFFFFFFFFFFFFFFFFF1E00),
    .INIT_20(256'hFFFFFFFFFFFFFFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00000000ECEFFF1F),
    .INIT_21(256'h0000000000008C309FFFFFFFFFFFFFFFFFFFFF9E0000000000001DFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFBD002EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFF7F000000000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFF00000000000000FFFFFFFFAE000000000EFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFF7F000000000000FFFFFFFFFFFFFFFFDF4C0000002FFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFF9C000000000000BA7F1C6CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0000000000007F2E00248BFFFFFF),
    .INIT_28(256'h005DFF9F2000FDFFFFFFFFFFFFFFFFFFFFFFBE0000000000004E3C6CBFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFF7E7C2CADCFFFFFFFFD002EFFFFFFFFFFFFFFAE00),
    .INIT_2A(256'hFFFFFFFFFFFFFFFE000000000000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000006E006DFFFFFF),
    .INIT_2C(256'hCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6C205FFF),
    .INIT_2D(256'h000000FFFFFFFFFF8D00000010DEFFFFFFFFFFFFFFFFFF7C0000000000000000),
    .INIT_2E(256'h00FFFFFFFFFFFFFFFFFFFD0000004DFFFFFFFFFFFFFFFFFFFFFFFFFF00000000),
    .INIT_2F(256'h0056FF2E007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000000000),
    .INIT_30(256'hFFFFFFFFFF4E0000000000007FDF740055FFFFFFFFFFFFFFFFFF750000000000),
    .INIT_31(256'hFFFFFFFFFFFF0F0000000000007E5E007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFEF1D10BEFFFFFFFFFFFFFFCC0000FEBD003CAFFFFFFFFFFF),
    .INIT_33(256'h00007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFF0000000000007F1D00FEFFFFFFFFFFFFFFFFFF7F00000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE00DCEFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h00406FFFFFFFFFFFFFFFFF4D00000000000000006CFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'h0000106FFFFFFFFFFFFFFFFFFFFFFF9F0000000000005CFFFFFFFFFFCFAC0000),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00000000004CFFFFFFFFFFFFFFFFFFBF3C),
    .INIT_39(256'hFFFF960000FAFFFFFFFFFFFFFFFF4A0000000000000EFFEFDC009EFFFFFFFFFF),
    .INIT_3A(256'h007EFF0D009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E000000000000),
    .INIT_3B(256'hEEFFFFFFFFFFFF2F0C00601000FDFFFFFFFFFFFFFFFFFFFFFFFF7F0000000000),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9C30),
    .INIT_3D(256'h00009F4F0C9CCFFFFFFFFFFFFFFFFF9F0000000000007CFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFF7D00FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF00000000),
    .INIT_3F(256'h000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFF1F000000000000DCFFFFFFFFFFFF4F2C0000009CCFFFFFFFFFFFFFFF1E),
    .INIT_41(256'hFFFFCE0000000000ACFFFFFFFFFFFFFFFFFFFFFD0000004DFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFF13000000000000E9FFFF7F2C306FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFD00000000002CFFFFFFE80094E3FFFFFFFFFF),
    .INIT_44(256'h9CDFFFFFFFFFFFFFFFFFFFFFFFFF2F0000000000007EFF8F4C305FFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5C107EFFFFFFFFFFFF9D000000),
    .INIT_46(256'hFFFFFFFF0000000000007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F00000000000CFFFF9D00ADFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7C10EEFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFF7E000000001DEFFFFFFFFFFFFF8E000000000000000000FFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFBF3C000000EEFFFFFFFFFFFFFFFFFFFF3E000000000000ADFF),
    .INIT_4B(256'hFF9E009CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E00000000004DFFFFFF),
    .INIT_4C(256'hFFAD0000000000CCFFFFFF3B0C00E1FFFFFFFFFFFFFFAF00000000000012FFFF),
    .INIT_4D(256'hFFFFCE0000000000008EFFFFCE009CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFF5F8C003D6FFFFFFFFFDE0000000EFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFBE0000000000ACFFFFAF3C00CEFFFFFFFFFFFFFFAF000000000000BCFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0C606FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hBDFFFFFFFFFFFFFE000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'h7CBFFFFFFFFFFFFFFFFFFF0D0000000000007EFFFFFFFFFFFFFFFF9D00000000),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFF0D00000000004EFFFFFFFFFFFFFFFFFFFFFF2E000000),
    .INIT_55(256'hC100081FFFFFFFFFFFFFFF48000000000026FFFFFFFF9D000DEFFFFFFFFFFFFF),
    .INIT_56(256'hFFDD000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC0000000000BDFFFFFFFF),
    .INIT_57(256'hF0CDCD110000000010CEFFFFFFFFFFFFFFFFFFFFFFFF1E0000000000000FFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FEC0000),
    .INIT_59(256'hFF4E00305FFFFFFFFFFFFF4F0000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFF3E009CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD00000000009DFFFF),
    .INIT_5B(256'h000000007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'h000000000000AFFFFFFFFFFFFFFFFFEFFC000000004EFFFFFFFFFFFE00000000),
    .INIT_5D(256'h0000000C8FFFFFFFFFFFFFFFFFFFFFFFDF8C0000001DEFFFFFFFFFFFFFFF6F10),
    .INIT_5E(256'h00000000003AFFFFFFFFEFEC004DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F1000),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFBF2000000000000FFFFFFFFFD380008CC3FFFFFFFFFFFFE4),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFC000000000000AFFFFFFFEF2D004DEFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF2E3C00000000009C3D0000300FFF),
    .INIT_62(256'h000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFEF5C0000000000FEFFFFFFEFCC008C9FFFFFFFFFFF7E),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D00ECCFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFAF8C00000010AEFFFFFFFFCE0000000000000000DCFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFEE000000004DEFFFFFFFFFFFFF2D0000000000000DFFFFFFFFFFFF),
    .INIT_67(256'h9C002DCFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00000000005DFFFFFFFFFFFFFFFF),
    .INIT_68(256'h0000CCFFFFFFFFFFFF03000031FFFFFFFFFFFF61000000000072FFFFFFFFFFAF),
    .INIT_69(256'h000000008CFFFFFFFFFFCFAC002DCFFFFFFFFFFFFFFFFFFFFFFFFFFF2E000000),
    .INIT_6A(256'hFFFFFFFFFFFFFFCF7E9D6DADCEEFEFCC000030EEFFFFFFFFFFFFFFFFFF6F0000),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'h00000000BCFFFFFFFFFF1F0C009C6FFFFFFFFF1D0000000000008EFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFEFEC00CC9FFFFFFFFFFFFFFFFFFFFFFFFFFF7E00),
    .INIT_6E(256'hFFFFFFDD0000000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'h7FFFFFFFEFBD00000000000000BEFFFFFFFFFFFFFFFFFFFFFF5F5C000000107E),
    .INIT_70(256'hFFFFFFFF3F10000000001C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D00000000FC),
    .INIT_71(256'h00E1FFFFFFFFFF710000000000D6FFFFFFFFFFFF8F5C00CC7FFFFFFFFFFFFFFF),
    .INIT_72(256'h9C00BC7FFFFFFFFFFFFFFFFFFFFFFF2F200000000000DEFFFFFFFFFFFFFFD900),
    .INIT_73(256'hFFFFFF7F5C0000104EFFFFFFFFFFFFFFFF3D000000000000CDFFFFFFFFFFFF9F),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000406EEFEF1E000000000000008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFCFEC00802FFFFFFFFFFFFFFFFFFFFFFF9F500000000000DEFFFFFFFFFFFFCD),
    .INIT_77(256'hBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hBCFFFFFFFFFFFFFFFFFFFFFFFFFF5F5C00000000FC5EED200000000000000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBC00000000204DFDCD9000000000000000),
    .INIT_7A(256'h007BFFFFFFFFFFFFFF5F7C00406EFFFFFFFFFFFFFFFFFF5F6000000000002EFF),
    .INIT_7B(256'hFFFFFE5000000000008DFFFFFFFFFFFFFFFFEBDC00004AFFFFFFFF1100000000),
    .INIT_7C(256'hFFFFFFFF7E000000000000004FFFFFFFFFFFFFFFCFEC00304EEFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5C0000002D8FFF),
    .INIT_7E(256'h001DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFBFEC00000000008DFFFFFFFFFFFFFFEFCC0000003040000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h10000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFC1601FFE1FC07FF1E07FE0FC07FFFF0000FFFF0000FFFFFFFFE1F),
    .INITP_01(256'hE0001FFF0000FFF840FFF8780FFFFF8001FFFF8000FFFFFFFFF87E01FF8003FF),
    .INITP_02(256'h3FFFC00FFF8000FFFFFE003FFFFE001FFFFFFFFFC1C03FFC00FFFFFFFFFFFFFF),
    .INITP_03(256'h007FFFFFE003FFFFE007FFFFFFFFFC000FFFE00FFFFFFFFFFFFFFF8003FFF000),
    .INITP_04(256'hFFFFFFA3FFFFFFFFFFF003FFFF01FFFFFFFFFFFFFFFE00FFFFE003FFFF00FFFF),
    .INITP_05(256'hFFFFFFFFD97FFFF87FFFFFFFFFFFFFFFF45FFFFF47FFFFF01FFFFA2FFFFFFF81),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEC00100EDFFFFFFFFF),
    .INIT_01(256'hFFFFFF5F5C00000000000000000000000000004CDFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFF9F6C0000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h0000C09EDFFFFFFFFFFF8E4000000000005DFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFA37C0000E9EFFFAF24000000006CFFFFFFFFFFFFFFFFFF9FBC),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFCF0D0000802E5FFFFFFFFF2F7D000000000000ECCFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF4F5C00000020ADFEBFAF4E100000000000007D),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFF7F5C0000000000000000000000CEFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFCF1D0000905EBFFFFFFFFFFFEE800000000000ECDF),
    .INIT_0A(256'h000000000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'h00000000000000EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBC000000000000),
    .INIT_0C(256'h000000007DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9C000000000000),
    .INIT_0D(256'hA8FDD00000000000B5FFFFFFFFFFFFFFFFFFFFCF5D00000030119DDD61700000),
    .INIT_0E(256'h0000000050B0B04000000000000000EC9FFFFFFFFFFFFFFFFFFFFFFF63600000),
    .INIT_0F(256'hFFFF9FCC00000000000000000000000000009CAFFFFFFFFFFFFFFFFFFFFFEFAD),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'h00000000000000004DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hEFCD00000020F08DED7190000000000000FCCFFFFFFFFFFFFFFFFFFFFF1F2C00),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFCF9D0000000000000000000000ECEFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFAF1D00000000000000000000005DFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFF8E3C00000000000000000000002C4EFFFFFFFFFFFFFFFF),
    .INIT_17(256'h00009DDFFFFFFFFFFFFFFFFFFFFFFFFFFF5B8400000000000000001C6BFFFFFF),
    .INIT_18(256'h00000000007C5FFFFFFFFFFFFFFFFFFFFFFFFFFFAE4C00000000000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFD1C000000000000),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'h0000000CDDEFFFFFFFFFFFFFFFFFFFFFFFFF0F3C000000000000009CAFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C0000000000000000),
    .INIT_1D(256'hFFFFFFFEBC00000000000000008DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFF5E5C000000000000000C0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h4C000000000000001C8D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFB325000000000000007AFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFD),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFBFFD3C0000000000000000ECFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF6F8D1C000000000000001CADCFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFF6FBC00000000009C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFDF3E6C000000000000000C3D4FFFFFFFFFFFFFFFFF),
    .INIT_26(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'h6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEBDDC7C9C2DFD),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF4EEC1C00005C9D),
    .INIT_29(256'h00ACDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAEBDFC9CDC7D7EAFFFFFFF),
    .INIT_2A(256'h9EADEC7CBC1DFD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EA80000),
    .INIT_2B(256'hFFFFFFCF7E9DFC8CBC7D4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'h6CBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFEFEEDD0DACBC5D4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7EEC2C),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B0747FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00002000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h20000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15
   (DOADO,
    DOPADOP,
    clka,
    ram_ena,
    ena,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input ram_ena;
  input ena;
  input [10:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire ena;
  wire ram_ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16
   (p_39_out,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena,
    addra);
  output [17:0]p_39_out;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire [34:34]ena_array;
  wire [17:0]p_39_out;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[9:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({p_39_out[16:9],p_39_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({p_39_out[17],p_39_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .I2(addra[10]),
        .O(ena_array));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__1 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[15]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFF),
    .INITP_0F(256'hFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99C05C240A38A245F7FFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFF650C00000000000000404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFF7E64040DEE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'h000084CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A0000000000000000),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000007EF7FF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFC500000000568E0E00000000002E99FFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INITP_02(256'hFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E03FFFFFFF),
    .INITP_03(256'hFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F01FFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFF0F807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFF),
    .INITP_06(256'hFFFFFFFFF0FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFC07FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F),
    .INITP_09(256'hFFFFFFF000FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFF),
    .INITP_0A(256'hF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F00FFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F00FFFFFFFFFFFFFFFC1FFFFFFFFC0007),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFE1F807FFFFFFFFFFFFFF007FFFFFFF80383F1FFFFFFFFF),
    .INITP_0D(256'hFFFFFFFF1F803FFFFFFFFFFFFFF003FFFFFFF00FE1F1FFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'h03FFFFFFFF07FFFE001FFFFFFE01FF8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'h3FFFE000FFFFFFC03FF863FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFCE0000000000DEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h00006EF7FFAF4E00000000001679FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB00),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'h9F060000000008B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'h001075FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5020000BCFFFFFFD75000000000),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0000000000CEFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFF6C000062FFFFFFFFB51C00000000001291FFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFF8E0000000036FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFF5700000000000030C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F000000BB),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'h00000000D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB706),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h68F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3060000F2FFFFFFFFFFC6000000000000),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE00000000BFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFAC00002AEBFFFFFFFFDF30000000000000D2FFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFF5F00000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFF51000000000000005DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9700000021FFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFF777DE6828000840AE37E7FFFFFFFFFFFFFFFFDF00000000),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9A000030EBFFFFFFFFFF8400000000000022C9),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'h00000000000020FEEFFFFFFFFFFFFFFF1600005EFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF1F30000000),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFA50000000FFFFFFFFFFFA100000000000000A2FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFF100000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF974800000000000000000000000000489FFFFF),
    .INIT_59(256'hFFFFFFFFFF878E201050D6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hC40000000000000063FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA00001CD7FFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'h57080000000000000EC6577F67DE1E0000186FFFFFFFFFDF0000009FFFFFFFFF),
    .INIT_62(256'hDEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00000000000008),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFDD2C0000DAFFFFFFFFFFCD160000000000003CEBFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFDFC600001887FFFFFF47000076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F08000000000000E6DFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFF3700000000000000000076D7FFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BFE7FFFFFFFFFFFFFFFF),
    .INIT_6E(256'h000006A5FFFFFFFFFFF200000000000000F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h00006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFC720000000000000E6FFFFFFFFFFFFFFFFFF1F000036DFFFFF9E),
    .INIT_75(256'h000000000000000000006EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFF3F60000010BED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36),
    .INIT_77(256'h00000000000AB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E000076FFFFFFFFFFDD1E00),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'h0046EFFFFFFFFFFFFFFFFFFFFFCE0000C6FF9F00008EFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE0000000000),
    .INIT_7F(256'h0030AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7000000000000E696000000008E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFC03FFC47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FE01FFFFFFFC0),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E01FFFFFFF801FFFE060FFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E00FFFFFFF800FFFE0707FFFFF807FFE0F),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFE3F00FFFFFFF0E0FFFE0707FFFFF807FFE0FFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFF1F007FFFFFF0F07FFE0783FFFFF807FFE1FFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h7FFFFFF1F87FFF0783FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFF03C1FFFFF807FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F80),
    .INITP_07(256'hF007FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87803FFFFFE1FC3),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C03FFFFFE1FC3FFF83C1FFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C01FFFFFE1FE1FFF81C0FFFFF007FF11FFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFF1E01FFFFFE3FE1FFFC1E0FFFFF007FE31FFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFF0E01FFFFFF3FF0FFFC0E0FFFFF007FC71FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFF0FFFE0E07FFFF003F8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFE0E07FFFF003F1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E00F),
    .INITP_0E(256'h03E3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC700FFFFFFFFF8FF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3007FFFFFFFF87FFF0607FFFF0),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A60000000000),
    .INIT_01(256'hFFFFFFFFFFFFFFFFD126000033FFFFFFFFFF0300000000000000B4FFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFEF3E0008BF6E0016BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFA700000000000000FEFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFF7F00000000006EFFFFA60000000057FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFD6000000000000000030CFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h20C7FFFFFFFFDD1C00000000000000A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF570000),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFDE0000000000000087FFFFFFFFFFFFFFFFFFFFFFFF37000046000037FFFFFF),
    .INIT_11(256'hDEFFFFD71E00000046EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'h8F08000000260E0000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0000000000),
    .INIT_13(256'h00000098FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC00008AFDFFFFFFFFF400000000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFEF26000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3600000000000000D7FFFF),
    .INIT_1B(256'h5FFFFFFFFFFFFFFFFFFFFFFFFFFFF70E0000000096FFFFFFFE0000000017FFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8600000027FFE7C600000000),
    .INIT_1D(256'hFFFFFFFFFFFFE540000025FFFFFFFFD7160000000000000093FFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'h000076F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFAF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE),
    .INIT_24(256'hFFFFFF960000000010E7FFFFD70E0000002EEFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFB70000009EFFFFFFFFC600000046F7FFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFE80000000000000090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D080010A9),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFC73000000FFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF9E0000000037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F000000),
    .INIT_2E(256'hFFFFFFFFE73E0000003FFFFFFFFFFFFFFFFFFFFFFFFFFF57000000000037FFFF),
    .INIT_2F(256'h009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000007F),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21000060F3FFFFFFC908000000000000),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFAF4E00000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF370000000000000000FFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFF746000000006EFFFFFF4F0000000056FFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA600001EFFFFFFFFFFFF5700000046F7FF),
    .INIT_39(256'hFFFFFFFFFDA60000DAFFFFFFFFB600000000000000AAFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFE0000000000000000D7FFFFFFFFFFFFFFFFFFFFAF30005E360056FF),
    .INIT_40(256'h3F000000000097FFFFE70E0000000087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFF56000086FFFFFFFFFFFFFF7E00000067FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFF9D0000000000000004B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE54A000061FFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h009FFFFFFFFFFFFFFFFFFF8720002EC77E003EFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h000000C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000),
    .INIT_4A(256'hFFFF7F0000008EFFFFFFFFFFFFFFFFFFFFFFFFFFF74600000000BEFFFFFF8600),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF460000BEFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F120026CBFFFFFF7A00000000000000CCFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'h002EAFFF7E0056FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFC600000000000000005FFFFFFFFFFFFFFFFF6718),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFF570000000010CFFFFF0F0000000026EFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFB6000027FFFFFFFFFFFFFFFF66000000B7FFFFFFFF),
    .INIT_55(256'hFFFFFF3D000076F5FFFF570000000000000010D5FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hBE00000000000000000FFFFFFFFFFFFFFF5708003EAFFFFF76007EFFFFFFFFFF),
    .INIT_5C(256'h000000F6FFFF8F000000000067FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'h8E96E7FFFFFFFFFFFFFFFF5F000000E6FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E00),
    .INIT_5E(256'h000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA0000DEFFFFF730),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFF5708004ECFFFFFFF2600CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC60000000000000000A6FFFF),
    .INIT_66(256'h3E000020EFFFFFFFFFFFFFFFFFFFFFFFFFFFA70600000020DFFFF70E00000000),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFF582000053FFFFF4000000000000003AF9FFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'h000027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFE000000000000000046FFFFFFFFFF7F08004ECFFFFFFFBF),
    .INIT_6F(256'hFFFFFFFFFFFFFFDE000000001FFFFF6E0000000036FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000003FFFFFFFFFFFFFFF),
    .INIT_71(256'hFFDB46001EBDFFBD00000000000000005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'h000000000000DFFFFFFFBF20004ECFFFFFFFFF270000BFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'h2EEFFFD60000000000A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFFC706000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF2E000000),
    .INIT_7A(256'h0000000094FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9180064EDFF84000000),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[2] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[2] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[2] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC7FFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE807FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0BFFFFF),
    .INIT_0F(256'hFFFFFFFFFFC0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85FFFFFFFFFFFFFFFF),
    .INIT_10(256'h2E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFF82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_12(256'hFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C01FFFFFFF),
    .INIT_13(256'hFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E80FFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F007FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFE0F80BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF),
    .INIT_16(256'hFFFFFFFFF9FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFF3A9FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07),
    .INIT_19(256'hFFFFFFF001FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E01FFFFFFFF),
    .INIT_1A(256'hF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E00FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F007FFFFFFFFFFFFFFA1FFFFFFFFA000F),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFF3F80FFFFFFFFFFFFFFF81BFFFFFFF40967F1FFFFFFFFF),
    .INIT_1D(256'hFFFFFFFF0F803FFFFFFFFAFFFFE001FFFFFFF80FE2E1FFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h07FFFFFFFF0BFFFE002FFFFFFC01FF8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h3FFFC001FFFFFFE03FFC67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FE),
    .INIT_20(256'hFFF807FFEE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07C01FFFFFFF80),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F00FFFFFFF801FFFE0E07FF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E01FFFFFFFC20FFFE0E87FFFFFC03FFC07),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFC1E007FFFFFF040FFFD0783FFFFF803FFE1FFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFF9F807FFFFFE1F03FFE0347FFFFF807FFF0FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h7FFFFFF1F47FFE03C1FFFFF807FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFE07C1FFFFF007FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07C0),
    .INIT_27(256'hF803FF91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F807FFFFFE3F81),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3C01FFFFFE1FE1FFF81A0FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E03FFFFFE3FE3FFF03C0FFFFF807FE2BFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFF0C00FFFFFE1FE0FFF81E0FFFFF007FD79FFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFF9C01FFFFFF9FF0FFFE0E07FFFF807FAF3FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFE8FFFC0D0FFFFF003F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF0F07FFFF803FBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0601F),
    .INIT_2E(256'h03E7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF00FFFFFFFFF8FF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3007FFFFFFFF07FFF8E03FFFF8),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF1003FFFFFFFF83FFF0607FFFF003C7E3FFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFF0007FFFFFFFF83FFF8007FFFF80187C7FFFFFFFFFFFFFE1F),
    .INIT_32(256'hFFFFF9C07FFFFFFFF83FFF8203FFFF0039FE3FFFFFFFFFFFFFA3FFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFE1FFFE083FFFF801CF5FFFFFFFFFFFFFFC0FFF8FFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hF103FFFF800DC0FFFFFFFFFFFFFF003FFC3FFFFFFFFFFFFFFFFFFFFFFFA403FF),
    .INIT_35(256'hE03FFFFFFFFFFFFFF003FF80FFFFFFFFFFFFFFFFFFBFFFFF201FFFFFFFFC3FFF),
    .INIT_36(256'h7FFFFF010FF817FFFFFFFFFFFFFFFFD05FFFE002FFFFCFFFF1FFFE101FFFF800),
    .INIT_37(256'h827FBDFFFFFFFFFFFFF8003FFF800FFFF41FFE1FFFF803FFFF800F17FFFFFFFF),
    .INIT_38(256'h7FFFFFFF8007FFFC00FFFD00FFE97FFF803FFFFC00FFFFFFFFFFA57FFFF80CFF),
    .INIT_39(256'h1FFFC01FFFA003FF8FFFFC00FFFFC00FFFFFFFFFE005FFFF8087F827F82FFFFB),
    .INIT_3A(256'h002FF8BFFFC00FFFFC007FFFFFFFFE002FFFF804BF01BFC07FFE03E8FFFFE970),
    .INIT_3B(256'h00FFFFC00FFFFFFFFFE000BFFFE007FC15F807FFF03F05FFFE2E80FFFC00FFF8),
    .INIT_3C(256'hFFFFFFFE0001FFFC037F83E7803FFF19780FFFF1F803FFF00FFF8000FFC7FFFE),
    .INIT_3D(256'h0FFFC013F81CFC03FFC1CF80FFFE1FE03FFF003FF80003F83FFFE00FFFFE007F),
    .INIT_3E(256'hD3E07FFC7E7807FFE3FF01FFF007FF84801FA1FFFF00FFFFC007FFFFFFFFC000),
    .INIT_3F(256'hE03FFF9FF03FFF807FF07E03FE3FFFF807FFFE00FFFFFFFFFC1A01FFFD018FC1),
    .INIT_40(256'hFFF803FFC7E81FE3FFFF80FFFFE003FFFFFFFFC3F807FFE019FE1F5E03FFC7C7),
    .INIT_41(256'h80FF0FFFFC0FFFFF003FFFFFFFFC3FC03FFF00CFC1F9E01FFCFF3D03FFFBFF81),
    .INIT_42(256'h3FFFF003FFFFFFFFC1FC07FFE81CBE0F5F03FFCFF1F03FFFFFF407FF803FF87F),
    .INIT_43(256'hFFFFFC0FC03FFF81E5F07C681FFCFFBF817FFFFF807FF803FFC7FC07E0FFFFC0),
    .INIT_44(256'hFFF01F3E03C780FFC3F1F007FFFFF80FFFE03FFE3FC07E8FFFFC01FFFE003FFF),
    .INIT_45(256'h781FF87FCF807FFFFFC03FFE03FFC3FC05F87FFFE02FFFF007FFFFFEFFF0FE03),
    .INIT_46(256'h03FFFFFE03FFC00FFF0FF03F0BFFFE00FFFF801FFFFFCFFE1FF81FFF0073F83F),
    .INIT_47(256'hFC01FFE97E00F83FFFE007FFF801FFFFF8FFF8FF01FFF80F9F87F100FFC3FDFA),
    .INIT_48(256'h0FC5FFFD00BFFF803FFFFFE7FF07FC17FF80FC783F1807FC3FDFE03FFFFFE03F),
    .INIT_49(256'hFFF801FFFFFEFFFA5FC0FFFC07C781F9C07FE7FDFF01FFFFFE02FFF00FFFCBF8),
    .INIT_4A(256'hCBFFC1FE07FF807E1C1FCE07FE1FCFF01FFFFFF00FFF017FFA6F01FC3FFFE003),
    .INIT_4B(256'hFE07F983FC207FF1FCFF80FFFFFF81FFF00FFFE9501FC3FFFF041FFF803FFFFF),
    .INIT_4C(256'h03FE1FCFF80FFFFFF007FF80FFFF97C0FF0FFFE001FFFC00FFFFFF7FFF42C07F),
    .INIT_4D(256'hFFFFFF807FF003FFFFFA07F0FFFF0207FFC00FFFFFFFFFFCE003FFE03FC83FF4),
    .INIT_4E(256'h003FFFFFE07F07FFE010FFFC00FFFFFFBFFFFFE03FFE07F861FF303FF1FDFF80),
    .INIT_4F(256'hF8FFFE0387FF800FFFFFF3FFFFFE05FFC01FC81FF802FF8F8FFC07FFFFF007FF),
    .INIT_50(256'hFE007FFFFFDFFFFFF03FFE03FE01FF800FF0FDFF807FFFFF017FFC01FFFFFE0F),
    .INIT_51(256'h7FFFFE03FFE03FF01FFC04FF0FDFFA05FFFFFC1BFF80DFFFFFE07F83FFF0185F),
    .INIT_52(256'h01FFA3FFE04BFCF1FFE03FFFFFC09FFC01FFFFFC0FF03FFF01A0FFE00FFFFFFE),
    .INIT_53(256'h7F839FFE04FFFFF809FF8027FFFFC07F83FFF01D0FFE007FFFFFCBFFFFE01FFF),
    .INIT_54(256'hFFFFC087FE077FFFFE07FC1FFF01E07FE007FFFFFF3FFFFF01FFF03FFE7FFF03),
    .INIT_55(256'h67FFFFE07FE1FFF01F0FFF007FFFFFE3FFFFF007FF01FFFFFFFC79FC73FFE02F),
    .INIT_56(256'h2FFF03F01FE007FFFFFF2FFFFF037FF03FFFFFFFFF7FE35FFC06FFFFF80EFFE0),
    .INIT_57(256'h007FFFFFFDFFFFE025FF03FFFFFFFFFF7E17FFE067FFFFC0E7FC02BFFFFE07FF),
    .INIT_58(256'hFFFF039FF03FFFFFFFFFDFF8FFFC067FFFFC0E5FE03AFFFFC07FF0FFF03F82FF),
    .INIT_59(256'hFFFFFFFFFF2F87FFC032FFFF80F1FC07D7FFFC07FF87FF01FE17E007FFFFFFB7),
    .INIT_5A(256'h90BFFE03C7FFF81F1FE03E3FFFC07FF0FFE03FF0FF007FFFFFFC3FFFF034FE03),
    .INIT_5B(256'hFF80F87E07C1FFFE07FF85FD01FE83F00FFFFFFFF7FFFE079FE01FFFFFFFFFF8),
    .INIT_5C(256'h8FFFC1FFF80FC03FF05E00FFFFFFFF8FFFD0787F01FFFFFFFFFF9065FFE0383F),
    .INIT_5D(256'hF407FFE3F007FFFFFFF0FFFE0FE5F01FFFFFFFFFFEC02FF807C1FFF01F8FE07E),
    .INIT_5E(256'hFFFFFFFF83FFE0FE0201FFFFFFFFFFFFF97FC07FBFFE03FE3F07F4FFFC2FFFE1),
    .INIT_5F(256'hF80FE0807FFFFFFFFFFFFFC1F807F13FF03FD1F07FE3FF01FFFD0280FFFF0C00),
    .INIT_60(256'hFFFFFFFFFFFA0C81FF81F403FE8407FF1FC07FFFF00007FFF8000FFFFFFFFE5F),
    .INIT_61(256'hE0002FFC0E00FFF060FFE8F40BFFFFC000FFFFC000FFFFFFFFE9FE01FFC003FF),
    .INIT_62(256'h3FFFC017FFA000FFFFFA003FFFFA000FFFFFFFFF02605FFC007FFFFFFFFFFFFF),
    .INIT_63(256'h00BFFFFFF803FFFFF801FFFFFFFFFE000BFFD017FFFFFFFFFFFFFEC007FFF000),
    .INIT_64(256'h7FFFFFBDFFFFFFFFFFF802FFFE83FFFFFFFFFFFFFFF9013FFFF007FFFE01FFFF),
    .INIT_65(256'hFFFFFFFF933FFFF45FFFFFFFFFFFFFFFEECFFFFF9EFFFFF83FFFFBF7FFFFFF93),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[2] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF1807FFFFFFFF87FFF8707FFFF803C7E3FFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFF9803FFFFFFFFC3FFF8303FFFF803CFE7FFFFFFFFFFFFFF3F),
    .INITP_02(256'hFFFFF8803FFFFFFFFC3FFFC303FFFF801CFC7FFFFFFFFFFFFFC1FFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFC3FFFC103FFFF801CF8FFFFFFFFFFFFFF807FFCFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hE103FFFF801CF1FFFFFFFFFFFFFF803FF83FFFFFFFFFFFFFFFFFFFFFFFC403FF),
    .INITP_05(256'hC03FFFFFFFFFFFFFF803FF81FFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFE1FFF),
    .INITP_06(256'hFFFFFF801FF00FFFFFFFFFFFFFFFFFE03FFFF001FFFFFFFFE1FFFF001FFFF801),
    .INITP_07(256'h807FFFFFFFFFFFFFFFFC00FFFF801FFFF03FFF0FFFF001FFFF801F0FFFFFFFFF),
    .INITP_08(256'hFFFFFFFF0003FFF800FFFE00FFF0FFFF801FFFF800FFFFFFFFFF81FFFFF808FF),
    .INITP_09(256'h1FFFC00FFFC003FF07FFF801FFFFC00FFFFFFFFFF003FFFF804FF833F80FFFFC),
    .INITP_0A(256'h001FF87FFFC01FFFFC00FFFFFFFFFE001FFFFC067F831F80FFFF03F0FFFFF000),
    .INITP_0B(256'h00FFFFC00FFFFFFFFFC0007FFFC063F819FC07FFE01F03FFFE1F80FFFE00FFF8),
    .INITP_0C(256'hFFFFFFFC0003FFFC033FC1CFC07FFE10F01FFFE3FC07FFF007FF80007F87FFFC),
    .INITP_0D(256'h1FFFE031FC1E7C07FFC3C780FFFE3FC03FFF007FF80003FC3FFFE00FFFFC007F),
    .INITP_0E(256'hE7E03FFC7E7C07FFE3FE03FFF807FF83803FC3FFFF00FFFFC007FFFFFFFFC000),
    .INITP_0F(256'hC03FFF3FF01FFF803FF83E01FC1FFFF00FFFFE007FFFFFFFFC0C00FFFE039FC1),
    .INIT_00(256'h26BFFFFFFFFFFF560066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF170000000000000000006FFFFFFF8600),
    .INIT_02(256'h0097FFFFFFFFFFFFFFFFFFFFFFFFFFFF47000000001FFF3700000000001FFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF960000),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFF5D0000B4FF430000000000000002C1FFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF07B0E6B7FFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFF3F00000000000000000007FFFF87000067FFFFFFFFFF4700004FFFFF),
    .INIT_0B(256'hFFFFFFFFFF7600000036F79700000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67000000C6FFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h03000025E51200000000000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFC748000000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h00009EFFFF07004EFFFFFFFFFFBF280056F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h000000000026FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7700000000000000),
    .INIT_15(256'hFFFFFFFFFFF736000010DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7060000003FE7),
    .INIT_16(256'h003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB000088FA8000000000000),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h00000000DEFFFFFFFFFFFFFFFFFFFFFFFF6780901FEFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E0000),
    .INIT_1C(256'hB74E000E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFF9F00000000000000000036FFFF0F0076FFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE00000046F72E0000000000AFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000017FF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFF16C003629000000000000000079FFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFBF08000000408FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC70000000000000000F6FFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hDF00000000000000000000D7FF9F00086FFFE71720000657FFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFDF2E0000002F7600000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFC70600004EFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'h00760E00000000000000C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFD79FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF38),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFF870000000000000000005FFFFFFFFFFFFFFFFFFF2F00000000001057),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFEE000010000000266FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h0000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2600000000000000000067),
    .INIT_31(256'hFFFFFF8E0000006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF470000002EA6000000),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h005807CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97120000000000000000001EF1),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7EE40000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h860020C7FFFFFFFFFFFFFFFFFE0000000000000857FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD700000000000008),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFF6600000000000000000007FFFFFF5F8616004E07DFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFF6E0000002600000000005EFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFAFB6280000209037EFFFFFFFFFFFFFFFFFFFFFFF570000009EFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFF4B0000000000000000000063FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF071000000000000000001007F7FFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h3F00000000001E06108FFFFFFFFFFFFFFFE7BFBFBFAFD7FFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF460000000000008F8E00A6FFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD638000018801FD7FFFFFFFFFFFFFF),
    .INIT_42(256'h0000000000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'h8F00000000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE0000),
    .INIT_44(256'h1FEFFFFFFFFFFFFFFFFFFFF72E000008C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'h00000000000000B6FFFFFFFFFFFFFFFFFFFFFFFFFFFF57080000000000000030),
    .INIT_46(256'hFE0000000000000000000000006ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE80000),
    .INIT_47(256'h87FFFFFFFFFFFFFFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFC60000000008D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57CEEE),
    .INIT_49(256'hFFE6000000000000DEC7160067FFFFFFFFFFFFFF7F0000000000BF57003EDFFF),
    .INIT_4A(256'hFFFFFF87200000000000000010DED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00000000000000000026FFFFFFFF),
    .INIT_4D(256'hEE000000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE00000000000000000097),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFF970800000000000000000000508FFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'h000040AFFFFFFFFFFFFFFFFFFFFFFFFFFFF990000000000000000018EFFFFFFF),
    .INIT_50(256'h2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB70800000EB6FEDE3E00000000),
    .INIT_51(256'h77FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A60000000096CFFFFFFFFFB748000010),
    .INIT_52(256'h3EE7FFFFFFFFFFFFE7060000000077FFEE00AEFFFFFFFFFFFFAE000000000000),
    .INIT_53(256'h00002857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8700000000000036FF1700),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF200000000000000000),
    .INIT_55(256'hFFFFFFFFFF5F00000000000000000000C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFCF16000000000000000027FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h000000000000000000000827FFFFFFFFFFFFFFFFBF0000002EF7FFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFE14600000000000000005DFFFFFFFFFFFFFFFFFFFFFFFF960000),
    .INIT_59(256'hFFFFFFFFFFFFFFE600001EA7FFFFFFF71F06000000000030CFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFEE0000000000004EBFFFFFFF3F0000000000BEE7FFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'h0000D6FFF75E004FFFFFFFFFFF27000000000000C6FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFF2E00000000000087F75600EEFFFFFFFFFFFFFF6E0000),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFEE00000000000000000000000000DEF7FFFFFFFFFFFF),
    .INIT_5E(256'h000000005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'h00000000000000B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF000000000000),
    .INIT_60(256'hDEFFFFFFFFFFFFFFFF8E0000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00),
    .INIT_61(256'h00000000BCFFFFFFFFFFFFFFFFFFFFFFEF100000000000000000000000000000),
    .INIT_62(256'hFFFFFFFFFF4700000000000056E7FFFFFFFFFFFFFFFFFFFFFFFFFF8D04000000),
    .INIT_63(256'hE7FFFFFF8E000000000076E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E000017FF),
    .INIT_64(256'hFFC700000000000026F7FFFFFFFFFFFFFFFFFFFFFFFFBF080000661FCE06004E),
    .INIT_65(256'h0000000000D6FF8F0008AFFFFFFFFFFFFF07000000003EFFFFAF0E20C7FFFFFF),
    .INIT_66(256'h00000000000000000000000000A6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC600),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E00),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E000000000000000000F6FFFFFFFFFFFFFF),
    .INIT_69(256'h0076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF360000000000000056FFFFFFFF),
    .INIT_6A(256'hFFFFFFFFBF00000000000000000000000000000000E6FFFFFFFFFFFFFF570000),
    .INIT_6B(256'h00B6FFFFFFFFFFFFFFFFFFFFFFFFFFFF700000000000000022F7FFFFFFFFFFFF),
    .INIT_6C(256'hDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF560000A7FFFFFFFFFFFFFFCE0000000000),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFE6000096F7FFFF7F1600BEFFFFFFCF26000000000076),
    .INIT_6E(256'hFFFFFFFFFFC70000000000AFFFFF17007EFFFFFFFFFF7600000000000077FFFF),
    .INIT_6F(256'h0000A6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF7700000000000026F7FFC6007EFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_71(256'hFFFFA600000000000000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFF3F0000000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h4F76000000000000000037FFFFFFFFFFFFF72E000000A7FFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFF0100000000000000007DFFFFFFFFFFFFFFFFFFFFBF000000000E27B7),
    .INIT_75(256'hFFFFFFB60000AFFFFFFFFFFFFFFFEF4E00000000000057FFFFFFFFFFFFFFFFFF),
    .INIT_76(256'h00AFFFFFFFFF1F00006FFFFFFF6700000000000066EFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFF76E0027FFFFFFFF1F000000000000CEFFFFFFFFFFFFFFFFFFFFFFFF3600),
    .INIT_78(256'hFFFFFFFFFFFFF71E00000000000077FFDF360047FFFFFFFFFFFF76000000000F),
    .INIT_79(256'hFFFFFFFFFFFF0000000000EEAF679E0000000000000000EEFFFFFFFFFFFFFFFF),
    .INIT_7A(256'h1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h0000000077FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F000000000000000000),
    .INIT_7C(256'hFFFFFFFFFFFFEE000000CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E000000),
    .INIT_7D(256'h00E8FFFFFFFFFFFFFFFFFFFFD700000000EEFFFFFFFF3F16000000000000089F),
    .INIT_7E(256'hFFFFFF8F00000000000028DFFFFFFFFFFFFFFFFFFFFFFFFF8D00000000000000),
    .INIT_7F(256'hFFFFCE000000000000B6FFFFFFFFFFFFFFFFFFFFFFFFFFBF4E0097FFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF803FF87F00FE1FFFF807FFFE007FFFFFFFFC1F00FFFE01CFE0F3E03FFC7E3),
    .INITP_01(256'h807E1FFFF807FFFE007FFFFFFFFC1F807FFF01C7E0F1E03FFC7F3E03FFFFFF00),
    .INITP_02(256'h3FFFE003FFFFFFFFC1FC03FFF01E7E0F9F01FFC7F1F01FFFFFF80FFF803FF87F),
    .INITP_03(256'hFFFFFE1FE03FFF00F3F07CF01FFC7F9F00FFFFFF807FFC03FFC3FC07F0FFFFC0),
    .INITP_04(256'hFFF80F3F07C701FFC7F9F807FFFFFC07FFC01FFC3FC03F0FFFFC03FFFF003FFF),
    .INITP_05(256'h780FFC7F9FC07FFFFFC03FFC01FFE1FE03F07FFFC01FFFF003FFFFFFFFE1FF01),
    .INITP_06(256'h03FFFFFE03FFE01FFE1FF01F87FFFE00FFFF003FFFFF9FFF0FF01FFF80F9F07E),
    .INITP_07(256'hFE01FFF0FF01F83FFFE00FFFF003FFFFFCFFF07F80FFF80FCF03F380FFC7F8FC),
    .INITP_08(256'h1FC3FFFE007FFF001FFFFFCFFF87F80FFFC07CF83F180FFC3FCFE03FFFFFE03F),
    .INITP_09(256'hFFF801FFFFFE7FFC3FC0FFFC07E783F9C07FE3FCFE01FFFFFE01FFE00FFF87F8),
    .INITP_0A(256'hE7FFF0FC07FFC07F383FCC07FE3FCFF01FFFFFF01FFF00FFFC3F80FC3FFFE003),
    .INITP_0B(256'hFC03F1C1FC603FE1FCFF00FFFFFF00FFF00FFFF0780FE1FFFE003FFF801FFFFF),
    .INITP_0C(256'h03FE1FCFF80FFFFFF00FFF007FFFE0C0FE1FFFF021FFF801FFFFFF3FFF83E07F),
    .INITP_0D(256'h7FFFFF807FF807FFFFFC0FE0FFFF020FFF801FFFFFF3FFFF0607FFE03F9C1FE2),
    .INITP_0E(256'h803FFFFFC07F0FFFF0107FFC00FFFFFF9FFFFFE03FFE03FCC1FF201FF1FCFF80),
    .INITP_0F(256'hF0FFFF0187FFC00FFFFFF9FFFFFE03FFE03FE01FF001FF0FCFF807FFFFF807FF),
    .INIT_00(256'h000000000036FFFFFFFFFFFFFFFFFFFFFFEF000026FFFFFFFFFFF756005EFFFF),
    .INIT_01(256'h0000C6FFFF67002EDFFFFFFFFFFF1F000000007EFFFFFF9F0618C7FFFFFFCF06),
    .INIT_02(256'hFFFFFF7F2E0000000000000057FFFFFFFFFFFFFFFFFFFFFFFFFFFFB600000000),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF260000009EFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFF9F00000000000000000000B7FFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00000000000000DEFFFFFFFFFFFFFF),
    .INIT_06(256'hFF1E0000003FFFFFFFFFFFA72E0000000000004EEFFFFFFFFFFFBF00000018DF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFF9240000000000000054FFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFBE000000000000DE),
    .INIT_09(256'hFFFFFFFFFFBF00003EFFFFFFFFFFFF5F00007FFFFFFFE73E0000000000000FFF),
    .INIT_0A(256'hFFFFC70000000008DFFFFFFFFE0096FFFFFFFF8600000000000087FFFFFFFFFF),
    .INIT_0B(256'h20C7FFFFFFFFFFFFFFFFFFFFFFFFFF5F00000000000026F7FFFFA600DEFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF76000000FEFFFFFFFFFFCF4E000000000000),
    .INIT_0D(256'h00000000000000000057FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFF8E00000000000008AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E),
    .INIT_0F(256'hAF16000000000000FEFFFFFFFFFFFF8E00000027FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFC40000000000000000C9FFFFFFFFFFFFFFFFFFFFA60000000FFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFC70E000000000010B7FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFF5600B6FFFFFFFF7F000000000000089FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hF75E003FFFFFFF3F000000000000DEFFFFFFFFFFFFFFFFFFFF8F00003EFFFFFF),
    .INIT_14(256'hFFFFFFE70E0000000000007FFFFFD7260897FFFFFFFFFF76000000004FFFFFFF),
    .INIT_15(256'hFFFFF6000000B6FFFFFFFFFFFFCF46000000000000AEFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h0086FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E000000000000000000E6FFFF),
    .INIT_18(256'hFFFFFF5700000056FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFF4F0000006EFFFFFFFFFFFFFF6F00000000000010BFFFFF),
    .INIT_1A(256'hFFD6000000000000D6FFFFFFFFFFFFFFFFFFFFFFFF6300000000000000003FFF),
    .INIT_1B(256'hBE0000000000005EF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h000036FFFFFFFFFFFFFFFFFFFFBF000018FFFFFFFFFFFFFF1F0018EFFFFFFFFF),
    .INIT_1D(256'hFFFFFF57006EF7FFFFFFFF1F00000000B6FFFFFFFF8F0620C7FFFFE70E000000),
    .INIT_1E(256'hFFFFA7160000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFF9E000000000000DE),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA700000026F7FFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFF1700000000000000000086FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF460000000000000047FFFFFFFFFFFFFFFFFF),
    .INIT_22(256'h00009FFFFFFFFFFFFFFFD6000000000000BEFFFFFFFFFFF72E0000007FFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFEF1800000000000000BAFFFFFFFFFFFFFFFFFFFFEF2E00),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB70600000000000E99FFFF),
    .INIT_25(256'hFFBF000000D7FFFFFFFFFFFFD706007FFFFFFFFFD726000000000000E4FFFFFF),
    .INIT_26(256'h0000000026F7FFFFFFFFE60096FFFFFFAE00000000000087FFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFF470000000000003EFFFFFFFFA6001FFFFFFFFFC7),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFF7E00000047FFFFFFFFFFFFFF270000000000007EFF),
    .INIT_29(256'h00000000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FF7),
    .INIT_2A(256'hFFFFBE0000000000000028D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F00000000),
    .INIT_2B(256'h000000000008C7FFFFFFFFFFFE000000A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h00000000000038FFFFFFFFFFFFFFFFFFFFFF370000007EFFFFFFFFFFFFFFE736),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFF96000000000000D4FFFFFFFFFFFFFFFFFFFFFFFFAE00),
    .INIT_2E(256'hFF6E0007FFFFFFFFFF37000000000000007DFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'h003FFFFF5F000000000000DCFFFFFFFFFFFFFFFFFFF70000007FFFFFFFFFFFFF),
    .INIT_30(256'hD706000000000000A7FFFFFFD72618BFFFFFFFFF5E0000000087FFFFFFFFEF3E),
    .INIT_31(256'h0000003EEFFFFFFFFFFFFFFF6E0000000000007FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E0057FFFFFFFFFFFFFFFFFFFFFF87),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF0E000000000000000000B7FFFFFFFFFF),
    .INIT_34(256'hC706000008C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0000000000000000A6),
    .INIT_35(256'hFFFFFFFFFFFFFF8E00000027FFFFFFFFFFFFFF3F000000000000EEFFFFFFFFFF),
    .INIT_36(256'h000000000012EDFFFFFFFFFFFFFFFFFFFFFF530000000000000000B7FFFFFFFF),
    .INIT_37(256'h000000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F00),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFF56000027FFFFFFFFFFFFFFDE009EFFFFFFFFFFF75E00),
    .INIT_39(256'hFF57007EFFFFFFFFFE00000000EEFFFFFFFFFF7F0020C7FFF726000000000026),
    .INIT_3A(256'h970000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFF760000000000000FFFFFFF),
    .INIT_3B(256'hFFFFFFFFFF670076FFFFFFFFFFFFFFFFFFFFFFFFDE000000DEFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFF7E00000000000000000047FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFF9F00000000000000000057FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'h87FFFFFFFFFFFFF746000000000026F7FFFFFFFFFF96000000F6FFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFE7100000000000000039FFFFFFFFFFFFFFFFFFFFFFD74E000008),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF260000000000001DFFFFFFFFFF),
    .INIT_41(256'h00C6FFFFFFFFFFFFFF3F004EFFFFFFFFFFFF6F00000000000000A9FFFFFFFFFF),
    .INIT_42(256'h0046FFFFFFFFFFFFC60096FFFFD600000000000063FFFFFFFFFFFFFFFFFFA600),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFF070000000000007EFFFFFFFFFFA60027FFFFFF9F000000),
    .INIT_44(256'hFFFFFFFFFFFFFFFFF7760000003FFFFFFFFFFFFFFF9E000000000008C7FFFFFF),
    .INIT_45(256'h0000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E0097FFFFFF),
    .INIT_46(256'h000000000000000028C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00000000000000),
    .INIT_47(256'h00000077FFFFFFFFFF6F0000002EF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70E),
    .INIT_48(256'h000000B6FFFFFFFFFFFFFFFFFFFFFFFFCF5E00001887FFFFFFFFFFFF2F000000),
    .INIT_49(256'hFFFFFFFFFFFFFFC60000000000003CF5FFFFFFFFFFFFFFFFFFFFFF9C00000000),
    .INIT_4A(256'hFFFFFFFFFFFFFF7E000000000000B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFF8F000000000000A2FFFFFFFFFFFFFFFFFF1F00002EFFFFFFFFFFFFFF7F0018),
    .INIT_4C(256'h0000000010EFFFFFFFFFD72610AFFFFFFF3600000000B7FFFFFFFFFFDF36002F),
    .INIT_4D(256'h000847FFFFFFFFFFFF7F0000000000001FFFFFFFFFFFFFFFFFFFFFFFFF8F0000),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00AEFFFFFFFFFFFFFFFFFFFFFFFFE78E00),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFF6F00000000000000000076FFFFFFFFFFFFFFFFFF),
    .INIT_50(256'h00004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6600000000000000000096FFFF),
    .INIT_51(256'hFFFFFFFFFFE7CE0000080FF7FFFFFFFFE7160000000000BEFFFFFFFFFFFF4600),
    .INIT_52(256'h00000043FFFFFFFFFFFFFFFFFFFFFF3F000000000000000EE7FFFFFFFFFFFFFF),
    .INIT_53(256'h000006CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F00000000),
    .INIT_54(256'hFFFFFFFFFFFFAF00000087FFFFFFFFFFFF8F0000FFFFFFFFFFFFFF7F00000000),
    .INIT_55(256'h0056E7FFFFCE0000000017FFFFFFFFFFFF5F00109FFF4E000000000006CFFFFF),
    .INIT_56(256'h0000000076FFFFFFFFFFFFFFFFFFFFFFFFF7160000000000007FFFFFFFFFFF57),
    .INIT_57(256'hFFFFF73608B7FFFFFFFFFFFFFFFFFFFFFFFFF707060000DEDFFFFFFFFFFF4E00),
    .INIT_58(256'hDF00000000000000000018FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFBE00000000000E3600000027FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hD62F677FE7B600000000002EFFFFFFFFFFFF170000006EFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFDB06000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF878E000038),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF0E00000000000058FFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFBF0000FFFFFFFFFFFFFFFF6E000000000000E4FFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFA60046E70F000000000000DAFFFFFFFFFFFFFFFFFF3E0000F6FF),
    .INIT_5F(256'hFFFFFFFFFFFF8E000000000000FEFFFFFFFFFFFFAE00B6FFFF67000000007EFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFB7BE060020C61F577FCF07000000000000DFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F00BEFFFFFFFFFFFF),
    .INIT_62(256'h000007000000109FFFFFFFFFFFFFFFFFFFFFFFFFFF5E000000000000000000A7),
    .INIT_63(256'hAFFFFFFFFFFFDF0E00000097FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1700000000),
    .INIT_64(256'h2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7179E461E2E5E7F5F000000000000),
    .INIT_65(256'hFFFFFFFF860000000000000061FFFFFFFFFFFFFFFFFFFFFF7E00000000000000),
    .INIT_66(256'hFFFFFFFF4F00000000000012DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'h000000000010CFFFFFFFFFFFFFFFFFE6000046FFFFFFFFFFFF7F0000FFFFFFFF),
    .INIT_68(256'h0086FFFFFFFFFFFFDF3E0017FFE70000000008DFFFFFFFFFFFFFCF1E00AEC700),
    .INIT_69(256'hAE4E2E265637B700000000000055FFFFFFFFFFFFFFFFFFFFFFFF0F0000000000),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFEF2E08BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD737),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFCE00000000000000000047FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0000000000001FD600000056E7FFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE70E000000000037FFFFFFFFFFFFCE000000C6),
    .INIT_6E(256'h66FFFFFFFFFFFFFFFFFFFFFF13000000000000000017FFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00000000000000),
    .INIT_70(256'hFFFFFFAF0000009FFFFFFFFFFF5F000EFFFFFFFFFFFFFFFFEF26000000000000),
    .INIT_71(256'h37FF1E000000007FFFFFFFFFFFFFFF3F00000F5E000000000000CEFFFFFFFFFF),
    .INIT_72(256'h00E0FFFFFFFFFFFFFFFFFFFFFFFF7F0000000000001EFFFFFFFFFFFFFF970600),
    .INIT_73(256'h3F00BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4600000000),
    .INIT_74(256'h00000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFF97000000000000B6EF56000000BEFFFFFFFFFFFFFFFFFFFFFFFF4F0000),
    .INIT_76(256'hFFFF6E0000000000D6FFFFFFFFFFFF9F00000010D7FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hA7000000000000000020DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFF8700000000000000005FFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFF170046FFFFFFFFFFFFFFFFFFDE00000000000020DFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFF7E00000000000000000008A7FFFFFFFFFFFFFFFF6E0000F6FFFFFFFF),
    .INIT_7B(256'hFFFFE700000000000000B7FFFFFFFFFFFFFF3700089000000000007FFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC600000000002AF7FFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74608AFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'h9F060000003FFFFFFFFFFFFFFFFFFFFFFFC700000000000000000066FFFFFFFF),
    .INIT_7F(256'hFFFFFFFF7E0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC70000000000005EFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFC00FFFFFFCFFFFFF03FFE03FE01FF800FF8F8FFC03FFFFF803FF801FFFFFC07),
    .INITP_01(256'hFFFFFF01FFE03FF81FFC00FF8F8FFC03FFFFF803FF801FFFFFE07F87FFF01C3F),
    .INITP_02(256'h01FFC3FFC067FC79FFC01FFFFF801FFC04FFFFFE07F87FFF01C1FFC00FFFFFFC),
    .INITP_03(256'h3FC71FFE01FFFFF808FFC04FFFFFE07FC3FFF01E0FFE00FFFFFFE7FFFFF00FFE),
    .INITP_04(256'hFFFF80CFFC067FFFFE07FC3FFF01F0FFE007FFFFFE7FFFFF00FFF01FFFFFFE07),
    .INITP_05(256'h73FFFFE07FC1FFF01F07FE007FFFFFF3FFFFF027FF01FFFFFFF8F3FE31FFE04F),
    .INITP_06(256'h1FFF01F83FE007FFFFFF9FFFFF027FF01FFFFFFFFF9FE23FFE067FFFFC0C7FC0),
    .INITP_07(256'h007FFFFFF8FFFFF033FF01FFFFFFFFFCFF03FFE067FFFFC0E7FE073FFFFE07FE),
    .INITP_08(256'hFFFF031FF01FFFFFFFFFE7F07FFE073FFFF80E3FE039FFFFE07FE0FFF01FC1FF),
    .INITP_09(256'hFFFFFFFFFF1F8FFFE079FFFF80F1FE07CFFFFE07FF0FFF01FE0FF007FFFFFFCF),
    .INITP_0A(256'h007FFE078FFFF80F1FE07C7FFFC0FFF87FE03FE07F007FFFFFFE7FFFF039FF01),
    .INITP_0B(256'hFF81F8FE07E3FFFC0FFF83FE03FF07F007FFFFFFF3FFFE03CFF01FFFFFFFFFF8),
    .INITP_0C(256'h1FFF80FFFC1FC03FF83F007FFFFFFF1FFFE07C7F01FFFFFFFFFFE003FFC07C7F),
    .INITP_0D(256'hF807FFC1E007FFFFFFF8FFFE07E3E03FFFFFFFFFFF8E1FFC07E3FFF81FC7E07F),
    .INITP_0E(256'hFFFFFFFFC7FFC0FE1E03FFFFFFFFFFFFF0FF807F1FFF03FC3E07F8FFF81FFFC0),
    .INITP_0F(256'hF80FF0003FFFFFFFFFFFFF83F80FF8FFE03FE3E07FC7FF03FFFE00007FFE0400),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE00000000008EFFFFFF),
    .INIT_01(256'hE7000000000000080058FFFFFFFFFFFFFFFFFFFFFF380000000000001000F6FF),
    .INIT_02(256'hFF8700000000000000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h00460686FFFFFFFFFFFFFFFF57000036FFFFFFFFFFAE009EFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFE600000000000000DFFFFFFFFFFFFFFFFFBF16000000000000),
    .INIT_05(256'hFFFFFF2F0000000000001FFFFFFFFFFFFFFFFFFFFFFFFF560000000000005FFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFF5F009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFF3E000000000000000010F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFF00000000000026FFFF1700000018A7FFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFF2F000000000046FFFFFFFFFFFFFF5F00000036F7FFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFC60000000000001E3E10BFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E00000000001E1C003DFF),
    .INIT_0C(256'hF74600006FFFFFFFFF2E00FEFFFFFFFFFFFFFFFFFFF71E00000000000008B7FF),
    .INIT_0D(256'h0000A6FFFFFFFFFFFFFFFFFFFF4F000000000000009EE6004FFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFA60000000000000FFFFFFFFFFFFFFFFFFF07000000),
    .INIT_0F(256'h77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF870000000000002EEF),
    .INIT_10(256'h000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E00),
    .INIT_11(256'h00000000000000FFFFF77E00000046E7FFFFFFFFFFFFFFFFFFFFBE0000000000),
    .INIT_12(256'h000000001EFFFFFFFFFFFFFFF74600000057FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h000000000033009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7700),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFF9E000000000000F80034EBFFFFFFFFFFFFFFFFFF4F0000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFF9E000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFEE0000000000003FE74628D7FFFFFFFFFFFFFF3F00009EFFFFFF8700008F),
    .INIT_17(256'h000000000000C6FFFFFFFFFFFFFFFFFFFF876E000076CFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFC700000000000000FEFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7064EF7FFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h000000A6FFFFFFFFFFFFFFFFFFFF3F00000000000000000037FFFFFFFFFFFFFF),
    .INIT_1B(256'hFF2700000076FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFC71E),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7000000000000FFFFFFFFFFFFFF),
    .INIT_1D(256'h00000000C92400FCFFFFFFFFFFFFFFFFFFD500000000000000978E0067FFFFFF),
    .INIT_1E(256'h00000000005A0057FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD60000),
    .INIT_1F(256'h069EFFFFFFFFFFFFFFF7460000B7FFFFCE0036FFFFFFFFFFFFFFFFFFFFFF0F00),
    .INIT_20(256'hFFFFFFFFFFFFFFD7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFDE0000000076F7FF8F),
    .INIT_21(256'h0000000000004618CFFFFFFFFFFFFFFFFFFFFF4F0000000000008EFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFDE0017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFBF000000000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFF00000000000000FFFFFFFF570000000007FFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFBF000000000000FFFFFFFFFFFFFFFFEF2600000097FFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFF4E0000000000005DBF0E36DFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000BF170012C5FFFFFF),
    .INIT_28(256'h00AEFFCF1000FEFFFFFFFFFFFFFFFFFFFFFF5F000000000000271E36DFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFF3F3E16D6E7FFFFFFFE0017FFFFFFFFFFFFFF5700),
    .INIT_2A(256'hFFFFFFFFFFFFFF7F00000000000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000003700B6FFFFFF),
    .INIT_2C(256'h66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE73610AFFF),
    .INIT_2D(256'h000000FFFFFFFFFFC6000000086FFFFFFFFFFFFFFFFFFF3E0000000000000000),
    .INIT_2E(256'h00FFFFFFFFFFFFFFFFFFFE000000A6FFFFFFFFFFFFFFFFFFFFFFFFFF00000000),
    .INIT_2F(256'h002BFF1700BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0000000000),
    .INIT_30(256'hFFFFFFFFFF27000000000000BFEF3A00AAFFFFFFFFFFFFFFFFFFBA0000000000),
    .INIT_31(256'hFFFFFFFFFFFF870000000000003F2F00BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFF78E085FFFFFFFFFFFFFFF6600007FDE001ED7FFFFFFFFFF),
    .INIT_33(256'h00003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFF000000000000BF8E007FFFFFFFFFFFFFFFFFFFBF00000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67006EF7FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h0020B7FFFFFFFFFFFFFFFFA6000000000000000036FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'h000008B7FFFFFFFFFFFFFFFFFFFFFFCF0000000000002EFFFFFFFFFFE7560000),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F000000000026FFFFFFFFFFFFFFFFFFDF1E),
    .INIT_39(256'hFFFF4B00007DFFFFFFFFFFFFFFFF2500000000000007FFF76E004FFFFFFFFFFF),
    .INIT_3A(256'h003FFF86004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F000000000000),
    .INIT_3B(256'h77FFFFFFFFFFFF970600300800FEFFFFFFFFFFFFFFFFFFFFFFFFBF0000000000),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4E18),
    .INIT_3D(256'h0000CFA7064EE7FFFFFFFFFFFFFFFFCF0000000000003EFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFBE00FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF700000000),
    .INIT_3F(256'h000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFF8F0000000000006EFFFFFFFFFFFFA7160000004EE7FFFFFFFFFFFFFF0F),
    .INIT_41(256'hFFFF67000000000056FFFFFFFFFFFFFFFFFFFFFE000000A6FFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFF89000000000000F4FFFFBF1618B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000016FFFFFF74004AF1FFFFFFFFFF),
    .INIT_44(256'h4EEFFFFFFFFFFFFFFFFFFFFFFFFF970000000000003FFFC72618AFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC72E083FFFFFFFFFFFFFCE000000),
    .INIT_46(256'hFFFFFFFF0000000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF000000000006FFFFCE00D6FFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE73E0877FFFFFF),
    .INIT_49(256'hFFFFFFFFFFFF3F000000008EF7FFFFFFFFFFFF47000000000000000000FFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFDF1E00000077FFFFFFFFFFFFFFFFFFFF1F000000000000D6FF),
    .INIT_4B(256'hFF4F004EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF070000000000A6FFFFFF),
    .INIT_4C(256'hFFD6000000000066FFFFFF9D0600F0FFFFFFFFFFFFFFD700000000000009FFFF),
    .INIT_4D(256'hFFFF6700000000000047FFFF67004EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFAF46009EB7FFFFFFFF6F00000007FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFF5F000000000056FFFFD71E0067FFFFFFFFFFFFFFD70000000000005EFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF970630B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hDEFFFFFFFFFFFF7F000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'h3EDFFFFFFFFFFFFFFFFFFF860000000000003FFFFFFFFFFFFFFFFFCE00000000),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFF86000000000027FFFFFFFFFFFFFFFFFFFFFF17000000),
    .INIT_55(256'hE000048FFFFFFFFFFFFFFF24000000000013FFFFFFFFCE0086F7FFFFFFFFFFFF),
    .INIT_56(256'hFFEE0086F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF760000000000DEFFFFFFFF),
    .INIT_57(256'h78E6E688000000000867FFFFFFFFFFFFFFFFFFFFFFFF0F00000000000087FFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF760000),
    .INIT_59(256'hFF270018AFFFFFFFFFFFFFA700000000000086FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFF1F004EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD60000000000CEFFFF),
    .INIT_5B(256'h000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'h000000000000D7FFFFFFFFFFFFFFFFF77E0000000027FFFFFFFFFF7F00000000),
    .INIT_5D(256'h00000006C7FFFFFFFFFFFFFFFFFFFFFFEF460000008EF7FFFFFFFFFFFFFFB708),
    .INIT_5E(256'h00000000001DFFFFFFFFF77600A6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF0800),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFDF10000000000087FFFFFFFFE9400046E1FFFFFFFFFFFF72),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFF7E000000000000D7FFFFFFF79600A6F7FFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171E00000000004E9E00001887FF),
    .INIT_62(256'h000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFF72E00000000007FFFFFFFF7660046CFFFFFFFFFFF3F),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE0076E7FFFFFFFF),
    .INIT_65(256'hFFFFFFFFD7460000000857FFFFFFFF6700000000000000006EFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFF7700000000A6F7FFFFFFFFFFFF9600000000000086FFFFFFFFFFFF),
    .INIT_67(256'h4E0096E7FFFFFFFFFFFFFFFFFFFFFFFFFFDE0000000000AEFFFFFFFFFFFFFFFF),
    .INIT_68(256'h000066FFFFFFFFFFFF81000098FFFFFFFFFFFFB0000000000039FFFFFFFFFFD7),
    .INIT_69(256'h0000000046FFFFFFFFFFE7560096E7FFFFFFFFFFFFFFFFFFFFFFFFFF17000000),
    .INIT_6A(256'hFFFFFFFFFFFFFFE73FCEB6D667F7F76600001877FFFFFFFFFFFFFFFFFFB70000),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'h000000005EFFFFFFFFFF8F06004EB7FFFFFFFF8E00000000000047FFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFF7760066CFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00),
    .INIT_6E(256'hFFFFFFEE0000000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hBFFFFFFFF7DE000000000000005FFFFFFFFFFFFFFFFFFFFFFFAF2E000000083F),
    .INIT_70(256'hFFFFFFFF9F08000000000EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE000000007E),
    .INIT_71(256'h00F0FFFFFFFFFFB800000000006BFFFFFFFFFFFFC72E0066BFFFFFFFFFFFFFFF),
    .INIT_72(256'h4E005EBFFFFFFFFFFFFFFFFFFFFFFF971000000000006FFFFFFFFFFFFFFFEC00),
    .INIT_73(256'hFFFFFFBF2E00000827FFFFFFFFFFFFFFFF9E000000000000E6FFFFFFFFFFFFCF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h00002037F7F70F00000000000000C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFE776004097FFFFFFFFFFFFFFFFFFFFFFCF2800000000006FFFFFFFFFFFFFE6),
    .INIT_77(256'h5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'h5EFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E000000007E2FF6100000000000000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE75E0000000010A6FEE64800000000000000),
    .INIT_7A(256'h00BDFFFFFFFFFFFFFFAF3E002037FFFFFFFFFFFFFFFFFFAF30000000000017FF),
    .INIT_7B(256'hFFFF7F280000000000C6FFFFFFFFFFFFFFFFF56E000025FFFFFFFF8800000000),
    .INIT_7C(256'hFFFFFFFF3F00000000000000A7FFFFFFFFFFFFFFE776001827F7FFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E00000096C7FF),
    .INIT_7E(256'h008EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFDF760000000000C6FFFFFFFFFFFFFFF7660000001820000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFC0F00FFC3F807FF0E07FE1FE03FFFF0000FFFF0000FFFFFFFFE3F),
    .INITP_01(256'hE0001FFE0000FFF8007FF00007FFFF8000FFFF8001FFFFFFFFF0FF01FF8007FF),
    .INITP_02(256'h1FFFC00FFFC001FFFFFC001FFFFC001FFFFFFFFF80003FFC007FFFFFFFFFFFFF),
    .INITP_03(256'h003FFFFFF007FFFFF003FFFFFFFFFE0007FFE00FFFFFFFFFFFFFFF0003FFF800),
    .INITP_04(256'hFFFFFFC0FFFFFFFFFFF801FFFF01FFFFFFFFFFFFFFFC007FFFC007FFFE01FFFE),
    .INITP_05(256'hFFFFFFFFE0FFFFFC3FFFFFFFFFFFFFFFF83FFFFF81FFFFF83FFFFC1FFFFFFFC0),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF76000807EFFFFFFFFF),
    .INIT_01(256'hFFFFFFAF2E000000000000000000000000000026EFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFCF3600000000000000000000000000000087FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h0000604FEFFFFFFFFFFF47200000000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFD13E0000F4F7FFD7120000000036FFFFFFFFFFFFFFFFFFCF5E),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFE78600004017AFFFFFFFFF97BE00000000000076E7FFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFA72E00000010D67FDFD72708000000000000BE),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFBF2E000000000000000000000067FFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFE78E0000482FDFFFFFFFFFFF7740000000000076EF),
    .INIT_0A(256'h0000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'h00000000000000F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF5E000000000000),
    .INIT_0C(256'h00000000BEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF4E000000000000),
    .INIT_0D(256'h54FE680000000000DAFFFFFFFFFFFFFFFFFFFFE7AE0000001888CEEEB0380000),
    .INIT_0E(256'h00000000285858200000000000000076CFFFFFFFFFFFFFFFFFFFFFFFB1300000),
    .INIT_0F(256'hFFFFCF6600000000000000000000000000004ED7FFFFFFFFFFFFFFFFFFFFF7D6),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'h0000000000000000A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hF7E60000001078C6F6B8480000000000007EE7FFFFFFFFFFFFFFFFFFFF8F1600),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE7CE000000000000000000000076F7FFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFD78E0000000000000000000000AEFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFF471E00000000000000000000001627FFFFFFFFFFFFFFFF),
    .INIT_17(256'h0000CEEFFFFFFFFFFFFFFFFFFFFFFFFFFFAD4200000000000000000EB5FFFFFF),
    .INIT_18(256'h00000000003EAFFFFFFFFFFFFFFFFFFFFFFFFFFF572600000000000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FE0E000000000000),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'h00000006EEF7FFFFFFFFFFFFFFFFFFFFFFFF871E000000000000004ED7FFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F460000000000000000),
    .INIT_1D(256'hFFFFFF7F5E0000000000000000C6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFF2F2E000000000000000607FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h26000000000000000EC6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFD992000000000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFE),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFDFFE1E0000000000000000767FFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFB7C60E000000000000000ED6E7FFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFB75E00000000004ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFEF1F3600000000000000069EA7FFFFFFFFFFFFFFFF),
    .INIT_26(256'hBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DE6E3E4E96FE),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF27760E00002ECE),
    .INIT_29(256'h00566FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF57DE7E4E6EBE3FD7FFFFFF),
    .INIT_2A(256'h4FD6763E5E8EFE97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F540000),
    .INIT_2B(256'hFFFFFFE73FCE7E465EBE27D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'h36DEE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFF777EE86565EAE27C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73F7616),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD83A3FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24
   (\douta[22] ,
    \douta[23] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25
   (\douta[22] ,
    \douta[23] ,
    ram_ena,
    clka,
    ena,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  output ram_ena;
  input clka;
  input ena;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire ena;
  wire ram_ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0 
       (.I0(addra[12]),
        .I1(ena),
        .I2(addra[15]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra[11]),
        .O(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[5] ,
    clka,
    \addra[12] ,
    ena,
    addra);
  output [3:0]\douta[5] ;
  input clka;
  input \addra[12] ;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [3:0]\douta[5] ;
  wire ena;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:4],\douta[5] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[3] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[3] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[3] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BFFFFF),
    .INIT_0F(256'hFFFFFFFFFFC100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF),
    .INIT_10(256'h180FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_12(256'hFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F07FFFFFFF),
    .INIT_13(256'hFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F83FFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F817FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFE1F807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFF),
    .INIT_16(256'hFFFFFFFFF07E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFE05FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87),
    .INIT_19(256'hFFFFFFD8017F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBE00FFFFFFFF),
    .INIT_1A(256'hF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83E00FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F007FFFFFFFFFFFFFF8EFFFFFFFFC0007),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFE3F40BFFFFFFFFFFFFFF00FFFFFFFF80365F1FFFFFFFFF),
    .INIT_1D(256'hFFFFFFFE0FC07FFFFFFFFEFFFFF007FFFFFFE00FE2E3FFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h03FFFFFFFF1FFFFF000FFFFFFC01FF9F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h5FFFC020FFFFFFC01FF863FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FE),
    .INIT_20(256'hFFF807FFA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC03FFFFFFFC0),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F00FFFFFFFC02FFFE060FFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F01FFFFFFF001FFFE0F83FFFFFC03FFE0F),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFC1F80FFFFFFF040FFFE0F87FFFFFC07FFC1FFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFE2F00FFFFFFF1F07FFF0B81FFFFF007FFE3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h7FFFFFE1F47FFF07C3FFFFF007FFD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFF0383FFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00),
    .INIT_27(256'hF807FF5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC03FFFFFE3FC3),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83C03FFFFFF1FE1FFF8380FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E01FFFFFE3FE1FFF83C0FFFFF807FE0BFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFF3E03FFFFFF1FE1FFFC2C07FFFF007FD1BFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFF1F00FFFFFF5FF0FFFE1C07FFFF803FCBBFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFF87FFC0E07FFFF003F871FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF0E0FFFFF803F0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F01F),
    .INIT_2E(256'h03E1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF00FFFFFFFFF0FF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD100FFFFFFFFF07FFF0303FFFF8),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF3003FFFFFFFFC7FFF0707FFFF801C7F3FFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFF0407FFFFFFFF83FFFC707FFFF80187C3FFFFFFFFFFFFFEBF),
    .INIT_32(256'hFFFFFC007FFFFFFFFE7FFF8203FFFF8038FCFFFFFFFFFFFFFF80FFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFE3FFFE101FFFF8039F8FFFFFFFFFFFFFFC0FFF9BFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hE083FFFF801C51FFFFFFFFFFFFFF007FF81FFFFFFFFFFFFFFFFFFFFFFFC803FF),
    .INIT_35(256'hC41FFFFFFFFFFFFFF003FF03FFFFFFFFFFFFFFFFFFEFFFFD401FFFFFFFFC1FFF),
    .INIT_36(256'h7FFFFF800FF80FFFFFFFFFFFFFFFFFE04FFFF803FFFFFFFFE0FFFE003FFFF800),
    .INIT_37(256'h82BFBBFFFFFFFFFFFFFA017FFF000FFFE86FFF1FFFF003FFFF800F47FFFFFFFF),
    .INIT_38(256'h7FEFFFFF8001FFF801FFFE01BFF07FFF000FFFF801FFFFFFFFFF65FFFFF800FF),
    .INIT_39(256'h0FFFE017FFC005FF07FFFC01FFFF800FFFFFFFFFE00FFFFF80A7F837F81FFFFC),
    .INIT_3A(256'h000FF87FFFA00FFFFC007FFFFFFFFC001FFFF80EBF031F80FFFF05F17FFFF0F0),
    .INIT_3B(256'h01FFFFC00FFFFFFFFFC000FFFFC033F83CF807FFE01F05FFFE2F817FFC00FFFC),
    .INIT_3C(256'hFFFFFFFC0003FFFC061F8387807FFE10702FFFE3F80BFFE00FFF4000FF83FFFE),
    .INIT_3D(256'h1FFFE033F80EFE07FFC7EF01FFFF1FC07FFF807FF80003FC7FFFD01FFFFC00FF),
    .INIT_3E(256'hE3E03FFE3E3803FFF1FC03FFF007FF81403FC1FFFF00FFFFC00FFFFFFFFFC000),
    .INIT_3F(256'hC07FFF3FE01FFF003FF83F01FC1FFFF80FFFFE00FFFFFFFFFC0200FFFF03CFE0),
    .INIT_40(256'hFFF807FFC7E007E3FFFF80FFFFE007FFFFFFFFC3F00FFFF018FE1F5C07FF87F7),
    .INIT_41(256'h40FE0FFFF803FFFF007FFFFFFFFE3F003FFF01CFC0FBE01FFCFF3D01FFFBFF81),
    .INIT_42(256'h3FFFF003FFFFFFFFE3F803FFE01E7F07DF03FF8FFBF01FFFFFF01FFF801FF83F),
    .INIT_43(256'hFFFFFC1FD03FFF81F3F0F8603FFCFFAF81FFFFFFC0FFF803FF83F80FF1FFFFC0),
    .INIT_44(256'hFFF01F3E07CF00FFC7F9F807FFFFFC07FFA03FF83FE07F0FFFFC01FFFF003FFF),
    .INIT_45(256'h781FFC7F8FC07FFFFFE07FFC03FFE3FD01F87FFFE01FFFE007FFFFFFFFF0FE03),
    .INIT_46(256'h07FFFFFE05FFE01FFE0FF01F03FFFC00FFFE003FFFFF9FFE17F01FFF807BF83D),
    .INIT_47(256'hFD01FFF07F01FC7FFFE00FFFF801FFFFF9FFF8FF81FFFC07DF83F180FFE3FDFE),
    .INIT_48(256'h1F83FFFE003FFF003FFFFFCFFFC7FC07FF80FC783F3C07FC3FCFC01FFFFFC03F),
    .INIT_49(256'hFFF003FFFFFE7FF81FC0FFF80BEBC3FC807FE3FDFF03FFFFFE03FFF01FFF4BF0),
    .INIT_4A(256'hF7FFE1FC0FFFE07F583FDC03FC1F8FF00FFFFFF00FFF007FF81F41FC1FFFE007),
    .INIT_4B(256'hFC07F383FC007FF3FCFF00FFFFFE01FFF00FFFE1940FE1FFFF021FFF803FFFFF),
    .INIT_4C(256'h05FE1FCFF01FFFFFF007FF803FFFF5C07E1FFFF003FFFC00FFFFFF7FFFC3807F),
    .INIT_4D(256'hFFFFFF007FF807FFFFF80FE0FFFF0317FF800FFFFFE3FFFF0E07FFC03FD81FD0),
    .INIT_4E(256'h003FFFFFC0FF1FFFF028FFF801FFFFFFBFFFFFE03FFE07FCE1FF101FE1FCFF00),
    .INIT_4F(256'hF87FFE0387FF800FFFFFF8FFFFFE03FFC03FE41FF800FF1FCFFC07FFFFF007FF),
    .INIT_50(256'hFE01FFFFFFDFFFFFE03FFF03FE01FFC00FF9F9FF807FFFFF007FFC0BFFFFFE07),
    .INIT_51(256'hFFFFFE00FFE01FF01FF8047F879FFE03FFFFF81BFF80FFFFFFC07F8FFFF01C5F),
    .INIT_52(256'h01FF85FFC047FCF0FFE01FFFFFC0AFF805FFFFFE0FF87FFF01E0FFE00FFFFFFE),
    .INIT_53(256'h7FC73FFC05FFFFFC01FFC047FFFFC07F87FFF01D0FFE00FFFFFFC7FFFFE01FFF),
    .INIT_54(256'hFFFFC0D7FC06FFFFFE07F83FFF01F07FE00FFFFFFF7FFFFF017FE01FFF7FFF0E),
    .INIT_55(256'h37FFFFE07FE1FFF01F03FF007FFFFFEDFFFFF02FFF01FFFFFFFF7BFE2BFFE03F),
    .INIT_56(256'h1FFE01F43FE00FFFFFFF1FFFFF027FF03FFFFFFFFF9FE37FFC04FFFFF80A7FE0),
    .INIT_57(256'h007FFFFFFDFFFFF001FE03FFFFFFFFFDFF27FFE063FFFF80C7FC031FFFFE07FF),
    .INIT_58(256'hFFFE033FF03FFFFFFFFFC7F03FFE065FFFFC1F3FC07FFFFFC0FFF0FFE01FA0FE),
    .INIT_59(256'hFFFFFFFFFE3F07FFC030FFFFC0F3FE0387FFFC07FF8FFF03FE0FE007FFFFFFAF),
    .INIT_5A(256'h803FFC038FFFFC1F0FE07C7FFFC07FF8FFE03FE0FF007FFFFFFEFFFFF07CFF03),
    .INIT_5B(256'hFFC0F07F07F3FFF807FF03FE03FF83F00FFFFFFFF3FFFF0397E01FFFFFFFFFF4),
    .INIT_5C(256'h2FFFC0FFFC1FE03FF83E007FFFFFFFAFFFE07C3F03FFFFFFFFFFF025FFE07E7F),
    .INIT_5D(256'hFC07FF81E00FFFFFFFFC7FFE0FC3E01FFFFFFFFFFEB63FFC07D5FFF81F8FF07F),
    .INIT_5E(256'hFFFFFFFFA7FF807E1C01FFFFFFFFFFFFF07FC07E3FFF81FC7F03F0FFF81FFFC1),
    .INIT_5F(256'hFC0FF0803FFFFFFFFFFFFF05F807F57FE03FE1E07FA7FE83FFFD0A00FFFC0B00),
    .INIT_60(256'hFFFFFFFFFFF83E01FF82FC0BFF9F0FFD07C03FFFE80007FFE00007FFFFFFFF0F),
    .INIT_61(256'hC0001FFF06017FFCC0FFE08C0FFFFF8001FFFFC000FFFFFFFFE07F02FF8003FF),
    .INIT_62(256'h0FFF800FFFA002FFFFFC001FFFF8003FFFFFFFFF86C05FFA007FFFFFFFFFFFFF),
    .INIT_63(256'h003FFFFFE003FFFFF801FFFFFFFFFE0007FFD00FFFFFFFFFFFFFFF8005FFF800),
    .INIT_64(256'hFFFFFFEBFFFFFFFFFFEC02FFFF80FFFFFFFFFFFFFFFC00BFFFF00FFFFF01FFFF),
    .INIT_65(256'hFFFFFFFFE63FFFFFDFFFFFFFFFFFFFFFEADFFFFE7BFFFFF45FFFF73FFFFFFFA0),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[3] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5
   (\douta[4] ,
    clka,
    \addra[15] ,
    ena,
    addra);
  output [0:0]\douta[4] ;
  input clka;
  input \addra[15] ;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[4] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFF),
    .INIT_0F(256'hFFFFFFFFFFC0017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF),
    .INIT_10(256'h3C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_12(256'hFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C03FFFFFFF),
    .INIT_13(256'hFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00FFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F017FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFE1F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFF),
    .INIT_16(256'hFFFFFFFFF9FA03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFD8FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F),
    .INIT_19(256'hFFFFFFE803FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FE02FFFFFFFF),
    .INIT_1A(256'hF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F01FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1F00FFFFFFFFFFFFFFF91FFFFFFFF80003),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFD1F00FFFFFFFFFFFFFFF807FFFFFFF00183E0FFFFFFFFF),
    .INIT_1D(256'hFFFFFFFE1FC07FFFFFFFFBFFFFF005FFFFFFF017C0E3FFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h03FFFFFFFF8BFFFF003FFFFFFD03FF163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h7FFFE040FFFFFFE03FF843FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F8),
    .INIT_20(256'hFFFC07FFE67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC03FFFFFFFE0),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC01FFFFFFF802FFFE0F07FF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F00FFFFFFF040FFFC0607FFFFF803FFE0F),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFE3E007FFFFFF0E07FFE0783FFFFFC03FFF1FFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFE1F807FFFFFF0F07FFE0707FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h3FFFFFE1FC7FFE0783FFFFF807FFD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFF0781FFFFF807FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F00),
    .INIT_27(256'hF803FFC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C07FFFFFF1F83),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7803FFFFFE1FE3FFF81C0FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFC5E01FFFFFE3FE1FFF83C0FFFFF803FEABFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFF3C00FFFFFF3FF1FFF80C1FFFFF003FE79FFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFF0F00FFFFFF3FE1FFFE1C0FFFFF803F8FBFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFF9FFFE1607FFFF007F079FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFE070FFFFF803F0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8701F),
    .INIT_2E(256'h01F1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87007FFFFFFFF0FF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7007FFFFFFFF0FFFE8E07FFFF8),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE3003FFFFFFFF83FFF0303FFFF003CFE7FFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFF1807FFFFFFFFC3FFFC603FFFF8018FC3FFFFFFFFFFFFFCFF),
    .INIT_32(256'hFFFFFC407FFFFFFFFE1FFFC307FFFF8018FE7FFFFFFFFFFFFF80FFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFE1FFFC183FFFF0039F87FFFFFFFFFFFFFC07FFC7FFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hD183FFFF0008E8FFFFFFFFFFFFFF007FF81FFFFFFFFFFFFFFFFFFFFFFFEC03FF),
    .INIT_35(256'hE07FFFFFFFFFFFFFF001FF80FFFFFFFFFFFFFFFFFF97FFFD401FFFFFFFFC1FFF),
    .INIT_36(256'hFFFFFF002FF807FFFFFFFFFFFFFFFFF00FFFE001FFFFFFFFE1FFFE181FFFFC01),
    .INIT_37(256'h803FFDFFFFFFFFFFFFF8007FFF001FFFFCBFFE0FFFF881FFFFC00E03FFFFFFFF),
    .INIT_38(256'h7FFFFFFF8005FFFC01FFFC017FF87FFF001FFFFC00FFFFFFFFFF207FFFF801FF),
    .INIT_39(256'h1FFFC00FFF8001FF8FFFFC00FFFF801FFFFFFFFFE801FFFFC00FF825F80FFFF9),
    .INIT_3A(256'h001FF8FFFF801FFFF8007FFFFFFFFD002FFFF80CFF83BFC0FFFF81F0FFFFF0D0),
    .INIT_3B(256'h01FFFFC007FFFFFFFFE0007FFFE027FC18FC07FFF01F07FFFF1F017FFE007FF8),
    .INIT_3C(256'hFFFFFFFC0007FFFC023F83D780FFFE20F03FFFF1F807FFE00FFF80007F83FFFE),
    .INIT_3D(256'h3FFFE073F81CFE07FFE3CF417FFE3FC07FFF80FFF80007F87FFFF00FFFFE00FF),
    .INIT_3E(256'hF7C03FFE7C7C0FFFF3FE01FFF007FF83403FE3FFFF007FFFE007FFFFFFFFC000),
    .INIT_3F(256'hC07FFF1FE02FFF007FF07E00FE1FFFF00FFFFC007FFFFFFFFC1C01FFFE034FE0),
    .INIT_40(256'hFFFC03FF87F80FE0FFFF807FFFC007FFFFFFFFE1F807FFF01D7C1E1C07FFCFE3),
    .INIT_41(256'h80FE1FFFF807FFFE003FFFFFFFFE3F00BFFE03E7C079E01FFCFE3F01FFFFFF80),
    .INIT_42(256'h3FFFE007FFFFFFFFE3F807FFF01D3F079F01FF8FF3F00FFFFFF00FFF801FFC3F),
    .INIT_43(256'hFFFFFE3FE03FFF00E7E0F9703FFC7F1F80FFFFFF807FFC03FF87FC07E0FFFF80),
    .INIT_44(256'hFFF01F9E0FE780FFC3F1F40FFFFFFC03FFC03FFE1FC07F8FFFFC01FFFE003FFF),
    .INIT_45(256'h700FFC7FCFC07FFFFFC03FFE03FFE3FF01F8FFFFE02FFFE003FFFFFFFFF0FF03),
    .INIT_46(256'h03FFFFFC03FFC01FFE1FF03F03FFFE01FFFF003FFFFF8FFE1FF81FFF00F5F03F),
    .INIT_47(256'hFE01FFE07F03F87FFFC007FFF801FFFFFDFFF07F00FFFC079F87F5C1FFC7F8FC),
    .INIT_48(256'h1FC7FFFE00BFFF801FFFFFC7FFC7F807FF80FEF03F180FFE3FCFE03FFFFFF01F),
    .INIT_49(256'hFFF803FFFFFEFFFC1FC07FF807D7C3F580FFC7FCFF03FFFFFE03FFE01FFF03F8),
    .INIT_4A(256'hF7FFE07C0FFFC07E381F8403FE1F8FF00FFFFFE00FFF00FFFC1F81FC1FFFF003),
    .INIT_4B(256'hFC07FBC3FE403FF3FCFF81FFFFFF00FFE007FFE17C1FC3FFFF023FFF001FFFFF),
    .INIT_4C(256'h01FF1FCFF007FFFFF00FFF80FFFFC280FC0FFFE000FFF801FFFFFE7FFFC8803F),
    .INIT_4D(256'hFFFFFF00FFF003FFFFFC0FE0FFFE000FFF800FFFFFFBFFFDB603FFC03F4C0FC4),
    .INIT_4E(256'h805FFFFFE07E07FFE030FFF800FFFFFFBFFFFFE07FFE03F8C1FF001FF0F8FFC0),
    .INIT_4F(256'hF87FFE0107FF801FFFFFF9FFFFFE07FFE03FE01FF801FF9F8FF80BFFFFF003FF),
    .INIT_50(256'hFE00FFFFFF8FFFFFF01FFE01FF00FF800FF1FCFF803FFFFF803FFC03FFFFFC07),
    .INIT_51(256'hFFFFFE03FFF01FF03FF8027F8FDFFC03FFFFF803FF805FFFFFE07F0FFFF0383F),
    .INIT_52(256'h01FFA5FFE06BFC70FFC01FFFFF80BFF804FFFFFE07F83FFF01E1FFE007FFFFFE),
    .INIT_53(256'h3FC73FFC00FFFFF805FF800FFFFFE07FC7FFF01C1FFE00FFFFFFE7FFFFE01FFF),
    .INIT_54(256'hFFFFC087FC02BFFFFE07FE1FFF01E07FE007FFFFFE3FFFFF007FE01FFE7FFE0E),
    .INIT_55(256'h67FFFFE07FE3FFF01F07FF00FFFFFFFBFFFFF02FFF03FFFFFFFCF9FC63FFC057),
    .INIT_56(256'h1FFE03F87FF00FFFFFFFBFFFFF027FF03FFFFFFFFF8FF21FFC06FFFFFC0EFFE0),
    .INIT_57(256'h007FFFFFFDFFFFF013FE03FFFFFFFFF8FE27FFE063FFFFC0C7FE039FFFFC0FFC),
    .INIT_58(256'hFFFF031FF03FFFFFFFFFD7F07FFC06BFFFFC0F3FC079FFFFE07FF1FFE03FC1FE),
    .INIT_59(256'hFFFFFFFFFF1F87FFE039FFFF81E3FC038FFFFC0FFE0FFE01FE0FE007FFFFFFEF),
    .INIT_5A(256'hE07FFC03CFFFFC0F8FF03C7FFFC0FFF0BFE03FE07F007FFFFFFCFFFFE031FE01),
    .INIT_5B(256'hFF00F8FF03F7FFF807FF83FE01FF87F00FFFFFFFE1FFFE03CFF01FFFFFFFFFF4),
    .INIT_5C(256'h1FFF81FFFC3FC03FF01F00FFFFFFFFBFFFF07E3F01FFFFFFFFFFC001FFE03CFF),
    .INIT_5D(256'hF803FFE1F007FFFFFFFD7FFE07C3E01FFFFFFFFFFFAF1FFC07E3FFF03F87F07E),
    .INIT_5E(256'h7FFFFFFFE3FFA0FF3C01FFFFFFFFFFFFF8FF80FE1FFE03FE7F07F5FFF01FFFC1),
    .INIT_5F(256'hF40FF8403FFFFFFFFFFFFFC1F80FFCFFF03FF3E07FEFFF81FFFE07007FFF0E00),
    .INIT_60(256'hFFFFFFFFFFFE0901FFC1F40FFE9C0FFC2FD07FFFE80007FFF8001FFFFFFFFD1F),
    .INIT_61(256'hD0000FFE09017FFC607FF81C0FFFFF8001FFFF8000FFFFFFFFF0BF03FFC007FF),
    .INIT_62(256'h1FFFC00FFF8001FFFFF8003FFFFC003FFFFFFFFFC2C07FF800FFFFFFFFFFFFFF),
    .INIT_63(256'h803FFFFFF803FFFFF003FFFFFFFFFE000FFFC007FFFFFFFFFFFFFF8007FFF400),
    .INIT_64(256'hFFFFFFD9FFFFFFFFFFF401FFFF00FFFFFFFFFFFFFFFC007FFFA00FFFFC01FFFD),
    .INIT_65(256'hFFFFFFFFF1BFFFFEBFFFFFFFFFFFFFFFFA6FFFFF32FFFFF03FFFF977FFFFFF62),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFBFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[4] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6
   (\douta[5] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [0:0]\douta[5] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [0:0]\douta[5] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61FFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFE1007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF),
    .INIT_10(256'h3A07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_12(256'hFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F03FFFFFFF),
    .INIT_13(256'hFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E00FFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFF1FC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFF),
    .INIT_16(256'hFFFFFFFFF0FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFFFFFFFFFFFF),
    .INIT_17(256'hE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFF13FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07),
    .INIT_19(256'hFFFFFFE001FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFF),
    .INIT_1A(256'hF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83E00FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F80FFFFFFFFFFFFFFF86FFFFFFFFA000B),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFE3F807FFFFFFFFFFFFFF80FFFFFFFF807C3F0FFFFFFFFF),
    .INIT_1D(256'hFFFFFFFF0FC07FFFFFFFFDFFFFE007FFFFFFF01FF0F3FFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h01FFFFFFFE87FFFE003FFFFFFE03FF0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h1FFFC040FFFFFFC07FFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FC),
    .INIT_20(256'hFFF807FFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C01FFFFFFFC0),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E00FFFFFFFC01FFFE0E0FFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F00FFFFFFF000FFFC0F0FFFFFFC03FFC47),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFF1F007FFFFFF070FFFE0783FFFFF807FFE0FFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFE0F807FFFFFE0F8FFFE0783FFFFF007FFF3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h3FFFFFE1F83FFF0381FFFFF807FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFF87C3FFFFF007FFA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F80),
    .INIT_27(256'hF807FF13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F803FFFFFE1FC7),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7801FFFFFF1FE3FFF01C0FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E03FFFFFF1FE1FFFC1C1FFFFF803FE19FFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFE3E01FFFFFE1FF0FFFC1C0FFFFF807FE1BFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFF9E00FFFFFE3FF1FFFE1C0FFFFF003FC3BFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFF0FFFC0E0FFFFF803F9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF0707FFFF807F3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F00F),
    .INIT_2E(256'h03C7E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE200FFFFFFFFF07F),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7007FFFFFFFF8FFFF0703FFFF8),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF1807FFFFFFFF83FFF8203FFFF003C3F7FFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFF0807FFFFFFFFC7FFFC203FFFF0018FE7FFFFFFFFFFFFFE5F),
    .INIT_32(256'hFFFFF8003FFFFFFFFC3FFF8103FFFF8019F8FFFFFFFFFFFFFFE0FFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFE1FFFE301FFFF0019F47FFFFFFFFFFFFFC0FFFC7FFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hE081FFFF8018E1FFFFFFFFFFFFFF807FF05FFFFFFFFFFFFFFFFFFFFFFFE003FF),
    .INIT_35(256'hE03FFFFFFFFFFFFFF003FF01FFFFFFFFFFFFFFFFFFCFFFFE403FFFFFFFFE3FFF),
    .INIT_36(256'hFFFFFF801FF80FFFFFFFFFFFFFFFFFD85FFFE001FFFFFFFFE1FFFF003FFFF801),
    .INIT_37(256'h003FC3FFFFFFFFFFFFF8007FFF801FFFE01FFF0FFFF803FFFFC00F17FFFFFFFF),
    .INIT_38(256'h7F9FFFFF8007FFFC00FFFE007FF0FFFF001FFFF800FFFFFFFFFFC0FFFFFC00FF),
    .INIT_39(256'h2FFFC00FFF8005FF8FFFF800FFFF800FFFFFFFFFE007FFFFC0CFF813FC1FFFFF),
    .INIT_3A(256'h000FF07FFFC00FFFFC00FFFFFFFFFE001FFFF8047F839F80FFFF03E87FFFE060),
    .INIT_3B(256'h00FFFF800FFFFFFFFFE000FFFFC037FC3DF80FFFF02E03FFFF0F00FFFF00FFF8),
    .INIT_3C(256'hFFFFFFFE0003FFFE061F818FC07FFC29F03FFFF1FC0FFFE007FF8000FF87FFFE),
    .INIT_3D(256'h1FFFE03BFC0CFE07FFE3C781FFFF1FE03FFF807FF00007FC7FFFE01FFFFC00FF),
    .INIT_3E(256'hF3C07FFC3C7C0FFFE1FF03FFF007FF00C01FC1FFFE00FFFFC007FFFFFFFFC000),
    .INIT_3F(256'hE03FFE9FE01FFF007FF87C00FE3FFFF80FFFFC007FFFFFFFFC1401FFFE039FE0),
    .INIT_40(256'hFFF807FF83E01FC1FFFF80FFFFC003FFFFFFFFC1F00FFFE03CFC1E3E03FFC7F7),
    .INIT_41(256'h00FE0FFFF803FFFE007FFFFFFFFE3FC07FFF01CFE0F9E01FF87F3E01FFFFFF01),
    .INIT_42(256'h3FFFE007FFFFFFFFE1FE03FFF01E3F0FCE03FF87F9F00FFFFFF807FFC03FF83F),
    .INIT_43(256'hFFFFFC1FC03FFF01F7E078F01FF87F1F01FFFFFFC0FFFC01FFC7FC03F1FFFF80),
    .INIT_44(256'hFFF80F1F07E700FF87F9F80FFFFFF803FFC01FFC1FE03F0FFFFE03FFFE003FFF),
    .INIT_45(256'h381FFC7FCF807FFFFFC07FFC01FFC3FE03F87FFFC01FFFE003FFFFFFFFF1FE03),
    .INIT_46(256'h03FFFFFE03FFE00FFE0FE03F87FFFC00FFFF001FFFFF9FFE0FF81FFF8078F83E),
    .INIT_47(256'hFE00FFF87F81F87FFFC00FFFF803FFFFFDFFF8FF00FFFC07DF87F380FFE3FCFE),
    .INIT_48(256'h1FC3FFFE007FFF803FFFFFE7FFC3F80FFF80FC707F9C0FFC7F9FE01FFFFFE01F),
    .INIT_49(256'hFFF803FFFFFC7FFC3FC07FF807E381F8807FC3FCFF01FFFFFF01FFE00FFFC3F0),
    .INIT_4A(256'hE3FFE1FE0FFFC07F7C1FC607FC1F8FF01FFFFFF01FFE00FFFE1F80FE3FFFF003),
    .INIT_4B(256'hFC07F1C3FCC07FE3F8FF81FFFFFF01FFF007FFE0B80FC3FFFE001FFF801FFFFF),
    .INIT_4C(256'h03FF3FCFF80FFFFFF00FFF807FFF89C07E0FFFE000FFFC00FFFFFE3FFF05C07F),
    .INIT_4D(256'hFFFFFF00FFF003FFFFFC07F1FFFF011FFFC01FFFFFF1FFFE4807FFC03F8C1FE2),
    .INIT_4E(256'h003FFFFFE0FE0FFFE0187FFC01FFFFFF1FFFFFF07FFE03F841FE103FE0FCFF80),
    .INIT_4F(256'hF87FFF0303FFC01FFFFFFCFFFFFF03FFE01FC01FF800FF9F9FFC07FFFFF007FF),
    .INIT_50(256'hFC00FFFFFFCFFFFFE01FFF03FF01FF004FF8F8FF807FFFFF807FF803FFFFFE07),
    .INIT_51(256'hFFFFFE01FFE01FF01FFC02FFCF9FFC01FFFFFC01FFC00FFFFFC0FF87FFF0181F),
    .INIT_52(256'h03FFA7FFE037F870FFC01FFFFF809FFC00FFFFFE07FC7FFF01E3FFC007FFFFFE),
    .INIT_53(256'h3FE39FFC05FFFFFC09FFC00FFFFFC07F87FFF01E0FFC007FFFFFCFFFFFF01FFF),
    .INIT_54(256'hFFFFC00FFE047FFFFC07FC1FFF01F07FC00FFFFFFF3FFFFF02FFF01FFFFFFF0E),
    .INIT_55(256'h23FFFFC07FE1FFF01F87FE00FFFFFFF1FFFFF007FF03FFFFFFF1F9FE33FFE00F),
    .INIT_56(256'h0FFF01FC1FE007FFFFFFBFFFFF007FE01FFFFFFFFF9FF33FFC007FFFF8047FC0),
    .INIT_57(256'h007FFFFFF9FFFFF027FF01FFFFFFFFFEFE07FFC027FFFF80E7FC03BFFFFC07FE),
    .INIT_58(256'hFFFE03BFF01FFFFFFFFFE3F8FFFC031FFFFC0F7FC070FFFFE0FFF0FFE03F83FE),
    .INIT_59(256'hFFFFFFFFFE8F87FFE07BFFFFC1E3FE03DFFFFC07FF0FFE03FC0FF007FFFFFFCF),
    .INIT_5A(256'hE07FFC03CFFFFC1F8FE03E7FFFC07FF07FE01FF0FF007FFFFFFC3FFFF079FF03),
    .INIT_5B(256'hFF80FDFF03F3FFFC0FFFC3FC03FF83F007FFFFFFE7FFFF0787E01FFFFFFFFFFC),
    .INIT_5C(256'h9FFFC0FFFC1FC03FFC3F00FFFFFFFF3FFFE07EFE03FFFFFFFFFFC041FFE07C7F),
    .INIT_5D(256'h7C07FF80F00FFFFFFFFDFFFC0FC5E03FFFFFFFFFFF5F1FF80FF3FFF03F87E03F),
    .INIT_5E(256'hFFFFFFFFEBFFC0FF0C03FFFFFFFFFFFFE07F80FFAFFE03FE7E07F97FF00FFFE1),
    .INIT_5F(256'hFC1FF8003FFFFFFFFFFFFF03F007FC7FE07FF1E03F83FE01FFFF0380FFFC0A00),
    .INIT_60(256'hFFFFFFFFFFF81E00FFC4F00FFF1E07FF3FE03FFFF00007FFE0000FFFFFFFFF1F),
    .INIT_61(256'hF0003FFF0601FFF0E0FFF03007FFFF4001FFFF4000FFFFFFFFF17F83FF0007FF),
    .INIT_62(256'h3FFFA007FFC000FFFFFC001FFFFE003FFFFFFFFFC3A07FF8007FFFFFFFFFFFFF),
    .INIT_63(256'h005FFFFFE003FFFFF807FFFFFFFFFF000FFFC01FFFFFFFFFFFFFFF8001FFF800),
    .INIT_64(256'h7FFFFFF57FFFFFFFFFF000FFFE83FFFFFFFFFFFFFFFA00FFFFE00FFFFE00FFFF),
    .INIT_65(256'hFFFFFFFFF67FFFFA7FFFFFFFFFFFFFFFF79FFFFFEAFFFFFC7FFFFFCFFFFFFFA1),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF7FFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[14:0]}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[5] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7 
       (.I0(ena),
        .I1(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2FFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFE080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3381B8481470458AEFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFCA1800000000000000809EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFEFCD8080BDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'h00000997FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000000000),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00000000FCEFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFF8B00000000AC1D1C00000000005C33FFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INITP_02(256'hFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E01FFFFFFF),
    .INITP_03(256'hFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F01FFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFF1FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFF),
    .INITP_06(256'hFFFFFFFFF8FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFA0BFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87),
    .INITP_09(256'hFFFFFFE001FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F01FFFFFFFF),
    .INITP_0A(256'hF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F01FFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F807FFFFFFFFFFFFFFE3FFFFFFFFC0007),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFE3F807FFFFFFFFFFFFFF80FFFFFFFF00441F1FFFFFFFFF),
    .INITP_0D(256'hFFFFFFFE1FC07FFFFFFFFFFFFFE003FFFFFFE01FF1E1FFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'h03FFFFFFFE0FFFFE001FFFFFFE03FF0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'h3FFFE061FFFFFFE03FFCE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFF9D0000000000BDFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h0000DCEFFF5F9C00000000002CF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7700),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'h3F0C00000000106FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'h0020EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB04000079FFFFFFAFA000000000),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E00000000009DFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFD80000C4FFFFFFFF6B3800000000002423FFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFF1D000000006CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFAE000000000000608BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E00000077),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'h00000000AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0C),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hD0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF870C0000E5FFFFFFFFFF8D000000000000),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D000000007FFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFF59000054D7FFFFFFFFBF60000000000000A5FFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFBE000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFA200000000000000BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F00000042FFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFEFEEBDD0500010805D6ECFFFFFFFFFFFFFFFFFBF00000000),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF35000060D7FFFFFFFFFF090000000000004493),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'h00000000000040FDDFFFFFFFFFFFFFFF2C0000BCFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3E60000000),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFF4B0000001EFFFFFFFFFF430000000000000045FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFF200000BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF2F9000000000000000000000000000903FFFFF),
    .INIT_59(256'hFFFFFFFFFF0F1D4020A0AD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'h8900000000000000C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95000038AFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hAE100000000000001C8DAEFECEBD3C000030DEFFFFFFFFBF0000003FFFFFFFFF),
    .INIT_62(256'hBDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD00000000000010),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFBB580000B5FFFFFFFFFF9B2C00000000000078D7FFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFBF8D0000300FFFFFFF8E0000ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE10000000000000CDBFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFF6E000000000000000000ECAFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7FCFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'h00000C4BFFFFFFFFFFE500000000000000E1FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h0000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFF8F40000000000000CDFFFFFFFFFFFFFFFFFF3E00006CBFFFFF3D),
    .INIT_75(256'h00000000000000000000DCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFF7EC00000207DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C),
    .INIT_77(256'h00000000001473FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D0000ECFFFFFFFFFFBB3C00),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'h008CDFFFFFFFFFFFFFFFFFFFFF9D00008DFF3F00001DFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D0000000000),
    .INIT_7F(256'h00605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F000000000000CD2D000000001D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h01000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9
   (\douta[13] ,
    \douta[14] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFC07FFC47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C03FFFFFFFE0),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFC01FFFC0707FF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F01FFFFFFF801FFFE0F07FFFFFC07FFC07),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFE1F00FFFFFFF8707FFE0F83FFFFF807FFE1FFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFF1F80FFFFFFF1F87FFF0783FFFFF807FFF1FFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h7FFFFFE0F83FFE03C1FFFFF007FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFF0381FFFFF007FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F80),
    .INITP_07(256'hF807FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC07FFFFFF1F83),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C03FFFFFE3FC1FFF03C1FFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C03FFFFFE3FC3FFF83E1FFFFF807FF11FFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFE1C01FFFFFF1FE1FFF81C0FFFFF803FC31FFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFF9E00FFFFFFFFE1FFFC1E07FFFF803F871FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFF0FFFE0E0FFFFF807F0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFF0607FFFF803E1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC700F),
    .INITP_0E(256'h03E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7007FFFFFFFF07F),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE380FFFFFFFFF87FFF0707FFFF8),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4D0000000000),
    .INIT_01(256'hFFFFFFFFFFFFFFFFA34C000066FFFFFFFFFF060000000000000069FFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFDF7C00107FDC002C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF4F00000000000000FDFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFE0000000000DCFFFF4D00000000AEFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFAD0000000000000000609FFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h408FFFFFFFFFBB380000000000000043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE0000),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFBD000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF6E00008C00006EFFFFFF),
    .INIT_11(256'hBDFFFFAF3C0000008CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'h1F100000004C1C000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0000000000),
    .INIT_13(256'h00000031FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79000015FBFFFFFFFFE900000000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFDF4C0000007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C00000000000000AFFFFF),
    .INIT_1B(256'hBEFFFFFFFFFFFFFFFFFFFFFFFFFFEF1C000000002DFFFFFFFD000000002EFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0000004EFFCF8D00000000),
    .INIT_1D(256'hFFFFFFFFFFFFCB8000004AFFFFFFFFAF2C0000000000000027FFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'h0000ECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFF5F0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D),
    .INIT_24(256'hFFFFFF2D0000000020CFFFFFAF1C0000005CDFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFF6F0000003DFFFFFFFF8D0000008CEFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFD10000000000000021FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B10002053),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h0000000000FFFFFFFFFFFFFFFFFFFFFFFFFF8F6000001EFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFF3D000000006EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE000000),
    .INIT_2E(256'hFFFFFFFFCF7C0000007EFFFFFFFFFFFFFFFFFFFFFFFFFFAE00000000006EFFFF),
    .INIT_2F(256'h0037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E000000FE),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF420000C0E7FFFFFF9310000000000000),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFF5F9C0000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E0000000000000000FFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFEF8C00000000DCFFFFFF9E00000000ACFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D00003CFFFFFFFFFFFFAE0000008CEFFF),
    .INIT_39(256'hFFFFFFFFFB4D0000B5FFFFFFFF6D0000000000000055FFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFD0000000000000000AFFFFFFFFFFFFFFFFFFFFF5F6000BC6C00ACFF),
    .INIT_40(256'h7E00000000002FFFFFCF1C000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFAC00000DFFFFFFFFFFFFFFFC000000CEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFF3B00000000000000086BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB940000C2FFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h003FFFFFFFFFFFFFFFFFFF0F40005C8FFC007CFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h0000008DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00000000000000),
    .INIT_4A(256'hFFFFFE0000001DFFFFFFFFFFFFFFFFFFFFFFFFFFEF8C000000007DFFFFFF0D00),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C00007DFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F24004C97FFFFFFF40000000000000099FF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'h005C5FFFFC00ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFF8D0000000000000000BEFFFFFFFFFFFFFFFFCE30),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFAE00000000209FFFFF1E000000004CDFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFF6D00004EFFFFFFFFFFFFFFFFCC0000006FFFFFFFFF),
    .INIT_55(256'hFFFFFF7A0000ECEBFFFFAE0000000000000020ABFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'h7D00000000000000001EFFFFFFFFFFFFFFAE10007C5FFFFFEC00FCFFFFFFFFFF),
    .INIT_5C(256'h000000EDFFFF1F0000000000CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'h1D2DCFFFFFFFFFFFFFFFFFBE000000CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00),
    .INIT_5E(256'h000000000000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF950000BDFFFFEF60),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFAE10009C9FFFFFFF4C009DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D00000000000000004DFFFF),
    .INIT_66(256'h7C000040DFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0C00000040BFFFEF1C00000000),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFEB050000A6FFFFE90000000000000074F3FFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'h00004EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFD00000000000000008CFFFFFFFFFFFE10009C9FFFFFFF7F),
    .INIT_6F(256'hFFFFFFFFFFFFFFBD000000003EFFFFDC000000006CFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E0000007EFFFFFFFFFFFFFF),
    .INIT_71(256'hFFB78C003C7BFF7B0000000000000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'h000000000000BFFFFFFF7F40009C9FFFFFFFFF4E00007FFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'h5CDFFFAD00000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFF8F0C0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF5C000000),
    .INIT_7A(256'h0000000029FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF533000C8DBFF09000000),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000200)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(ena),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module Welcome_page_blk_mem_gen_top
   (douta,
    ena,
    addra,
    clka);
  output [23:0]douta;
  input ena;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  Welcome_page_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "5" *) 
(* C_COUNT_36K_BRAM = "22" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     17.15077 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "Welcome_page.mem" *) 
(* C_INIT_FILE_NAME = "Welcome_page.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "35000" *) (* C_READ_DEPTH_B = "35000" *) (* C_READ_WIDTH_A = "24" *) 
(* C_READ_WIDTH_B = "24" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "35000" *) (* C_WRITE_DEPTH_B = "35000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "24" *) (* C_WRITE_WIDTH_B = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Welcome_page_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [23:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [23:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Welcome_page_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module Welcome_page_blk_mem_gen_v8_4_1_synth
   (douta,
    ena,
    addra,
    clka);
  output [23:0]douta;
  input ena;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  Welcome_page_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
