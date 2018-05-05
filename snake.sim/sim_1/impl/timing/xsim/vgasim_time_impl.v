// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Apr 28 12:01:52 2018
// Host        : PORTATILE-ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/simon/Desktop/elettro/snake/snake.sim/sim_1/impl/timing/xsim/vgasim_time_impl.v
// Design      : edgebutton
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "8935990" *) 
(* NotValidForBitStream *)
module edgebutton
   (ck,
    button,
    buttonout);
  input ck;
  input button;
  output buttonout;

  wire button;
  wire button_IBUF;
  wire buttonout;
  wire buttonout_OBUF;
  wire ck;
  wire ck_IBUF;
  wire ck_IBUF_BUFG;
  wire [1:0]next_state;
  (* RTL_KEEP = "yes" *) wire [1:0]present_state;

initial begin
 $sdf_annotate("vgasim_time_impl.sdf",,,,"tool_control");
end
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_present_state[0]_i_1 
       (.I0(button_IBUF),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .O(next_state[0]));
  LUT3 #(
    .INIT(8'h60)) 
    \FSM_sequential_present_state[1]_i_1 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(button_IBUF),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "due:01,tre:10,uno:00" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_present_state_reg[0] 
       (.C(ck_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "due:01,tre:10,uno:00" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_present_state_reg[1] 
       (.C(ck_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(present_state[1]),
        .R(1'b0));
  IBUF button_IBUF_inst
       (.I(button),
        .O(button_IBUF));
  OBUF buttonout_OBUF_inst
       (.I(buttonout_OBUF),
        .O(buttonout));
  LUT2 #(
    .INIT(4'h2)) 
    buttonout_OBUF_inst_i_1
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .O(buttonout_OBUF));
  BUFG ck_IBUF_BUFG_inst
       (.I(ck_IBUF),
        .O(ck_IBUF_BUFG));
  IBUF ck_IBUF_inst
       (.I(ck),
        .O(ck_IBUF));
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
