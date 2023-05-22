-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Sun May 21 15:52:45 2023
-- Host        : DESKTOP-VUE9GRE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DFT_stub.vhdl
-- Design      : DFT
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    XN_RE : in STD_LOGIC_VECTOR ( 17 downto 0 );
    XN_IM : in STD_LOGIC_VECTOR ( 17 downto 0 );
    FD_IN : in STD_LOGIC;
    FWD_INV : in STD_LOGIC;
    SIZE : in STD_LOGIC_VECTOR ( 5 downto 0 );
    RFFD : out STD_LOGIC;
    XK_RE : out STD_LOGIC_VECTOR ( 17 downto 0 );
    XK_IM : out STD_LOGIC_VECTOR ( 17 downto 0 );
    BLK_EXP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FD_OUT : out STD_LOGIC;
    DATA_VALID : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CE,SCLR,XN_RE[17:0],XN_IM[17:0],FD_IN,FWD_INV,SIZE[5:0],RFFD,XK_RE[17:0],XK_IM[17:0],BLK_EXP[3:0],FD_OUT,DATA_VALID";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dft_v4_1_1,Vivado 2019.1.3";
begin
end;
