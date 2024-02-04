// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Dec 24 01:32:42 2023
// Host        : Jaredan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado_Project/Project/project_vga_v2/project_vga_v2.srcs/sources_1/ip/Save_Delete/Save_Delete_sim_netlist.v
// Design      : Save_Delete
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Save_Delete,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Save_Delete
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [12:0]addra;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "4" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.304965 mW" *) 
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
  (* C_INIT_FILE = "Save_Delete.mem" *) 
  (* C_INIT_FILE_NAME = "Save_Delete.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6500" *) 
  (* C_READ_DEPTH_B = "6500" *) 
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
  (* C_WRITE_DEPTH_A = "6500" *) 
  (* C_WRITE_DEPTH_B = "6500" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Save_Delete_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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

(* ORIG_REF_NAME = "bindec" *) 
module Save_Delete_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h4000)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[0]),
        .I1(addra[2]),
        .I2(ena),
        .I3(addra[1]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module Save_Delete_blk_mem_gen_generic_cstr
   (douta,
    addra,
    ena,
    clka);
  output [23:0]douta;
  input [12:0]addra;
  input ena;
  input clka;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire [6:6]ena_array;
  wire [17:0]p_15_out;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;

  Save_Delete_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[12:10]),
        .ena(ena),
        .ena_array(ena_array));
  Save_Delete_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[2].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 (\ramloop[5].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[12:10]),
        .clka(clka),
        .douta(douta[19:2]),
        .ena(ena),
        .p_15_out(p_15_out));
  Save_Delete_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[1:0]),
        .ena(ena));
  Save_Delete_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_0(\ramloop[4].ram.r_n_9 ));
  Save_Delete_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[2].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[10] (\ramloop[2].ram.r_n_8 ),
        .\douta[9] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .ena(ena));
  Save_Delete_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[9:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
  Save_Delete_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[4].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[18] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[19] (\ramloop[4].ram.r_n_8 ),
        .ena(ena));
  Save_Delete_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (\ramloop[2].ram.r_n_9 ),
        .clka(clka),
        .\douta[18] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[19] (\ramloop[5].ram.r_n_8 ),
        .ena(ena));
  Save_Delete_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[23:20]),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module Save_Delete_blk_mem_gen_mux
   (douta,
    ena,
    addra,
    clka,
    p_15_out,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 );
  output [17:0]douta;
  input ena;
  input [2:0]addra;
  input clka;
  input [17:0]p_15_out;
  input [7:0]DOADO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]DOPADOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [17:0]douta;
  wire ena;
  wire [17:0]p_15_out;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[10]_INST_0 
       (.I0(p_15_out[8]),
        .I1(DOPADOP),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[11]_INST_0 
       (.I0(p_15_out[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [0]),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[12]_INST_0 
       (.I0(p_15_out[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [1]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[13]_INST_0 
       (.I0(p_15_out[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[14]_INST_0 
       (.I0(p_15_out[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[15]_INST_0 
       (.I0(p_15_out[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [4]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[16]_INST_0 
       (.I0(p_15_out[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [5]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[17]_INST_0 
       (.I0(p_15_out[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [6]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[18]_INST_0 
       (.I0(p_15_out[16]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [7]),
        .O(douta[16]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[19]_INST_0 
       (.I0(p_15_out[17]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ),
        .O(douta[17]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[2]_INST_0 
       (.I0(p_15_out[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[3]_INST_0 
       (.I0(p_15_out[1]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[4]_INST_0 
       (.I0(p_15_out[2]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[5]_INST_0 
       (.I0(p_15_out[3]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[6]_INST_0 
       (.I0(p_15_out[4]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[7]_INST_0 
       (.I0(p_15_out[5]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[8]_INST_0 
       (.I0(p_15_out[6]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[9]_INST_0 
       (.I0(p_15_out[7]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .O(douta[7]));
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
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;

  Save_Delete_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    ena_0,
    ena,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input ena_0;
  input ena;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire ena;
  wire ena_0;

  Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width__parameterized1
   (\douta[9] ,
    \douta[10] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[9] ;
  output [0:0]\douta[10] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ena;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [12:0]addra;
  wire clka;
  wire [0:0]\douta[10] ;
  wire [7:0]\douta[9] ;
  wire ena;

  Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[10] (\douta[10] ),
        .\douta[9] (\douta[9] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width__parameterized2
   (p_15_out,
    clka,
    ena_array,
    ena,
    addra);
  output [17:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [17:0]p_15_out;

  Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width__parameterized3
   (\douta[18] ,
    \douta[19] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;
  wire ena;

  Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[18] (\douta[18] ),
        .\douta[19] (\douta[19] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width__parameterized4
   (\douta[18] ,
    \douta[19] ,
    clka,
    \addra[11] ,
    ena,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  input clka;
  input \addra[11] ;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;
  wire ena;

  Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .\douta[18] (\douta[18] ),
        .\douta[19] (\douta[19] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Save_Delete_blk_mem_gen_prim_width__parameterized5
   (douta,
    clka,
    ena,
    addra);
  output [3:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;
  wire ena;

  Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Save_Delete_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [1:0]douta;
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
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFE00000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'h80017FFFFFFFFFFFFFFFFFF100000FFFFFFFFFFFFFFFFFFFFC80013FFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFCC0000BEFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFA),
    .INIT_0B(256'hF800000FFFFFFFFFFFFFFF3AAAC0000038AA91FFFFFFFFFFFFF800000FFFFFFF),
    .INIT_0C(256'h007FFFFFFFFFFFF800000FFFFFFFFFFFFFF6E555C000000355593FFFFFFFFFFF),
    .INIT_0D(256'h0000000000000000BFFFFFFFFFFFF800000FFFFFFFFFFFFFF700000000000000),
    .INIT_0E(256'hFFFFFFFFFFFFF80000000000000000CFFFFFFFFFFFF800000FFFFFFFFFFFFFFC),
    .INIT_0F(256'hFFFFFFF800000FFFFFFFFFFFFFFC00000000000000002FFFFFFFFFFFF800000F),
    .INIT_10(256'h00000009FFFFFFFFFFFFF800000FFFFFFFFFFFFFFC0000000000000001BFFFFF),
    .INIT_11(256'hFFFFFFE000000000000037FFFFFFFFFFFFF800000FFFFFFFFFFFFFFFF0000000),
    .INIT_12(256'h00000FFFFFFFFFFFFFFFE000000000000037FFFFFFFFFFFFF800000FFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFE0000A0000610037FFFFFFFFFFFFF8),
    .INIT_14(256'h033F0002FD0037FFFFFFFFFFFFF800000FFFFFFFFFFFFFFFE0037CC002F00037),
    .INIT_15(256'hFFFFFFFFFFFFE003FF800AFC0037FFFFFFFFFFFFF800000FFFFFFFFFFFFFFFE0),
    .INIT_16(256'hFFFFF800000FFFFFFFFFFFFFFFE003FF400AFF0037FFFFFFFFFFFFF800000FFF),
    .INIT_17(256'hFF0037FFFFFFFFFFFFF800000FFFFFFFFFFFFFFFE003FF400AFF0037FFFFFFFF),
    .INIT_18(256'hFFFFE003FF400AFF0037FFFFFFFFFFFFF800000FFFFFFFFFFFFFFFE003FF400A),
    .INIT_19(256'h00001FFFFFFFFFFFFFE003FF400AFF0037FFFFFFFFFFFF640000043FFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFF700000008FFFFFFFFFFFFFE003FF400AFF0037FFFFFFFFFFFF0000),
    .INIT_1B(256'hFF400AFF0037FFFFFFFFFFFFEC0000033FFFFFFFFFFFFFE003FF400AFF0037FF),
    .INIT_1C(256'hFFFFFFFFFFE003FF400AFF0037FFFFFFFFFFFFF8000002FFFFFFFFFFFFFFE003),
    .INIT_1D(256'hFFFE40003FFFFFFFFFFFFFFFE003FF400AFF0037FFFFFFFFFFFFF8000002FFFF),
    .INIT_1E(256'h0037FFFFFFFFFFFFFF3000CFFFFFFFFFFFFFFFE003FF400AFF0037FFFFFFFFFF),
    .INIT_1F(256'hFFE003FF400AFF0037FFFFFF9AAFFFFFD0003FFFFEAA7FFFFFFFE003FF400AFF),
    .INIT_20(256'hFFFFFF002FFFFFFFE003FF400AFF0037FFFFFF900FFFFFD8027FFFFD001FFFFF),
    .INIT_21(256'hFF4001FFFFFDC3FFFFFF002FFFFFFFE003FF400AFF0037FFFFFF4001FFFFF206),
    .INIT_22(256'h000EFC0037FFFFFF4001FFFFFF9FFFFFFF002FFFFFFFE002FFC004FC0037FFFF),
    .INIT_23(256'h2FFFFFFFE0012D8001F50037FFFFFF4003FFFFFF9FFFFFFF002FFFFFFFE002FF),
    .INIT_24(256'h000000000000002FFFFFFFE000890001B00037FFFFFF40010000000000000000),
    .INIT_25(256'h0FFFFFFF400000000000000000002FFFFFFFF000000000000013FFFFFF400000),
    .INIT_26(256'hE40000000000002BFFFFFF400000000000000000002FFFFFFFC0000000000000),
    .INIT_27(256'h0000002FFFFFFFEC0000000000007FFFFFFF400000000000000000002FFFFFFF),
    .INIT_28(256'hDAAAAAAAAAAAAAAAAAAA9FFFFFFFF4000000000001DFFFFFFF40000000000000),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7AAAAAAAAA947FFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
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
       (.ADDRARDADDR({addra,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
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
module Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    ena_0,
    ena,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input ena_0;
  input ena;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
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
    .INITP_04(256'h003FFFFFFFFC002FFFFFFFFFF00FFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hF001FFFFFFF3F8003FEFFFFFFF001FFFFFFFFFC001FFFFFFFFF001FFFFFFFFFD),
    .INITP_06(256'h00000000FFFFFFF001FFFFFFF00000000FFFFFFF001FFFFFFEC00001027FFFFF),
    .INITP_07(256'hFFFF001FFFFFFC00000000BFFFFFF001FFFFFFC000000007FFFFFF001FFFFFFC),
    .INITP_08(256'hFFF80000007FFFFFFF001FFFFFFF80000006FFFFFFF001FFFFFFE80000000FFF),
    .INITP_09(256'hFFFFFFF001FFFFFFF80001E07FFFFFFF001FFFFFFF80000007FFFFFFF001FFFF),
    .INITP_0A(256'hFFFFFF81F00E07FFFFFFF001FFFFFFF80F82F07FFFFFFF001FFFFFFF80780F07),
    .INITP_0B(256'hF07FFFFFFF001FFFFFFF81F00F07FFFFFFF001FFFFFFF81F00F07FFFFFFF001F),
    .INITP_0C(256'h003FFFFFF81F00F07FFFFFF10013FFFFFF81F00F07FFFFFFF001FFFFFFF81F00),
    .INITP_0D(256'hF00F07FFFFFFE000FFFFFFF81F00F07FFFFFF40007FFFFFF81F00F07FFFFFF00),
    .INITP_0E(256'hFE001FFFFFFF81F00F07FFFFFFD002FFFFFFF81F00F07FFFFFFC001FFFFFFF81),
    .INITP_0F(256'hF81F00F07FFF3EFFC07FFFFFFF81F00F07FFFFFFF407FFFFFFF81F00F07FFFFF),
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
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB936363636363636363636B7FF),
    .INIT_24(256'hFFFFFF3DB6363636363636783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E4E00000000000000000000C3FAFFFFFFFF),
    .INIT_27(256'h80000000000000425EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB88D),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFF),
    .INIT_2A(256'h0000000080DEFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39CC0000000000),
    .INIT_2C(256'hFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'h00C09B33B3B3B3B3B373377EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFF3CF4B3B3B3B3B3B3EF0C00000000000000000000),
    .INIT_2F(256'hFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h424242424242855036FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFF7FA8C983424242424242C00000000000000000000000000000C1),
    .INIT_32(256'h00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h000000004DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D),
    .INIT_34(256'hFFFF71C100000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h81F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D00000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE00),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D0000000000000000),
    .INIT_3A(256'h00000000000000000000000000000000000000000000000000000000C035FFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C0000000000),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9),
    .INIT_3D(256'h00000000000000000000000000000000000000000000000009BCFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC000000000000000000),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFF),
    .INIT_40(256'h0000000000000000000000000000000000000048ADFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1C030000000000000000000000),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFF),
    .INIT_43(256'h0000000000000000000000000001A37AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D20000000000000000000000000000),
    .INIT_45(256'hFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'h000000000000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9A000000000000000000000000000000000000),
    .INIT_48(256'hFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h0000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFF9A00000000000000000000000000000000000000000000),
    .INIT_4B(256'h00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h00C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D),
    .INIT_4D(256'hFFFFFFFFFF9A00000000000002149C880000000000000001519D0B4000000000),
    .INIT_4E(256'h000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D00000000),
    .INIT_50(256'hFF9A0000000000C066FFFF3BCB000000000000A0FFFF3D110000000000C171FF),
    .INIT_51(256'h0000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D0000000000000000),
    .INIT_53(256'h000000C83DFFFFFF23000000000005B6FFFFFF6D0000000000C171FFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9),
    .INIT_56(256'hFFFFFFFFAC000000000088BCFFFFFF340000000000C171FFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CB),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFF),
    .INIT_59(256'h6C000000000088BCFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFF),
    .INIT_5C(256'h000088BCFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000),
    .INIT_5E(256'hFFFFFFFFFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000000088BC),
    .INIT_61(256'hFFFFBD0D00000000000000000000C2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'h0000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000000088BCFFFFFFF3),
    .INIT_64(256'h00000000000000000000423136FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h00C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EB6740B),
    .INIT_66(256'hFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000000088BCFFFFFFF300000000),
    .INIT_67(256'h00000000000000000058FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2600000000000000),
    .INIT_69(256'hFF9A0000000000CBFFFFFFFF6C000000000088BCFFFFFFF30000000000C171FF),
    .INIT_6A(256'h000000008235FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC900000000000000000000),
    .INIT_6C(256'h000000CBFFFFFFFF6C000000000088BCFFFFFFF30000000000C171FFFFFFFFFF),
    .INIT_6D(256'h27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1C3000000000000000000000000C0),
    .INIT_6F(256'hFFFFFFFF6C000000000088BCFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CB),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFA400000000000000000000000097FFFFFFFF),
    .INIT_72(256'h6C000000000088BCFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFBE17000000000000000000000BBCFFFFFFFFFFFFFFFF),
    .INIT_75(256'h000088BCFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000),
    .INIT_77(256'hFFFFFFFFFFFFFFBA4A0000000000000000C2F4FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFF30000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000000088BC),
    .INIT_7A(256'hFFFFFFFF32C3000000000000C027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h0000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000000088BCFFFFFFF3),
    .INIT_7D(256'hFF6500000000000018FFFFFFFFFFFFFFFFFFFFB5B1B1B1B171FBFFFFFFFFFFFF),
    .INIT_7E(256'h00C171FFFFFFFFFFFFFFFFFFFFFFFFFFBE72B1B1B1B1F3FEFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFF9A0000000000CBFFFFFFFF6C000000000088BCFFFFFFF300000000),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
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
module Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[9] ,
    \douta[10] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[9] ;
  output [0:0]\douta[10] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ena;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [12:0]addra;
  wire clka;
  wire [0:0]\douta[10] ;
  wire [7:0]\douta[9] ;
  wire ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hF81FFEFFFE03FFF81F00F07FFF81FFE2FFE03FFF81F00F07FFF7DFFA17FFFBFF),
    .INITP_01(256'h3FFF80281707FFF81FFFFFFE03FFF81702E07FFF81FFFBFFE03FFF81F80E07FF),
    .INITP_02(256'h5FFF80000000003FFFC0000001FFF80000000003FFF80700E07FFF8100000000),
    .INITP_03(256'h0003FFFA000000FFFF80000000003FFFC0000005FFF80000000003FFF8000000),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFF3FFFFAFFFF3FFFFFFFFFBFFFD000000FFFF8000000),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h0000008B7CFFFFFFFFFFFFFFFFFFFF43010101010160FFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFAC4101010101C0F5FFFFFFFFFFFFFFFFFF7E9700),
    .INIT_02(256'hFF9A0000000000CBFFFFFFFF6C000000000088BCFFFFFFF30000000000C171FF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFC000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFF6B00000000000075FFFFFFFFFFFFFFFFFFFF3B8A000043B4),
    .INIT_05(256'h000000CBFFFFFFFF6C000000000088BCFFFFFFF30000000000C171FFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFC000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000),
    .INIT_07(256'hFFFFFFFF6B00000000000075FFFFFFFFFFFFFFFFFFFFFF72C30127FFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFEB0000000000483CFFFFFF340000000000C171FFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFC000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A00000000008B),
    .INIT_0A(256'h6B00000000000075FFFFFFFFFFFFFFFFFFFFFFFFA75EFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'h200000000000C3B4FFFFFF2A0000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'h00000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A000000000087FAFFFFFF),
    .INIT_0D(256'h000000F5FFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFC0),
    .INIT_0E(256'h00000057FCFF794B0000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFF6B000000),
    .INIT_0F(256'h009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0000000000401EBEFF7487000000),
    .INIT_10(256'h0606060606060606060606060606060606060606060606060606060000000000),
    .INIT_11(256'h87CD05000000000000C171FFFFFFFFFFFFFFFFFFFFFFFFFF6B00000000000045),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9A00000000000080098D430000000000000040),
    .INIT_13(256'h00000000000000000000000000000000000000000000000000000000009EFFFF),
    .INIT_14(256'h00000000004232FFFFFFFFFFFFFFFFFFFFFFFFFF6B0000000000000000000000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFDB00000000000000000000000000000000000000000000),
    .INIT_16(256'h000000000000000000000000000000000000000000000000009EFFFFFFFFFFFF),
    .INIT_17(256'h0005F6FFFFFFFFFFFFFFFFFFFFFFFFFF6B000000000000000000000000000000),
    .INIT_18(256'hFFFFFFFFFF240000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000009EFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFF6B00000000000000000000000000000000000000),
    .INIT_1B(256'hFFB14000000000000000000000000000000000000000000000000000008BBEFF),
    .INIT_1C(256'h00000000000000000000000000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFF6B0000000000000000000000000000000000000000000000),
    .INIT_1E(256'h00000000000000000000000000000000000000000000000041E9FFFFFFFFFFFF),
    .INIT_1F(256'h000000000000000000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBED500),
    .INIT_20(256'hFFFFFFFF6B000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000042E17FFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'h99999999999999999970FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A1100000000),
    .INIT_23(256'hF65A999999999999999999999999999999999999999999999999999999999999),
    .INIT_24(256'h999999999999999999999999995A63347FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D6CDE999999999999),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[9] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\douta[10] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
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
       (.I0(ena),
        .I1(addra[12]),
        .I2(addra[11]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized2
   (p_15_out,
    clka,
    ena_array,
    ena,
    addra);
  output [17:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [17:0]p_15_out;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({p_15_out[16:9],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({p_15_out[17],p_15_out[8]}),
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
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[18] ,
    \douta[19] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;
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
    .INITP_04(256'h01FFFFFFFFFF003FFFFFFFFFEFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hC002FFFFFFF3F8003FFFFFFFFC002FFFFFFFFF8007FFFFFFFFC002FFFFFFFFFC),
    .INITP_06(256'h000000003FFFFFC002FFFFFFC000000003FFFFFC002FFFFFFE7F0000FCFFFFFF),
    .INITP_07(256'hFFFC002FFFFFFC000000003FFFFFC002FFFFFFC000000003FFFFFC002FFFFFFE),
    .INITP_08(256'hFFFC0000001FFFFFFC002FFFFFFFC0000003FFFFFFC002FFFFFFC800000007FF),
    .INITP_09(256'hFFFFFFC002FFFFFFFC0800201FFFFFFC002FFFFFFFC0000001FFFFFFC002FFFF),
    .INITP_0A(256'hFFFFFFC1F00E01FFFFFFC002FFFFFFFC0781E01FFFFFFC002FFFFFFFC0F80C01),
    .INITP_0B(256'hF01FFFFFFC002FFFFFFFC1F00F01FFFFFFC002FFFFFFFC1F00F01FFFFFFC002F),
    .INITP_0C(256'h003FFFFFFC1F00F01FFFFFFD002BFFFFFFC1F00F01FFFFFFC002FFFFFFFC1F00),
    .INITP_0D(256'hF00F01FFFFFFA000FFFFFFFC1F00F01FFFFFF8000BFFFFFFC1F00F01FFFFFF80),
    .INITP_0E(256'hFF805FFFFFFFC1F00F01FFFFFFF002FFFFFFFC1F00F01FFFFFFC001FFFFFFFC1),
    .INITP_0F(256'hFC1F00F01FFFC3FF807FE07FFFC1F00F01FFFFFFFC07FFFFFFFC1F00F01FFFFF),
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
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC1B1B1B1B1B1B1B1B1B1BDBFF),
    .INIT_24(256'hFFFFFF9E5B1B1B1B1B1B1B3C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2700000000000000000000E17DFFFFFFFF),
    .INIT_27(256'h40000000000000212F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CC6),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h00000000406F7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C660000000000),
    .INIT_2C(256'hFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'h0060CD99D9D9D9D9D9B99B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFF1E7AD9D9D9D9D9D9F70600000000000000000000),
    .INIT_2F(256'hFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h212121212121C2281BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFBF54E4C1212121212121600000000000000000000000000000E0),
    .INIT_32(256'h0000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h00000000A6FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE86),
    .INIT_34(256'hFFFFB8E000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h00000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hC0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE8600000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F00),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE860000000000000000),
    .INIT_3A(256'h00000000000000000000000000000000000000000000000000000000609AFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E0000000000),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FC),
    .INIT_3D(256'h000000000000000000000000000000000000000000000000845EFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76000000000000000000),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFF),
    .INIT_40(256'h0000000000000000000000000000000000000024D6FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E810000000000000000000000),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFF),
    .INIT_43(256'h0000000000000000000000000080D13DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9690000000000000000000000000000),
    .INIT_45(256'hFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'h000000000000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF4D000000000000000000000000000000000000),
    .INIT_48(256'hFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h0000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFF4D00000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h00E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE86),
    .INIT_4D(256'hFFFFFFFFFF4D000000000000010A4E440000000000000080A8CE852000000000),
    .INIT_4E(256'h00000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE8600000000),
    .INIT_50(256'hFF4D00000000006033FFFF9DE500000000000050FFFF9E880000000000E0B8FF),
    .INIT_51(256'h000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE860000000000000000),
    .INIT_53(256'h000000649EFFFFFF910000000000825BFFFFFFB60000000000E0B8FFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FC),
    .INIT_56(256'hFFFFFFFF560000000000445EFFFFFF1A0000000000E0B8FFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFF),
    .INIT_59(256'h360000000000445EFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFF),
    .INIT_5C(256'h0000445EFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF36000000),
    .INIT_5E(256'hFFFFFFFFFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF360000000000445E),
    .INIT_61(256'hFFFFDE860000000000000000000061FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'h0000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF360000000000445EFFFFFFF9),
    .INIT_64(256'h0000000000000000000021981B7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h00E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F5B3A85),
    .INIT_66(256'hFFFFFFFFFF4D0000000000E5FFFFFFFF360000000000445EFFFFFFF900000000),
    .INIT_67(256'h0000000000000000002CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1300000000000000),
    .INIT_69(256'hFF4D0000000000E5FFFFFFFF360000000000445EFFFFFFF90000000000E0B8FF),
    .INIT_6A(256'h00000000419AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DE400000000000000000000),
    .INIT_6C(256'h000000E5FFFFFFFF360000000000445EFFFFFFF90000000000E0B8FFFFFFFFFF),
    .INIT_6D(256'h93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E100000000000000000000000060),
    .INIT_6F(256'hFFFFFFFF360000000000445EFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF52000000000000000000000000CBFFFFFFFF),
    .INIT_72(256'h360000000000445EFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFF5F8B00000000000000000000855EFFFFFFFFFFFFFFFF),
    .INIT_75(256'h0000445EFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF36000000),
    .INIT_77(256'hFFFFFFFFFFFFFF5D250000000000000000617AFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFF90000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF360000000000445E),
    .INIT_7A(256'hFFFFFFFF19E10000000000006093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h0000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFF4D0000000000E5FFFFFFFF360000000000445EFFFFFFF9),
    .INIT_7D(256'hFFB20000000000000CFFFFFFFFFFFFFFFFFFFFDAD8D8D8D8B8FDFFFFFFFFFFFF),
    .INIT_7E(256'h00E0B8FFFFFFFFFFFFFFFFFFFFFFFFFF5F39D8D8D8D8F97FFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFF4D0000000000E5FFFFFFFF360000000000445EFFFFFFF900000000),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[18] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[19] }),
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
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[18] ,
    \douta[19] ,
    clka,
    \addra[11] ,
    ena,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  input clka;
  input \addra[11] ;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;
  wire ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hF80FFFBFFE07FFFC1F00F01FFF80FFF2FFE07FFFC1F00F01FFF00FFE17FF03FF),
    .INITP_01(256'h7FFFC0E81501FFF80FFFFFFE07FFFC1F02F01FFF80FFFFFFE07FFFC1F80E01FF),
    .INITP_02(256'h3FFF80000000007FFFC0000007FFF80000000007FFFC0100801FFF80FFFFFFE0),
    .INITP_03(256'h0007FFFC0000003FFF80000000007FFF80000007FFF80000000007FFF8000000),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFE400006FFFFC0000000003FFFE0000017FFF8000000),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h000000C53EFFFFFFFFFFFFFFFFFFFFA1808080808030FFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFF56A08080808060FAFFFFFFFFFFFFFFFFFF3FCB00),
    .INIT_02(256'hFF4D0000000000E5FFFFFFFF360000000000445EFFFFFFF90000000000E0B8FF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFF6000000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFB5000000000000BAFFFFFFFFFFFFFFFFFFFF9D450000A15A),
    .INIT_05(256'h000000E5FFFFFFFF360000000000445EFFFFFFF90000000000E0B8FFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFF6000000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000),
    .INIT_07(256'hFFFFFFFFB5000000000000BAFFFFFFFFFFFFFFFFFFFFFF39E18093FFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFF50000000000241EFFFFFF1A0000000000E0B8FFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFF6000000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000C5),
    .INIT_0A(256'hB5000000000000BAFFFFFFFFFFFFFFFFFFFFFFFFD32FFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'h100000000000E15AFFFFFF150000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'h00000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000C37DFFFFFF),
    .INIT_0D(256'h000000FAFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFF60),
    .INIT_0E(256'h000000AB7EFFBCA50000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFB5000000),
    .INIT_0F(256'h004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000200F5FFF3AC3000000),
    .INIT_10(256'h0303030303030303030303030303030303030303030303030303030000000000),
    .INIT_11(256'hC3E682000000000000E0B8FFFFFFFFFFFFFFFFFFFFFFFFFFB5000000000000A2),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF4D0000000000004084C6A10000000000000020),
    .INIT_13(256'h00000000000000000000000000000000000000000000000000000000004FFFFF),
    .INIT_14(256'h00000000002119FFFFFFFFFFFFFFFFFFFFFFFFFFB50000000000000000000000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFED00000000000000000000000000000000000000000000),
    .INIT_16(256'h000000000000000000000000000000000000000000000000004FFFFFFFFFFFFF),
    .INIT_17(256'h00827BFFFFFFFFFFFFFFFFFFFFFFFFFFB5000000000000000000000000000000),
    .INIT_18(256'hFFFFFFFFFF120000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000004FFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFB500000000000000000000000000000000000000),
    .INIT_1B(256'hFFD8200000000000000000000000000000000000000000000000000000C55FFF),
    .INIT_1C(256'h00000000000000000000000000000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFB50000000000000000000000000000000000000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000000000A0F4FFFFFFFFFFFF),
    .INIT_1F(256'h000000000000000000000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FEA00),
    .INIT_20(256'hFFFFFFFFB5000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000021F0BFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hCCCCCCCCCCCCCCCCCC38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D8800000000),
    .INIT_23(256'h7B2DCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_24(256'hCCCCCCCCCCCCCCCCCCCCCCCCCC2DB11ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E366FCCCCCCCCCCCC),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[18] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\douta[19] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[11] ),
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
module Save_Delete_blk_mem_gen_prim_wrapper_init__parameterized5
   (douta,
    clka,
    ena,
    addra);
  output [3:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
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
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFEDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDEFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFF),
    .INIT_14(256'hFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFE300000000007FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'h006CCCCCCCDFFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFF),
    .INIT_17(256'hFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCCCCCCB30000000000),
    .INIT_18(256'hFFFFFFFA20000000000000000000000000000014DFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'h00003FFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h0000000EFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000),
    .INIT_1B(256'h000000000000000000000000000000000DFFFFFFFFFFFFFFFFFFFFFFFFF30000),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFF70),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF70000000000000000000000000000000000DFF),
    .INIT_1E(256'h0000000000000000000000002FFFFFFFFFFFFFFFFFFFFFFFFFF300000000000E),
    .INIT_1F(256'hFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFB000000000),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFF700000000000000000000000000000002BFFFFFFFFFFF),
    .INIT_21(256'h000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFF),
    .INIT_22(256'hFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFC400000000000000),
    .INIT_23(256'hFFFFFFFFFFFFF60000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'h000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFF),
    .INIT_25(256'h00000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60000000000000000000000),
    .INIT_26(256'hFFFFF60000000572000000004720000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFF3),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'h000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60000009FFE20000008FFF4000000CF),
    .INIT_29(256'h0002FFFF8000001DFFFB000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF600),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFF6000002FFFFB000002FFFFD000000CFFFFFFFFF),
    .INIT_2C(256'hB000002FFFFC000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFF),
    .INIT_2D(256'hFFFFFFFFFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6000002FFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFF6000002FFFFB000002FFFFC000000CFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFC000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFF300000000000EFFFFFFFFFFFF),
    .INIT_30(256'hFFF300000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6000002FFFFB000002F),
    .INIT_31(256'hFFFFFFFFF6000002FFFFB000002FFFFC000000CFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'h00CFFFFFFFFFFFFFFFFFFFFFFFFFFDD200000000000CDFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h0000000006FFFFFFFFFFFFFFFFFFFFFFFFFFF6000002FFFFB000002FFFFC0000),
    .INIT_34(256'hF6000002FFFFB000002FFFFC000000CFFFFFFFFFFFFFFFFFFFFFFFFF90000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFE2000000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h9FFFFFFFFFFFFFFFFFFFFFFFFFFFF6000002FFFFB000002FFFFC000000CFFFFF),
    .INIT_37(256'hFFFFB000002FFFFC000000CFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000),
    .INIT_38(256'hFFFFFFFFFFFFFF90000000000005FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6000002),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFF6000002FFFFB000002FFFFC000000CFFFFFFFFFFFFF),
    .INIT_3A(256'h002FFFFC000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFF500000000002FFFFFFFFF),
    .INIT_3B(256'hFFFFFFFE2000000000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6000002FFFFB000),
    .INIT_3C(256'hFFFFFFFFFFFFF6000002FFFFB000002FFFFC000000CFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'h000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000009FFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hF90000006FFFFFFFFFFDCCCCCEFFFFFFFFFFFFFFF6000002FFFFB000002FFFFC),
    .INIT_3F(256'hFFFFF6000002FFFFB000002FFFFC000000CFFFFFFFFFFFFFFCCCCCCFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFB000000DFFFFFFFFFF500002FFFFFFFFFFF0000008FFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFF0000007FFFFFFFFFFFFFFF6000002FFFFB000002FFFFC000000CF),
    .INIT_42(256'h0002FFFFB000002FFFFC000000CFFFFFFFFFFFFFA000000DFFFFFFFFFFE2000D),
    .INIT_43(256'hFFFFA000000DFFFFFFFFFFFC009FFFFFFFFFFFF0000007FFFFFFFFFFFFFFF600),
    .INIT_44(256'hFFF0000007FFFFFFFFFFFFFFF6000002FFFFA000002FFFFD000000CFFFFFFFFF),
    .INIT_45(256'h8000000DFFFA000000CFFFFFFFFFFFFFA000000DFFFFFFFFFFFF97FFFFFFFFFF),
    .INIT_46(256'h000DFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFFF6000001EFFF),
    .INIT_47(256'h07FFFFFFFFFFFFFFF60000007FFD10000005FFE2000000CFFFFFFFFFFFFFA000),
    .INIT_48(256'h1310000000CFFFFFFFFFFFFFA000000111111111111111111111111111100000),
    .INIT_49(256'h000000000000000000000000000007FFFFFFFFFFFFFFF6000000023000000000),
    .INIT_4A(256'hFFFFFFFFF60000000000000000000000000000CFFFFFFFFFFFFFA00000000000),
    .INIT_4B(256'h01DFFFFFFFFFFFFFA00000000000000000000000000000000000000007FFFFFF),
    .INIT_4C(256'h0000000000000000000007FFFFFFFFFFFFFFF900000000000000000000000000),
    .INIT_4D(256'hFC0000000000000000000000000002FFFFFFFFFFFFFFA0000000000000000000),
    .INIT_4E(256'hFFFFFFFFA00000000000000000000000000000000000000007FFFFFFFFFFFFFF),
    .INIT_4F(256'h00000000000007FFFFFFFFFFFFFFFF500000000000000000000000000AFFFFFF),
    .INIT_50(256'h000000000000000000008FFFFFFFFFFFFFFFA000000000000000000000000000),
    .INIT_51(256'hD6666666666666666666666666666666666666666CFFFFFFFFFFFFFFFFE40000),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFB7666666666666666666668DFFFFFFFFFFFFFFFF),
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
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
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

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module Save_Delete_blk_mem_gen_top
   (douta,
    addra,
    ena,
    clka);
  output [23:0]douta;
  input [12:0]addra;
  input ena;
  input clka;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  Save_Delete_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "4" *) 
(* C_COUNT_36K_BRAM = "3" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.304965 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "Save_Delete.mem" *) 
(* C_INIT_FILE_NAME = "Save_Delete.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "6500" *) (* C_READ_DEPTH_B = "6500" *) (* C_READ_WIDTH_A = "24" *) 
(* C_READ_WIDTH_B = "24" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "6500" *) (* C_WRITE_DEPTH_B = "6500" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "24" *) (* C_WRITE_WIDTH_B = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Save_Delete_blk_mem_gen_v8_4_1
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
  input [12:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
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
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
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
  Save_Delete_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module Save_Delete_blk_mem_gen_v8_4_1_synth
   (douta,
    addra,
    ena,
    clka);
  output [23:0]douta;
  input [12:0]addra;
  input ena;
  input clka;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  Save_Delete_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
