vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/axi_fifo_mm_s_v4_2_4
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_crossbar_v2_1_23
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap axi_fifo_mm_s_v4_2_4 questa_lib/msim/axi_fifo_mm_s_v4_2_4
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 questa_lib/msim/axi_crossbar_v2_1_23
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_2_4  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/0042/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/System/ip/System_axi_fifo_mm_s_0_0/sim/System_axi_fifo_mm_s_0_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/System/ip/System_rst_ProcessingSystem_100M_0/sim/System_rst_ProcessingSystem_100M_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib  -93 \
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

vlog -work xil_defaultlib  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/System/ipshared/6f97/hdl/I2S_Transmitter.vhd" \
"../../../bd/System/ipshared/6f97/hdl/AXIS_I2S.vhd" \
"../../../bd/System/ip/System_AXIS_I2S_Transmitter_0_0/sim/System_AXIS_I2S_Transmitter_0_0.vhd" \
"../../../bd/System/ip/System_Reset_ProcessingSystem_0/sim/System_Reset_ProcessingSystem_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xbar_0/sim/System_xbar_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/System/sim/System.vhd" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/System/ip/System_processing_system7_0_1/sim/System_processing_system7_0_1.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/d0f7" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../I2S_AudioPlayer.srcs/sources_1/bd/System/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/System/ip/System_auto_pc_0/sim/System_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
