// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb 25 12:39:23 2021
// Host        : DESKTOP-MHB0GHL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_i2s_receiver_0_1 -prefix
//               design_1_i2s_receiver_0_1_ design_1_i2s_receiver_0_1_stub.v
// Design      : design_1_i2s_receiver_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "i2s_receiver_v1_0_4,Vivado 2020.2" *)
module design_1_i2s_receiver_0_1(s_axi_ctrl_aclk, s_axi_ctrl_aresetn, 
  aud_mclk, aud_mrst, m_axis_aud_aclk, m_axis_aud_aresetn, s_axi_ctrl_awvalid, 
  s_axi_ctrl_awready, s_axi_ctrl_awaddr, s_axi_ctrl_wvalid, s_axi_ctrl_wready, 
  s_axi_ctrl_wdata, s_axi_ctrl_bvalid, s_axi_ctrl_bready, s_axi_ctrl_bresp, 
  s_axi_ctrl_arvalid, s_axi_ctrl_arready, s_axi_ctrl_araddr, s_axi_ctrl_rvalid, 
  s_axi_ctrl_rready, s_axi_ctrl_rdata, s_axi_ctrl_rresp, irq, lrclk_in, sclk_in, sdata_0_in, 
  m_axis_aud_tdata, m_axis_aud_tid, m_axis_aud_tvalid, m_axis_aud_tready)
/* synthesis syn_black_box black_box_pad_pin="s_axi_ctrl_aclk,s_axi_ctrl_aresetn,aud_mclk,aud_mrst,m_axis_aud_aclk,m_axis_aud_aresetn,s_axi_ctrl_awvalid,s_axi_ctrl_awready,s_axi_ctrl_awaddr[7:0],s_axi_ctrl_wvalid,s_axi_ctrl_wready,s_axi_ctrl_wdata[31:0],s_axi_ctrl_bvalid,s_axi_ctrl_bready,s_axi_ctrl_bresp[1:0],s_axi_ctrl_arvalid,s_axi_ctrl_arready,s_axi_ctrl_araddr[7:0],s_axi_ctrl_rvalid,s_axi_ctrl_rready,s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0],irq,lrclk_in,sclk_in,sdata_0_in,m_axis_aud_tdata[31:0],m_axis_aud_tid[2:0],m_axis_aud_tvalid,m_axis_aud_tready" */;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input aud_mclk;
  input aud_mrst;
  input m_axis_aud_aclk;
  input m_axis_aud_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [7:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [7:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output irq;
  input lrclk_in;
  input sclk_in;
  input sdata_0_in;
  output [31:0]m_axis_aud_tdata;
  output [2:0]m_axis_aud_tid;
  output m_axis_aud_tvalid;
  input m_axis_aud_tready;
endmodule
