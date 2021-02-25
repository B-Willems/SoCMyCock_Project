-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Feb 25 12:39:09 2021
-- Host        : DESKTOP-MHB0GHL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/github/SoCMyCock_Project/vivado/Synthesizer_project/Synthesizer_project.gen/sources_1/bd/design_1/ip/design_1_vhdl_clockdivider_by_0_0/design_1_vhdl_clockdivider_by_0_0_stub.vhdl
-- Design      : design_1_vhdl_clockdivider_by_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vhdl_clockdivider_by_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );

end design_1_vhdl_clockdivider_by_0_0;

architecture stub of design_1_vhdl_clockdivider_by_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,clk_out1";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "vhdl_clockdivider_by_8,Vivado 2020.2";
begin
end;
