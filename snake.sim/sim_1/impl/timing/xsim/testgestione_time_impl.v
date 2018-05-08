// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon May  7 12:52:34 2018
// Host        : PCSTUDIO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/DOCUMENTI
//               LUIGINO/GitHub/Snake/snake.sim/sim_1/impl/timing/xsim/testgestione_time_impl.v}
// Design      : gestione
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.1" *) 
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [3:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [3:0]NLW_U0_dina_UNCONNECTED;
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.96215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4800" *) 
  (* C_READ_DEPTH_B = "4800" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4800" *) 
  (* C_WRITE_DEPTH_B = "4800" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(NLW_U0_dina_UNCONNECTED[3:0]),
        .dinb(dinb),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[3:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(wea),
        .web(web));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.1" *) 
module blk_mem_gen_1
   (clka,
    ena,
    addra,
    douta,
    pwropt);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  input pwropt;

  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [3:0]NLW_U0_addrb_UNCONNECTED;
  wire [63:0]NLW_U0_dina_UNCONNECTED;
  wire [63:0]NLW_U0_dinb_UNCONNECTED;
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_wea_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0000000000000000" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.370399 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_1__blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[3:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(NLW_U0_dina_UNCONNECTED[63:0]),
        .dinb(NLW_U0_dinb_UNCONNECTED[63:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(ena),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .pwropt(pwropt),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[63:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(NLW_U0_wea_UNCONNECTED[0]),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

module clk_wiz_0
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(36.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* ECO_CHECKSUM = "5ef8bf1d" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module gestione
   (clk,
    rst,
    addRAM,
    dinRAM,
    writeREQUEST,
    sincH,
    sincV,
    r,
    g,
    b);
  input clk;
  input rst;
  input [12:0]addRAM;
  input [3:0]dinRAM;
  input writeREQUEST;
  output sincH;
  output sincV;
  output [3:0]r;
  output [3:0]g;
  output [3:0]b;

  wire [3:0]C;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_present_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_present_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_present_state_reg_n_0_[3] ;
  wire [12:0]addRAM;
  wire [12:0]addRAM_A;
  wire [12:0]addRAM_IBUF;
  wire [3:0]addra;
  wire [12:0]addrb;
  wire [3:0]b;
  wire [3:3]b_OBUF;
  wire ck25;
  wire clk;
  wire clk_IBUF;
  wire [3:0]dinRAM;
  wire [3:0]dinRAM_IBUF;
  wire [3:0]dinb;
  wire [63:0]doutROM;
  wire ena;
  (* RTL_KEEP = "yes" *) wire enableRAM_A;
  wire enableRAM_A_reg_n_0;
  wire enb;
  wire [3:0]g;
  wire [3:0]r;
  wire [3:3]r_OBUF;
  wire redpixel;
  wire rst;
  wire rst_IBUF;
  wire sincH;
  wire sincH_OBUF;
  wire sincV;
  wire sincV_OBUF;
  wire vgacmd_n_14;
  wire vgacmd_n_17;
  wire vgacmd_n_2;
  wire vgacmd_n_3;
  wire vgacmd_n_4;
  wire vgacmd_n_5;
  wire vgacmd_n_6;
  wire vgacmd_n_7;
  wire vgacmd_n_8;
  wire vgacmd_n_9;
  wire writeREQUEST;
  wire writeREQUEST_IBUF;
  wire [3:0]NLW_ram_dina_UNCONNECTED;
  wire [3:0]NLW_ram_doutb_UNCONNECTED;

initial begin
 $sdf_annotate("testgestione_time_impl.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "init:0001,read_ram:0010,read_rom:0100,send_vga:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_present_state_reg[0] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\FSM_onehot_present_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_present_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "init:0001,read_ram:0010,read_rom:0100,send_vga:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[1] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\FSM_onehot_present_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_present_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "init:0001,read_ram:0010,read_rom:0100,send_vga:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[2] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\FSM_onehot_present_state_reg_n_0_[1] ),
        .Q(enableRAM_A),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "init:0001,read_ram:0010,read_rom:0100,send_vga:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[3] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(enableRAM_A),
        .Q(\FSM_onehot_present_state_reg_n_0_[3] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[0] 
       (.CLR(1'b0),
        .D(C[0]),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[10] 
       (.CLR(1'b0),
        .D(vgacmd_n_4),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[11] 
       (.CLR(1'b0),
        .D(vgacmd_n_3),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[12] 
       (.CLR(1'b0),
        .D(vgacmd_n_2),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[1] 
       (.CLR(1'b0),
        .D(C[1]),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[2] 
       (.CLR(1'b0),
        .D(C[2]),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[3] 
       (.CLR(1'b0),
        .D(C[3]),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[4] 
       (.CLR(1'b0),
        .D(vgacmd_n_14),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[5] 
       (.CLR(1'b0),
        .D(vgacmd_n_9),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[6] 
       (.CLR(1'b0),
        .D(vgacmd_n_8),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[7] 
       (.CLR(1'b0),
        .D(vgacmd_n_7),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[8] 
       (.CLR(1'b0),
        .D(vgacmd_n_6),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addRAM_A_reg[9] 
       (.CLR(1'b0),
        .D(vgacmd_n_5),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(addRAM_A[9]));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[0] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[0]),
        .Q(addrb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[10] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[10]),
        .Q(addrb[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[11] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[11]),
        .Q(addrb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[12] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[12]),
        .Q(addrb[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[1] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[1]),
        .Q(addrb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[2] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[2]),
        .Q(addrb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[3] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[3]),
        .Q(addrb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[4] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[4]),
        .Q(addrb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[5] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[5]),
        .Q(addrb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[6] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[6]),
        .Q(addrb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[7] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[7]),
        .Q(addrb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[8] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[8]),
        .Q(addrb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addRAM_B_reg[9] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(addRAM_IBUF[9]),
        .Q(addrb[9]),
        .R(1'b0));
  IBUF \addRAM_IBUF[0]_inst 
       (.I(addRAM[0]),
        .O(addRAM_IBUF[0]));
  IBUF \addRAM_IBUF[10]_inst 
       (.I(addRAM[10]),
        .O(addRAM_IBUF[10]));
  IBUF \addRAM_IBUF[11]_inst 
       (.I(addRAM[11]),
        .O(addRAM_IBUF[11]));
  IBUF \addRAM_IBUF[12]_inst 
       (.I(addRAM[12]),
        .O(addRAM_IBUF[12]));
  IBUF \addRAM_IBUF[1]_inst 
       (.I(addRAM[1]),
        .O(addRAM_IBUF[1]));
  IBUF \addRAM_IBUF[2]_inst 
       (.I(addRAM[2]),
        .O(addRAM_IBUF[2]));
  IBUF \addRAM_IBUF[3]_inst 
       (.I(addRAM[3]),
        .O(addRAM_IBUF[3]));
  IBUF \addRAM_IBUF[4]_inst 
       (.I(addRAM[4]),
        .O(addRAM_IBUF[4]));
  IBUF \addRAM_IBUF[5]_inst 
       (.I(addRAM[5]),
        .O(addRAM_IBUF[5]));
  IBUF \addRAM_IBUF[6]_inst 
       (.I(addRAM[6]),
        .O(addRAM_IBUF[6]));
  IBUF \addRAM_IBUF[7]_inst 
       (.I(addRAM[7]),
        .O(addRAM_IBUF[7]));
  IBUF \addRAM_IBUF[8]_inst 
       (.I(addRAM[8]),
        .O(addRAM_IBUF[8]));
  IBUF \addRAM_IBUF[9]_inst 
       (.I(addRAM[9]),
        .O(addRAM_IBUF[9]));
  OBUF \b_OBUF[0]_inst 
       (.I(1'b0),
        .O(b[0]));
  OBUF \b_OBUF[1]_inst 
       (.I(1'b0),
        .O(b[1]));
  OBUF \b_OBUF[2]_inst 
       (.I(1'b0),
        .O(b[2]));
  OBUF \b_OBUF[3]_inst 
       (.I(b_OBUF),
        .O(b[3]));
  (* OPT_INSERTED *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dinRAM_B_reg[0] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(dinRAM_IBUF[0]),
        .Q(dinb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dinRAM_B_reg[1] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(dinRAM_IBUF[1]),
        .Q(dinb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dinRAM_B_reg[2] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(dinRAM_IBUF[2]),
        .Q(dinb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dinRAM_B_reg[3] 
       (.C(clk_IBUF),
        .CE(writeREQUEST_IBUF),
        .D(dinRAM_IBUF[3]),
        .Q(dinb[3]),
        .R(1'b0));
  IBUF \dinRAM_IBUF[0]_inst 
       (.I(dinRAM[0]),
        .O(dinRAM_IBUF[0]));
  IBUF \dinRAM_IBUF[1]_inst 
       (.I(dinRAM[1]),
        .O(dinRAM_IBUF[1]));
  IBUF \dinRAM_IBUF[2]_inst 
       (.I(dinRAM[2]),
        .O(dinRAM_IBUF[2]));
  IBUF \dinRAM_IBUF[3]_inst 
       (.I(dinRAM[3]),
        .O(dinRAM_IBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    enROM_reg
       (.CLR(\FSM_onehot_present_state_reg_n_0_[3] ),
        .D(1'b1),
        .G(enableRAM_A),
        .GE(1'b1),
        .Q(ena));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    enableRAM_A_reg
       (.CLR(enableRAM_A),
        .D(1'b1),
        .G(\FSM_onehot_present_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(enableRAM_A_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enableRAM_B_reg
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(writeREQUEST_IBUF),
        .Q(enb),
        .R(1'b0));
  OBUF \g_OBUF[0]_inst 
       (.I(1'b0),
        .O(g[0]));
  OBUF \g_OBUF[1]_inst 
       (.I(1'b0),
        .O(g[1]));
  OBUF \g_OBUF[2]_inst 
       (.I(1'b0),
        .O(g[2]));
  OBUF \g_OBUF[3]_inst 
       (.I(1'b0),
        .O(g[3]));
  OBUF \r_OBUF[0]_inst 
       (.I(1'b0),
        .O(r[0]));
  OBUF \r_OBUF[1]_inst 
       (.I(1'b0),
        .O(r[1]));
  OBUF \r_OBUF[2]_inst 
       (.I(1'b0),
        .O(r[2]));
  OBUF \r_OBUF[3]_inst 
       (.I(r_OBUF),
        .O(r[3]));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.1" *) 
  blk_mem_gen_0 ram
       (.addra(addRAM_A),
        .addrb(addrb),
        .clka(clk_IBUF),
        .clkb(clk_IBUF),
        .dina(NLW_ram_dina_UNCONNECTED[3:0]),
        .dinb(dinb),
        .douta(addra),
        .doutb(NLW_ram_doutb_UNCONNECTED[3:0]),
        .ena(enableRAM_A_reg_n_0),
        .enb(enb),
        .wea(1'b0),
        .web(1'b1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    redpixel_reg
       (.CLR(1'b0),
        .D(vgacmd_n_17),
        .G(\FSM_onehot_present_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(redpixel));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.1" *) 
  blk_mem_gen_1 rom
       (.addra(addra),
        .clka(clk_IBUF),
        .douta(doutROM),
        .ena(ena),
        .pwropt(enableRAM_A_reg_n_0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF sincH_OBUF_inst
       (.I(sincH_OBUF),
        .O(sincH));
  OBUF sincV_OBUF_inst
       (.I(sincV_OBUF),
        .O(sincV));
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 vgaclock
       (.clk_in1(clk_IBUF),
        .clk_out1(ck25));
  vga vgacmd
       (.D(vgacmd_n_14),
        .O11({vgacmd_n_2,vgacmd_n_3,vgacmd_n_4,vgacmd_n_5,vgacmd_n_6,vgacmd_n_7,vgacmd_n_8,vgacmd_n_9,C}),
        .b_OBUF(b_OBUF),
        .clk_out1(ck25),
        .douta(doutROM),
        .\r[3] (vgacmd_n_17),
        .r_OBUF(r_OBUF),
        .redpixel(redpixel),
        .rst_IBUF(rst_IBUF),
        .sincH_OBUF(sincH_OBUF),
        .sincV_OBUF(sincV_OBUF));
  IBUF writeREQUEST_IBUF_inst
       (.I(writeREQUEST),
        .O(writeREQUEST_IBUF));
endmodule

module vga
   (sincH_OBUF,
    sincV_OBUF,
    O11,
    D,
    r_OBUF,
    b_OBUF,
    \r[3] ,
    clk_out1,
    rst_IBUF,
    redpixel,
    douta);
  output sincH_OBUF;
  output sincV_OBUF;
  output [11:0]O11;
  output [0:0]D;
  output [0:0]r_OBUF;
  output [0:0]b_OBUF;
  output \r[3] ;
  input clk_out1;
  input rst_IBUF;
  input redpixel;
  input [63:0]douta;

  wire [5:0]B;
  wire [6:4]C;
  wire [0:0]D;
  wire [11:0]O11;
  wire [12:5]addRAM_A1;
  wire \addRAM_A_reg[11]_i_1_n_0 ;
  wire \addRAM_A_reg[11]_i_2_n_0 ;
  wire \addRAM_A_reg[11]_i_3_n_0 ;
  wire \addRAM_A_reg[11]_i_4_n_0 ;
  wire \addRAM_A_reg[11]_i_5_n_0 ;
  wire \addRAM_A_reg[12]_i_3_n_0 ;
  wire \addRAM_A_reg[7]_i_1_n_0 ;
  wire \addRAM_A_reg[7]_i_2_n_0 ;
  wire \addRAM_A_reg[7]_i_3_n_0 ;
  wire \addRAM_A_reg[7]_i_4_n_0 ;
  wire \addressH[5]_i_2_n_0 ;
  wire \addressH[9]_i_1_n_0 ;
  wire \addressH[9]_i_2_n_0 ;
  wire \addressH[9]_i_3_n_0 ;
  wire \addressH[9]_i_4_n_0 ;
  wire \addressH[9]_i_5_n_0 ;
  wire \addressH[9]_i_6_n_0 ;
  wire \addressH_reg_n_0_[0] ;
  wire \addressH_reg_n_0_[1] ;
  wire \addressH_reg_n_0_[2] ;
  wire \addressV[5]_i_2_n_0 ;
  wire \addressV[8]_i_1_n_0 ;
  wire \addressV[8]_i_2_n_0 ;
  wire \addressV[8]_i_3_n_0 ;
  wire \addressV_reg_n_0_[0] ;
  wire \addressV_reg_n_0_[1] ;
  wire \addressV_reg_n_0_[2] ;
  wire [0:0]b_OBUF;
  wire blank;
  wire blank2;
  wire blank_i_1_n_0;
  wire clk_out1;
  wire [63:0]douta;
  wire [9:0]hcount;
  wire \hcount[4]_i_1_n_0 ;
  wire \hcount[7]_i_2_n_0 ;
  wire \hcount[8]_i_2_n_0 ;
  wire \hcount[9]_i_3_n_0 ;
  wire \hcount[9]_i_4_n_0 ;
  wire \hcount[9]_i_5_n_0 ;
  wire \hcount_reg_n_0_[0] ;
  wire \hcount_reg_n_0_[1] ;
  wire \hcount_reg_n_0_[2] ;
  wire \hcount_reg_n_0_[3] ;
  wire \hcount_reg_n_0_[4] ;
  wire \hcount_reg_n_0_[5] ;
  wire \hcount_reg_n_0_[6] ;
  wire \hcount_reg_n_0_[7] ;
  wire \hcount_reg_n_0_[8] ;
  wire \hcount_reg_n_0_[9] ;
  wire [9:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire \r[3] ;
  wire [0:0]r_OBUF;
  wire redpixel;
  wire redpixel_reg_i_10_n_0;
  wire redpixel_reg_i_11_n_0;
  wire redpixel_reg_i_12_n_0;
  wire redpixel_reg_i_13_n_0;
  wire redpixel_reg_i_14_n_0;
  wire redpixel_reg_i_15_n_0;
  wire redpixel_reg_i_16_n_0;
  wire redpixel_reg_i_17_n_0;
  wire redpixel_reg_i_18_n_0;
  wire redpixel_reg_i_19_n_0;
  wire redpixel_reg_i_20_n_0;
  wire redpixel_reg_i_21_n_0;
  wire redpixel_reg_i_22_n_0;
  wire redpixel_reg_i_23_n_0;
  wire redpixel_reg_i_24_n_0;
  wire redpixel_reg_i_25_n_0;
  wire redpixel_reg_i_2_n_0;
  wire redpixel_reg_i_3_n_0;
  wire redpixel_reg_i_4_n_0;
  wire redpixel_reg_i_5_n_0;
  wire redpixel_reg_i_6_n_0;
  wire redpixel_reg_i_7_n_0;
  wire redpixel_reg_i_8_n_0;
  wire redpixel_reg_i_9_n_0;
  wire rst_IBUF;
  wire sincH7_out;
  wire sincH_OBUF;
  wire sincH_i_2_n_0;
  wire sincV_OBUF;
  wire sincV_i_1_n_0;
  wire sincV_i_2_n_0;
  wire sincV_i_3_n_0;
  wire sincV_i_4_n_0;
  wire sincV_i_5_n_0;
  wire sincV_i_6_n_0;
  wire sincV_i_7_n_0;
  wire vcount;
  wire \vcount[5]_i_2_n_0 ;
  wire \vcount[8]_i_2_n_0 ;
  wire \vcount[9]_i_3_n_0 ;
  wire [9:0]vcount_reg__0;
  wire [2:0]\NLW_addRAM_A_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_addRAM_A_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_addRAM_A_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_addRAM_A_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_addRAM_A_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_addRAM_A_reg[12]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_addRAM_A_reg[7]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_addRAM_A_reg[7]_i_1_O_UNCONNECTED ;

  CARRY4 \addRAM_A_reg[11]_i_1 
       (.CI(\addRAM_A_reg[7]_i_1_n_0 ),
        .CO({\addRAM_A_reg[11]_i_1_n_0 ,\NLW_addRAM_A_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O11[10:7]),
        .S(addRAM_A1[11:8]));
  CARRY4 \addRAM_A_reg[11]_i_2 
       (.CI(1'b0),
        .CO({\addRAM_A_reg[11]_i_2_n_0 ,\NLW_addRAM_A_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({B[2:0],1'b0}),
        .O(addRAM_A1[8:5]),
        .S({\addRAM_A_reg[11]_i_3_n_0 ,\addRAM_A_reg[11]_i_4_n_0 ,\addRAM_A_reg[11]_i_5_n_0 ,B[1]}));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[11]_i_3 
       (.I0(B[2]),
        .I1(B[4]),
        .O(\addRAM_A_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[11]_i_4 
       (.I0(B[1]),
        .I1(B[3]),
        .O(\addRAM_A_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[11]_i_5 
       (.I0(B[0]),
        .I1(B[2]),
        .O(\addRAM_A_reg[11]_i_5_n_0 ));
  CARRY4 \addRAM_A_reg[12]_i_1 
       (.CI(\addRAM_A_reg[11]_i_1_n_0 ),
        .CO(\NLW_addRAM_A_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addRAM_A_reg[12]_i_1_O_UNCONNECTED [3:1],O11[11]}),
        .S({1'b0,1'b0,1'b0,addRAM_A1[12]}));
  CARRY4 \addRAM_A_reg[12]_i_2 
       (.CI(\addRAM_A_reg[11]_i_2_n_0 ),
        .CO({addRAM_A1[12],\NLW_addRAM_A_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,B[3]}),
        .O({\NLW_addRAM_A_reg[12]_i_2_O_UNCONNECTED [3],addRAM_A1[11:9]}),
        .S({1'b1,B[5:4],\addRAM_A_reg[12]_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[12]_i_3 
       (.I0(B[3]),
        .I1(B[5]),
        .O(\addRAM_A_reg[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[4]_i_1 
       (.I0(B[0]),
        .I1(C[4]),
        .O(D));
  CARRY4 \addRAM_A_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\addRAM_A_reg[7]_i_1_n_0 ,\NLW_addRAM_A_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,addRAM_A1[6:5],B[0]}),
        .O({O11[6:4],\NLW_addRAM_A_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({addRAM_A1[7],\addRAM_A_reg[7]_i_2_n_0 ,\addRAM_A_reg[7]_i_3_n_0 ,\addRAM_A_reg[7]_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[7]_i_2 
       (.I0(addRAM_A1[6]),
        .I1(C[6]),
        .O(\addRAM_A_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[7]_i_3 
       (.I0(addRAM_A1[5]),
        .I1(C[5]),
        .O(\addRAM_A_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addRAM_A_reg[7]_i_4 
       (.I0(B[0]),
        .I1(C[4]),
        .O(\addRAM_A_reg[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \addressH[0]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00575700)) 
    \addressH[1]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH_reg_n_0_[1] ),
        .I4(\addressH_reg_n_0_[0] ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h0057575757000000)) 
    \addressH[2]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH_reg_n_0_[0] ),
        .I4(\addressH_reg_n_0_[1] ),
        .I5(\addressH_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \addressH[3]_i_1 
       (.I0(\addressH[9]_i_4_n_0 ),
        .I1(\addressH_reg_n_0_[1] ),
        .I2(\addressH_reg_n_0_[0] ),
        .I3(\addressH_reg_n_0_[2] ),
        .I4(O11[0]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \addressH[4]_i_1 
       (.I0(\addressH[9]_i_4_n_0 ),
        .I1(\addressH_reg_n_0_[2] ),
        .I2(\addressH_reg_n_0_[0] ),
        .I3(\addressH_reg_n_0_[1] ),
        .I4(O11[0]),
        .I5(O11[1]),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'h57000057)) 
    \addressH[5]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH[5]_i_2_n_0 ),
        .I4(O11[2]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addressH[5]_i_2 
       (.I0(O11[0]),
        .I1(\addressH_reg_n_0_[1] ),
        .I2(\addressH_reg_n_0_[0] ),
        .I3(\addressH_reg_n_0_[2] ),
        .I4(O11[1]),
        .O(\addressH[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h57000057)) 
    \addressH[6]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH[9]_i_6_n_0 ),
        .I4(O11[3]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h5700575700570000)) 
    \addressH[7]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH[9]_i_6_n_0 ),
        .I4(O11[3]),
        .I5(C[4]),
        .O(p_0_in__0[7]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \addressH[8]_i_1 
       (.I0(\addressH[9]_i_4_n_0 ),
        .I1(C[4]),
        .I2(O11[3]),
        .I3(\addressH[9]_i_6_n_0 ),
        .I4(C[5]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h888888888888888B)) 
    \addressH[9]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressH[9]_i_4_n_0 ),
        .I2(\hcount_reg_n_0_[5] ),
        .I3(\hcount_reg_n_0_[6] ),
        .I4(\hcount_reg_n_0_[4] ),
        .I5(\addressH[9]_i_5_n_0 ),
        .O(\addressH[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \addressH[9]_i_2 
       (.I0(\addressH[9]_i_6_n_0 ),
        .I1(O11[3]),
        .I2(C[4]),
        .I3(C[5]),
        .I4(C[6]),
        .I5(\addressH[9]_i_4_n_0 ),
        .O(\addressH[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \addressH[9]_i_3 
       (.I0(vcount_reg__0[9]),
        .I1(vcount_reg__0[6]),
        .I2(vcount_reg__0[8]),
        .I3(vcount_reg__0[5]),
        .I4(vcount_reg__0[7]),
        .O(\addressH[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \addressH[9]_i_4 
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[9] ),
        .O(\addressH[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addressH[9]_i_5 
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[9] ),
        .O(\addressH[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addressH[9]_i_6 
       (.I0(O11[1]),
        .I1(\addressH_reg_n_0_[2] ),
        .I2(\addressH_reg_n_0_[0] ),
        .I3(\addressH_reg_n_0_[1] ),
        .I4(O11[0]),
        .I5(O11[2]),
        .O(\addressH[9]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[0] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[0]),
        .Q(\addressH_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[1] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[1]),
        .Q(\addressH_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[2] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[2]),
        .Q(\addressH_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[3] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[3]),
        .Q(O11[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[4] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[4]),
        .Q(O11[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[5] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[5]),
        .Q(O11[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[6] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[6]),
        .Q(O11[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[7] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[7]),
        .Q(C[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[8] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__0[8]),
        .Q(C[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addressH_reg[9] 
       (.C(clk_out1),
        .CE(\addressH[9]_i_1_n_0 ),
        .CLR(blank2),
        .D(\addressH[9]_i_2_n_0 ),
        .Q(C[6]));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \addressV[0]_i_1 
       (.I0(vcount_reg__0[7]),
        .I1(vcount_reg__0[5]),
        .I2(vcount_reg__0[8]),
        .I3(vcount_reg__0[6]),
        .I4(vcount_reg__0[9]),
        .I5(\addressV_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \addressV[1]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressV_reg_n_0_[1] ),
        .I2(\addressV_reg_n_0_[0] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \addressV[2]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressV_reg_n_0_[0] ),
        .I2(\addressV_reg_n_0_[1] ),
        .I3(\addressV_reg_n_0_[2] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \addressV[3]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressV_reg_n_0_[1] ),
        .I2(\addressV_reg_n_0_[0] ),
        .I3(\addressV_reg_n_0_[2] ),
        .I4(B[0]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \addressV[4]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressV_reg_n_0_[2] ),
        .I2(\addressV_reg_n_0_[0] ),
        .I3(\addressV_reg_n_0_[1] ),
        .I4(B[0]),
        .I5(B[1]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \addressV[5]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressV[5]_i_2_n_0 ),
        .I2(B[2]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addressV[5]_i_2 
       (.I0(B[0]),
        .I1(\addressV_reg_n_0_[1] ),
        .I2(\addressV_reg_n_0_[0] ),
        .I3(\addressV_reg_n_0_[2] ),
        .I4(B[1]),
        .O(\addressV[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \addressV[6]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(\addressV[8]_i_3_n_0 ),
        .I2(B[3]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \addressV[7]_i_1 
       (.I0(\addressH[9]_i_3_n_0 ),
        .I1(B[3]),
        .I2(\addressV[8]_i_3_n_0 ),
        .I3(B[4]),
        .O(p_0_in__1[7]));
  LUT3 #(
    .INIT(8'hEA)) 
    \addressV[8]_i_1 
       (.I0(sincV_i_5_n_0),
        .I1(\addressH[9]_i_3_n_0 ),
        .I2(vcount),
        .O(\addressV[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBF400000)) 
    \addressV[8]_i_2 
       (.I0(\addressV[8]_i_3_n_0 ),
        .I1(B[3]),
        .I2(B[4]),
        .I3(B[5]),
        .I4(\addressH[9]_i_3_n_0 ),
        .O(\addressV[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addressV[8]_i_3 
       (.I0(B[1]),
        .I1(\addressV_reg_n_0_[2] ),
        .I2(\addressV_reg_n_0_[0] ),
        .I3(\addressV_reg_n_0_[1] ),
        .I4(B[0]),
        .I5(B[2]),
        .O(\addressV[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[0] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[0]),
        .Q(\addressV_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[1] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[1]),
        .Q(\addressV_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[2] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[2]),
        .Q(\addressV_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[3] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[3]),
        .Q(B[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[4] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[4]),
        .Q(B[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[5] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[5]),
        .Q(B[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[6] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[6]),
        .Q(B[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[7] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(p_0_in__1[7]),
        .Q(B[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addressV_reg[8] 
       (.C(clk_out1),
        .CE(\addressV[8]_i_1_n_0 ),
        .CLR(blank2),
        .D(\addressV[8]_i_2_n_0 ),
        .Q(B[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \b_OBUF[3]_inst_i_1 
       (.I0(rst_IBUF),
        .I1(blank),
        .O(b_OBUF));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8FF0000)) 
    blank_i_1
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[8] ),
        .I3(\addressH[9]_i_3_n_0 ),
        .I4(rst_IBUF),
        .I5(blank),
        .O(blank_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    blank_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(blank_i_1_n_0),
        .Q(blank),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[0]_i_1 
       (.I0(\hcount_reg_n_0_[0] ),
        .O(hcount[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount[1]_i_1 
       (.I0(\hcount_reg_n_0_[0] ),
        .I1(\hcount_reg_n_0_[1] ),
        .O(hcount[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount[2]_i_1 
       (.I0(\hcount_reg_n_0_[2] ),
        .I1(\hcount_reg_n_0_[0] ),
        .I2(\hcount_reg_n_0_[1] ),
        .O(hcount[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcount[3]_i_1 
       (.I0(\hcount_reg_n_0_[3] ),
        .I1(\hcount_reg_n_0_[1] ),
        .I2(\hcount_reg_n_0_[0] ),
        .I3(\hcount_reg_n_0_[2] ),
        .O(hcount[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hcount[4]_i_1 
       (.I0(\hcount_reg_n_0_[4] ),
        .I1(\hcount_reg_n_0_[3] ),
        .I2(\hcount_reg_n_0_[1] ),
        .I3(\hcount_reg_n_0_[0] ),
        .I4(\hcount_reg_n_0_[2] ),
        .O(\hcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF7FFFF0000)) 
    \hcount[5]_i_1 
       (.I0(\hcount_reg_n_0_[9] ),
        .I1(\hcount_reg_n_0_[8] ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount_reg_n_0_[7] ),
        .I4(\hcount_reg_n_0_[5] ),
        .I5(\hcount[9]_i_4_n_0 ),
        .O(hcount[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount[6]_i_1 
       (.I0(\hcount_reg_n_0_[6] ),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(\hcount[9]_i_4_n_0 ),
        .O(hcount[6]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \hcount[7]_i_1 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount[7]_i_2_n_0 ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount_reg_n_0_[5] ),
        .I4(\hcount_reg_n_0_[4] ),
        .O(hcount[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hcount[7]_i_2 
       (.I0(\hcount_reg_n_0_[2] ),
        .I1(\hcount_reg_n_0_[0] ),
        .I2(\hcount_reg_n_0_[1] ),
        .I3(\hcount_reg_n_0_[3] ),
        .O(\hcount[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \hcount[8]_i_1 
       (.I0(\hcount[8]_i_2_n_0 ),
        .I1(\hcount_reg_n_0_[8] ),
        .I2(vcount),
        .O(hcount[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \hcount[8]_i_2 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount[7]_i_2_n_0 ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount_reg_n_0_[5] ),
        .I4(\hcount_reg_n_0_[4] ),
        .O(\hcount[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBF0000FF)) 
    \hcount[9]_i_1 
       (.I0(\hcount[9]_i_3_n_0 ),
        .I1(\hcount_reg_n_0_[8] ),
        .I2(\hcount[9]_i_4_n_0 ),
        .I3(\hcount[9]_i_5_n_0 ),
        .I4(\hcount_reg_n_0_[9] ),
        .O(hcount[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[9]_i_2 
       (.I0(rst_IBUF),
        .O(blank2));
  LUT3 #(
    .INIT(8'hFE)) 
    \hcount[9]_i_3 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount_reg_n_0_[6] ),
        .I2(\hcount_reg_n_0_[5] ),
        .O(\hcount[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \hcount[9]_i_4 
       (.I0(\hcount_reg_n_0_[4] ),
        .I1(\hcount_reg_n_0_[3] ),
        .I2(\hcount_reg_n_0_[1] ),
        .I3(\hcount_reg_n_0_[0] ),
        .I4(\hcount_reg_n_0_[2] ),
        .O(\hcount[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \hcount[9]_i_5 
       (.I0(\hcount_reg_n_0_[4] ),
        .I1(\hcount_reg_n_0_[5] ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount[7]_i_2_n_0 ),
        .I4(\hcount_reg_n_0_[7] ),
        .I5(\hcount_reg_n_0_[8] ),
        .O(\hcount[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[0]),
        .Q(\hcount_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[1]),
        .Q(\hcount_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[2]),
        .Q(\hcount_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[3]),
        .Q(\hcount_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(\hcount[4]_i_1_n_0 ),
        .Q(\hcount_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[5]),
        .Q(\hcount_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[6]),
        .Q(\hcount_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[7]),
        .Q(\hcount_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[8]),
        .Q(\hcount_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \hcount_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(blank2),
        .D(hcount[9]),
        .Q(\hcount_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h20)) 
    \r_OBUF[3]_inst_i_1 
       (.I0(redpixel),
        .I1(blank),
        .I2(rst_IBUF),
        .O(r_OBUF));
  LUT6 #(
    .INIT(64'hA0AFA0AFC0C0CFCF)) 
    redpixel_reg_i_1
       (.I0(redpixel_reg_i_2_n_0),
        .I1(redpixel_reg_i_3_n_0),
        .I2(\addressV_reg_n_0_[2] ),
        .I3(redpixel_reg_i_4_n_0),
        .I4(redpixel_reg_i_5_n_0),
        .I5(\addressV_reg_n_0_[1] ),
        .O(\r[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_10
       (.I0(douta[31]),
        .I1(douta[30]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[29]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[28]),
        .O(redpixel_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_11
       (.I0(douta[27]),
        .I1(douta[26]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[25]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[24]),
        .O(redpixel_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_12
       (.I0(douta[19]),
        .I1(douta[18]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[17]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[16]),
        .O(redpixel_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_13
       (.I0(douta[23]),
        .I1(douta[22]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[21]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[20]),
        .O(redpixel_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_14
       (.I0(douta[15]),
        .I1(douta[14]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[13]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[12]),
        .O(redpixel_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_15
       (.I0(douta[11]),
        .I1(douta[10]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[9]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[8]),
        .O(redpixel_reg_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_16
       (.I0(douta[3]),
        .I1(douta[2]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[1]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[0]),
        .O(redpixel_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_17
       (.I0(douta[7]),
        .I1(douta[6]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[5]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[4]),
        .O(redpixel_reg_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_18
       (.I0(douta[51]),
        .I1(douta[50]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[49]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[48]),
        .O(redpixel_reg_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_19
       (.I0(douta[55]),
        .I1(douta[54]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[53]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[52]),
        .O(redpixel_reg_i_19_n_0));
  MUXF8 redpixel_reg_i_2
       (.I0(redpixel_reg_i_6_n_0),
        .I1(redpixel_reg_i_7_n_0),
        .O(redpixel_reg_i_2_n_0),
        .S(\addressV_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_20
       (.I0(douta[59]),
        .I1(douta[58]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[57]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[56]),
        .O(redpixel_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_21
       (.I0(douta[63]),
        .I1(douta[62]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[61]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[60]),
        .O(redpixel_reg_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_22
       (.I0(douta[35]),
        .I1(douta[34]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[33]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[32]),
        .O(redpixel_reg_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_23
       (.I0(douta[39]),
        .I1(douta[38]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[37]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[36]),
        .O(redpixel_reg_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_24
       (.I0(douta[43]),
        .I1(douta[42]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[41]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[40]),
        .O(redpixel_reg_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    redpixel_reg_i_25
       (.I0(douta[47]),
        .I1(douta[46]),
        .I2(\addressH_reg_n_0_[1] ),
        .I3(douta[45]),
        .I4(\addressH_reg_n_0_[0] ),
        .I5(douta[44]),
        .O(redpixel_reg_i_25_n_0));
  MUXF8 redpixel_reg_i_3
       (.I0(redpixel_reg_i_8_n_0),
        .I1(redpixel_reg_i_9_n_0),
        .O(redpixel_reg_i_3_n_0),
        .S(\addressV_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    redpixel_reg_i_4
       (.I0(redpixel_reg_i_10_n_0),
        .I1(redpixel_reg_i_11_n_0),
        .I2(\addressV_reg_n_0_[0] ),
        .I3(redpixel_reg_i_12_n_0),
        .I4(\addressH_reg_n_0_[2] ),
        .I5(redpixel_reg_i_13_n_0),
        .O(redpixel_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    redpixel_reg_i_5
       (.I0(redpixel_reg_i_14_n_0),
        .I1(redpixel_reg_i_15_n_0),
        .I2(\addressV_reg_n_0_[0] ),
        .I3(redpixel_reg_i_16_n_0),
        .I4(\addressH_reg_n_0_[2] ),
        .I5(redpixel_reg_i_17_n_0),
        .O(redpixel_reg_i_5_n_0));
  MUXF7 redpixel_reg_i_6
       (.I0(redpixel_reg_i_18_n_0),
        .I1(redpixel_reg_i_19_n_0),
        .O(redpixel_reg_i_6_n_0),
        .S(\addressH_reg_n_0_[2] ));
  MUXF7 redpixel_reg_i_7
       (.I0(redpixel_reg_i_20_n_0),
        .I1(redpixel_reg_i_21_n_0),
        .O(redpixel_reg_i_7_n_0),
        .S(\addressH_reg_n_0_[2] ));
  MUXF7 redpixel_reg_i_8
       (.I0(redpixel_reg_i_22_n_0),
        .I1(redpixel_reg_i_23_n_0),
        .O(redpixel_reg_i_8_n_0),
        .S(\addressH_reg_n_0_[2] ));
  MUXF7 redpixel_reg_i_9
       (.I0(redpixel_reg_i_24_n_0),
        .I1(redpixel_reg_i_25_n_0),
        .O(redpixel_reg_i_9_n_0),
        .S(\addressH_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000FE0011000000)) 
    sincH_i_1
       (.I0(\hcount_reg_n_0_[5] ),
        .I1(\hcount_reg_n_0_[6] ),
        .I2(\hcount_reg_n_0_[4] ),
        .I3(\hcount_reg_n_0_[9] ),
        .I4(\hcount_reg_n_0_[8] ),
        .I5(\hcount_reg_n_0_[7] ),
        .O(sincH7_out));
  LUT5 #(
    .INIT(32'h40020002)) 
    sincH_i_2
       (.I0(\hcount_reg_n_0_[8] ),
        .I1(\hcount_reg_n_0_[7] ),
        .I2(\hcount_reg_n_0_[6] ),
        .I3(\hcount_reg_n_0_[5] ),
        .I4(\hcount_reg_n_0_[4] ),
        .O(sincH_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sincH_reg
       (.C(clk_out1),
        .CE(sincH7_out),
        .D(sincH_i_2_n_0),
        .PRE(blank2),
        .Q(sincH_OBUF));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    sincV_i_1
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[1]),
        .I3(vcount_reg__0[2]),
        .I4(sincV_i_4_n_0),
        .I5(sincV_i_5_n_0),
        .O(sincV_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8A8A8AAAAAAAA)) 
    sincV_i_2
       (.I0(sincV_i_6_n_0),
        .I1(vcount_reg__0[9]),
        .I2(vcount_reg__0[4]),
        .I3(vcount_reg__0[3]),
        .I4(vcount_reg__0[2]),
        .I5(sincV_i_7_n_0),
        .O(sincV_i_2_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    sincV_i_3
       (.I0(sincV_i_4_n_0),
        .I1(vcount_reg__0[3]),
        .I2(vcount_reg__0[9]),
        .O(sincV_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sincV_i_4
       (.I0(vcount_reg__0[5]),
        .I1(vcount_reg__0[4]),
        .I2(vcount_reg__0[7]),
        .I3(vcount_reg__0[8]),
        .I4(vcount_reg__0[6]),
        .O(sincV_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000110001001100)) 
    sincV_i_5
       (.I0(vcount_reg__0[9]),
        .I1(vcount_reg__0[4]),
        .I2(vcount_reg__0[2]),
        .I3(sincV_i_7_n_0),
        .I4(vcount_reg__0[3]),
        .I5(vcount_reg__0[1]),
        .O(sincV_i_5_n_0));
  LUT6 #(
    .INIT(64'h00FF00FF01FFFFFF)) 
    sincV_i_6
       (.I0(vcount_reg__0[2]),
        .I1(vcount_reg__0[1]),
        .I2(vcount_reg__0[0]),
        .I3(vcount_reg__0[9]),
        .I4(vcount_reg__0[3]),
        .I5(sincV_i_4_n_0),
        .O(sincV_i_6_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    sincV_i_7
       (.I0(vcount_reg__0[7]),
        .I1(vcount_reg__0[5]),
        .I2(vcount_reg__0[8]),
        .I3(vcount_reg__0[6]),
        .O(sincV_i_7_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sincV_reg
       (.C(clk_out1),
        .CE(sincV_i_1_n_0),
        .D(sincV_i_2_n_0),
        .PRE(blank2),
        .Q(sincV_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \vcount[0]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vcount[1]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vcount[2]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[1]),
        .I3(vcount_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \vcount[3]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[2]),
        .I2(vcount_reg__0[1]),
        .I3(vcount_reg__0[0]),
        .I4(vcount_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \vcount[4]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[1]),
        .I2(vcount_reg__0[0]),
        .I3(vcount_reg__0[3]),
        .I4(vcount_reg__0[2]),
        .I5(vcount_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \vcount[5]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[2]),
        .I2(vcount_reg__0[3]),
        .I3(\vcount[5]_i_2_n_0 ),
        .I4(vcount_reg__0[4]),
        .I5(vcount_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \vcount[5]_i_2 
       (.I0(vcount_reg__0[0]),
        .I1(vcount_reg__0[1]),
        .O(\vcount[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \vcount[6]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(\vcount[8]_i_2_n_0 ),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \vcount[7]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[6]),
        .I2(vcount_reg__0[5]),
        .I3(\vcount[8]_i_2_n_0 ),
        .I4(vcount_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \vcount[8]_i_1 
       (.I0(sincV_i_3_n_0),
        .I1(\vcount[8]_i_2_n_0 ),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[6]),
        .I4(vcount_reg__0[7]),
        .I5(vcount_reg__0[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vcount[8]_i_2 
       (.I0(vcount_reg__0[2]),
        .I1(vcount_reg__0[3]),
        .I2(vcount_reg__0[0]),
        .I3(vcount_reg__0[1]),
        .I4(vcount_reg__0[4]),
        .O(\vcount[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \vcount[9]_i_1 
       (.I0(\hcount_reg_n_0_[7] ),
        .I1(\hcount_reg_n_0_[6] ),
        .I2(\hcount_reg_n_0_[5] ),
        .I3(\hcount_reg_n_0_[8] ),
        .I4(\hcount_reg_n_0_[9] ),
        .I5(\hcount[9]_i_4_n_0 ),
        .O(vcount));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \vcount[9]_i_2 
       (.I0(sincV_i_3_n_0),
        .I1(vcount_reg__0[9]),
        .I2(\vcount[9]_i_3_n_0 ),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \vcount[9]_i_3 
       (.I0(vcount_reg__0[6]),
        .I1(vcount_reg__0[8]),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[7]),
        .I4(\vcount[8]_i_2_n_0 ),
        .O(\vcount[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[0] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[0]),
        .Q(vcount_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[1] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[1]),
        .Q(vcount_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[2] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[2]),
        .Q(vcount_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[3] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[3]),
        .Q(vcount_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[4] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[4]),
        .Q(vcount_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[5] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[5]),
        .Q(vcount_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[6] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[6]),
        .Q(vcount_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[7] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[7]),
        .Q(vcount_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[8] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[8]),
        .Q(vcount_reg__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \vcount_reg[9] 
       (.C(clk_out1),
        .CE(vcount),
        .CLR(blank2),
        .D(p_0_in[9]),
        .Q(vcount_reg__0[9]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire [3:0]\NLW_ramloop[0].ram.r_dina_UNCONNECTED ;
  wire [3:0]\NLW_ramloop[0].ram.r_doutb_UNCONNECTED ;

  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(\NLW_ramloop[0].ram.r_dina_UNCONNECTED [3:0]),
        .dinb(dinb),
        .douta(douta),
        .doutb(\NLW_ramloop[0].ram.r_doutb_UNCONNECTED [3:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire [3:0]\NLW_prim_init.ram_dina_UNCONNECTED ;
  wire [3:0]\NLW_prim_init.ram_doutb_UNCONNECTED ;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(\NLW_prim_init.ram_dina_UNCONNECTED [3:0]),
        .dinb(dinb),
        .douta(douta),
        .doutb(\NLW_prim_init.ram_doutb_UNCONNECTED [3:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DIADI_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEB=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_B = "WRITE_FIRST:NO_CHANGE_1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DIADI_UNCONNECTED [3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire [3:0]\NLW_valid.cstr_dina_UNCONNECTED ;
  wire [3:0]\NLW_valid.cstr_doutb_UNCONNECTED ;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(\NLW_valid.cstr_dina_UNCONNECTED [3:0]),
        .dinb(dinb),
        .douta(douta),
        .doutb(\NLW_valid.cstr_doutb_UNCONNECTED [3:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.96215 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "2" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "4800" *) (* C_READ_DEPTH_B = "4800" *) (* C_READ_WIDTH_A = "4" *) 
(* C_READ_WIDTH_B = "4" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "4800" *) (* C_WRITE_DEPTH_B = "4800" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "4" *) (* C_WRITE_WIDTH_B = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1
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
  input [3:0]dina;
  output [3:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [3:0]dinb;
  output [3:0]doutb;
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
  input [3:0]s_axi_wdata;
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
  output [3:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire [3:0]NLW_inst_blk_mem_gen_dina_UNCONNECTED;
  wire [3:0]NLW_inst_blk_mem_gen_doutb_UNCONNECTED;

  blk_mem_gen_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(NLW_inst_blk_mem_gen_dina_UNCONNECTED[3:0]),
        .dinb(dinb),
        .douta(douta),
        .doutb(NLW_inst_blk_mem_gen_doutb_UNCONNECTED[3:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1_synth
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire [3:0]\NLW_gnbram.gnativebmg.native_blk_mem_gen_dina_UNCONNECTED ;
  wire [3:0]\NLW_gnbram.gnativebmg.native_blk_mem_gen_doutb_UNCONNECTED ;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(\NLW_gnbram.gnativebmg.native_blk_mem_gen_dina_UNCONNECTED [3:0]),
        .dinb(dinb),
        .douta(douta),
        .doutb(\NLW_gnbram.gnativebmg.native_blk_mem_gen_doutb_UNCONNECTED [3:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_1__blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    pwropt);
  output [63:0]douta;
  input clka;
  input ena;
  input [3:0]addra;
  input pwropt;

  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;

  blk_mem_gen_1__blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .pwropt(pwropt));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1__blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    pwropt);
  output [63:0]douta;
  input clka;
  input ena;
  input [3:0]addra;
  input pwropt;

  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;

  blk_mem_gen_1__blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .pwropt(pwropt));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1__blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    pwropt);
  output [63:0]douta;
  input clka;
  input ena;
  input [3:0]addra;
  input pwropt;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENARDEN_cooolgate_en_sig_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENBWREN_cooolgate_en_sig_5 ;
  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;
  wire \rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_2 ;
  wire \rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_3 ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h01073F7F7F3F070180E0FCFEFEFCE080FF7E7E3C3C3C1800FFFFFFFFFFFFFFFF),
    .INIT_01(256'h0000000000000000000000000000000000183C7E7E3C180000183C3C3C7E7EFF),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta[31:0]),
        .DOBDO(douta[63:32]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENARDEN_cooolgate_en_sig_4 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENBWREN_cooolgate_en_sig_5 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(ena),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hd0)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENARDEN_cooolgate_en_gate_4 
       (.I0(\rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_3 ),
        .I1(\rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_2 ),
        .I2(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENARDEN_cooolgate_en_sig_4 ));
  LUT3 #(
    .INIT(8'hd0)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENBWREN_cooolgate_en_gate_6 
       (.I0(\rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_3 ),
        .I1(\rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_2 ),
        .I2(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ENBWREN_cooolgate_en_sig_5 ));
  FDCE #(
    .INIT(1'b1)) 
    \rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_gate_2_cooolDelFlop 
       (.C(clka),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt),
        .Q(\rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_gate_3_cooolDelFlop 
       (.C(clka),
        .CE(1'b1),
        .CLR(1'b0),
        .D(ena),
        .Q(\rom/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_cooolgate_en_sig_3 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_1__blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    pwropt);
  output [63:0]douta;
  input clka;
  input ena;
  input [3:0]addra;
  input pwropt;

  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;

  blk_mem_gen_1__blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .pwropt(pwropt));
endmodule

(* C_ADDRA_WIDTH = "4" *) (* C_ADDRB_WIDTH = "4" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0000000000000000" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.370399 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16" *) (* C_READ_DEPTH_B = "16" *) (* C_READ_WIDTH_A = "64" *) 
(* C_READ_WIDTH_B = "64" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "16" *) (* C_WRITE_DEPTH_B = "16" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "64" *) (* C_WRITE_WIDTH_B = "64" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_1__blk_mem_gen_v8_4_1
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
    s_axi_rdaddrecc,
    pwropt);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [3:0]rdaddrecc;
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
  input [63:0]s_axi_wdata;
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
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [3:0]s_axi_rdaddrecc;
  input pwropt;

  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;

  blk_mem_gen_1__blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .pwropt(pwropt));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_1__blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra,
    pwropt);
  output [63:0]douta;
  input clka;
  input ena;
  input [3:0]addra;
  input pwropt;

  wire [3:0]addra;
  wire clka;
  wire [63:0]douta;
  wire ena;
  wire pwropt;

  blk_mem_gen_1__blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .pwropt(pwropt));
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
