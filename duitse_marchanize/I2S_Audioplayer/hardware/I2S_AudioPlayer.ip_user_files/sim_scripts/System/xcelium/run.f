-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_fifo_mm_s_v4_2_4 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/0042/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_axi_fifo_mm_s_0_0/sim/System_axi_fifo_mm_s_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_rst_ProcessingSystem_100M_0/sim/System_rst_ProcessingSystem_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_mmcm_pll_drp.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_conv_funs_pkg.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_proc_common_pkg.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_ipif_pkg.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_family_support.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_family.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_soft_reset.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/System_clk_wiz_0_0_pselect_f.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/System_clk_wiz_0_0_address_decoder.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/System_clk_wiz_0_0_slave_attachment.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/System_clk_wiz_0_0_axi_lite_ipif.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_clk_wiz_drp.vhd" \
  "../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_axi_clk_config.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ipshared/6f97/hdl/I2S_Transmitter.vhd" \
  "../../../bd/System/ipshared/6f97/hdl/AXIS_I2S.vhd" \
  "../../../bd/System/ip/System_AXIS_I2S_Transmitter_0_0/sim/System_AXIS_I2S_Transmitter_0_0.vhd" \
  "../../../bd/System/ip/System_Reset_ProcessingSystem_0/sim/System_Reset_ProcessingSystem_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_21 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_23 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_xbar_0/sim/System_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/sim/System.vhd" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_processing_system7_0_1/sim/System_processing_system7_0_1.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_22 \
  "../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/System/ip/System_auto_pc_0/sim/System_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

