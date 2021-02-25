// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb 25 12:39:09 2021
// Host        : DESKTOP-MHB0GHL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/github/SoCMyCock_Project/vivado/Synthesizer_project/Synthesizer_project.gen/sources_1/bd/design_1/ip/design_1_vhdl_clockdivider_by_1_0/design_1_vhdl_clockdivider_by_1_0_stub.v
// Design      : design_1_vhdl_clockdivider_by_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "vhdl_clockdivider_by_64,Vivado 2020.2" *)
module design_1_vhdl_clockdivider_by_1_0(clk_in, clk_out1)
/* synthesis syn_black_box black_box_pad_pin="clk_in,clk_out1" */;
  input clk_in;
  output clk_out1;
endmodule
