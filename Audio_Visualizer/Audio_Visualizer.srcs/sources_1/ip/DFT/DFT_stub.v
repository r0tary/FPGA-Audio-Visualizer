// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Sun May 21 15:52:52 2023
// Host        : DESKTOP-VUE9GRE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/G/CODE/proj_Vivado/FPGA-Audio-Visualizer/Audio_Visualizer/Audio_Visualizer.srcs/sources_1/ip/DFT/DFT_stub.v
// Design      : DFT
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dft_v4_1_1,Vivado 2019.1.3" *)
module DFT(CLK, CE, SCLR, XN_RE, XN_IM, FD_IN, FWD_INV, SIZE, RFFD, 
  XK_RE, XK_IM, BLK_EXP, FD_OUT, DATA_VALID)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,XN_RE[17:0],XN_IM[17:0],FD_IN,FWD_INV,SIZE[5:0],RFFD,XK_RE[17:0],XK_IM[17:0],BLK_EXP[3:0],FD_OUT,DATA_VALID" */;
  input CLK;
  input CE;
  input SCLR;
  input [17:0]XN_RE;
  input [17:0]XN_IM;
  input FD_IN;
  input FWD_INV;
  input [5:0]SIZE;
  output RFFD;
  output [17:0]XK_RE;
  output [17:0]XK_IM;
  output [3:0]BLK_EXP;
  output FD_OUT;
  output DATA_VALID;
endmodule
