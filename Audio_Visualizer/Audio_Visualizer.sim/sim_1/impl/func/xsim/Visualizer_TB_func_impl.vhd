-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu May 25 14:16:10 2023
-- Host        : DESKTOP-VUE9GRE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/G/CODE/proj_Vivado/FPGA-Audio-Visualizer/Audio_Visualizer/Audio_Visualizer.sim/sim_1/impl/func/xsim/Visualizer_TB_func_impl.vhd
-- Design      : Visualizer
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADAU1761_interface is
  port (
    AC_MCLK : out STD_LOGIC;
    CLK_48 : in STD_LOGIC
  );
end ADAU1761_interface;

architecture STRUCTURE of ADAU1761_interface is
  signal \^ac_mclk\ : STD_LOGIC;
  signal master_clk_i_1_n_1 : STD_LOGIC;
begin
  AC_MCLK <= \^ac_mclk\;
master_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ac_mclk\,
      O => master_clk_i_1_n_1
    );
master_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => master_clk_i_1_n_1,
      Q => \^ac_mclk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DFT_top is
  port (
    \magn_out_buffer_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \addr_buffer_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    n_0_205_BUFG_inst_n_1 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_100_IBUF_BUFG : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end DFT_top;

architecture STRUCTURE of DFT_top is
  signal ZERO : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of GND_3 : label is "PROPCONST";
begin
  \addr_buffer_reg[3]_0\(3) <= ZERO;
  \addr_buffer_reg[3]_0\(2) <= ZERO;
  \addr_buffer_reg[3]_0\(1) <= ZERO;
  \addr_buffer_reg[3]_0\(0) <= ZERO;
  \magn_out_buffer_reg[4]_0\(4) <= ZERO;
  \magn_out_buffer_reg[4]_0\(3) <= ZERO;
  \magn_out_buffer_reg[4]_0\(2) <= ZERO;
  \magn_out_buffer_reg[4]_0\(1) <= ZERO;
  \magn_out_buffer_reg[4]_0\(0) <= ZERO;
  n_0_205_BUFG_inst_n_1 <= 'Z';
GND_3: unisim.vcomponents.GND
     port map (
      G => ZERO
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM_mag is
  port (
    mag_in : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_100_IBUF_BUFG : in STD_LOGIC;
    bar_height_reg_0_15_0_4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bar_height_reg_0_15_0_4_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end RAM_mag;

architecture STRUCTURE of RAM_mag is
  signal NLW_ram_single_port_reg_0_15_0_4_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_ram_single_port_reg_0_15_0_4_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_single_port_reg_0_15_0_4 : label is "";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ram_single_port_reg_0_15_0_4 : label is "SWEEP";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_single_port_reg_0_15_0_4 : label is 80;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_single_port_reg_0_15_0_4 : label is "RAM_DFT_mag/ram_single_port";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_single_port_reg_0_15_0_4 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_single_port_reg_0_15_0_4 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of ram_single_port_reg_0_15_0_4 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_single_port_reg_0_15_0_4 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_single_port_reg_0_15_0_4 : label is 4;
begin
ram_single_port_reg_0_15_0_4: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => B"00000",
      ADDRB(4 downto 0) => B"00000",
      ADDRC(4 downto 0) => B"00000",
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => bar_height_reg_0_15_0_4_0(3 downto 0),
      DIA(1 downto 0) => bar_height_reg_0_15_0_4(1 downto 0),
      DIB(1 downto 0) => bar_height_reg_0_15_0_4(3 downto 2),
      DIC(1) => '0',
      DIC(0) => bar_height_reg_0_15_0_4(4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => mag_in(1 downto 0),
      DOB(1 downto 0) => mag_in(3 downto 2),
      DOC(1) => NLW_ram_single_port_reg_0_15_0_4_DOC_UNCONNECTED(1),
      DOC(0) => mag_in(4),
      DOD(1 downto 0) => NLW_ram_single_port_reg_0_15_0_4_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_100_IBUF_BUFG,
      WE => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA is
  port (
    Hsync_OBUF : out STD_LOGIC;
    Vsync_OBUF : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \hPos_reg[7]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \bar_index_reg_rep[3]__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Vactive_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bar_index_reg_rep[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Xpos_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Xpos_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ltOp_carry_i_9 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Xpos_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Xpos_reg[9]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bar_index_reg_rep[3]__1_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \i__carry_i_8__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Xpos_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Xpos_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i__carry_i_8__0_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Ypos_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Ypos_reg[8]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Xpos_reg[9]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hPos_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    Hsync_OBUF_BUFG : in STD_LOGIC;
    leqOp_carry : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gtOp_inferred__0/i__carry\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    plusOp13 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ltOp_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    plusOp10 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end VGA;

architecture STRUCTURE of VGA is
  signal Hactive : STD_LOGIC;
  signal Hactive_i_10_n_1 : STD_LOGIC;
  signal Hactive_i_11_n_1 : STD_LOGIC;
  signal Hactive_i_12_n_1 : STD_LOGIC;
  signal Hactive_i_13_n_1 : STD_LOGIC;
  signal Hactive_i_14_n_1 : STD_LOGIC;
  signal Hactive_i_15_n_1 : STD_LOGIC;
  signal Hactive_i_1_n_1 : STD_LOGIC;
  signal Hactive_i_2_n_1 : STD_LOGIC;
  signal Hactive_i_3_n_1 : STD_LOGIC;
  signal Hactive_i_4_n_1 : STD_LOGIC;
  signal Hactive_i_5_n_1 : STD_LOGIC;
  signal Hactive_i_6_n_1 : STD_LOGIC;
  signal Hactive_i_7_n_1 : STD_LOGIC;
  signal Hactive_i_8_n_1 : STD_LOGIC;
  signal Hactive_i_9_n_1 : STD_LOGIC;
  signal Hsync : STD_LOGIC;
  signal \^hsync_obuf\ : STD_LOGIC;
  signal Hsync_i_1_n_1 : STD_LOGIC;
  signal Hsync_i_2_n_1 : STD_LOGIC;
  signal Hsync_i_4_n_1 : STD_LOGIC;
  signal Hsync_i_5_n_1 : STD_LOGIC;
  signal Hsync_i_6_n_1 : STD_LOGIC;
  signal Hsync_i_7_n_1 : STD_LOGIC;
  signal Hsync_i_8_n_1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Vactive0 : STD_LOGIC;
  signal Vactive_i_10_n_1 : STD_LOGIC;
  signal Vactive_i_11_n_1 : STD_LOGIC;
  signal Vactive_i_12_n_1 : STD_LOGIC;
  signal Vactive_i_13_n_1 : STD_LOGIC;
  signal Vactive_i_14_n_1 : STD_LOGIC;
  signal Vactive_i_15_n_1 : STD_LOGIC;
  signal Vactive_i_16_n_1 : STD_LOGIC;
  signal Vactive_i_17_n_1 : STD_LOGIC;
  signal Vactive_i_1_n_1 : STD_LOGIC;
  signal Vactive_i_3_n_1 : STD_LOGIC;
  signal Vactive_i_4_n_1 : STD_LOGIC;
  signal Vactive_i_5_n_1 : STD_LOGIC;
  signal Vactive_i_7_n_1 : STD_LOGIC;
  signal Vactive_i_8_n_1 : STD_LOGIC;
  signal Vactive_i_9_n_1 : STD_LOGIC;
  signal \^vactive_reg_0\ : STD_LOGIC;
  signal Vactive_reg_n_1 : STD_LOGIC;
  signal Vsync0 : STD_LOGIC;
  signal Vsync05_out : STD_LOGIC;
  signal \^vsync_obuf\ : STD_LOGIC;
  signal Vsync_i_1_n_1 : STD_LOGIC;
  signal Vsync_i_3_n_1 : STD_LOGIC;
  signal Vsync_i_4_n_1 : STD_LOGIC;
  signal \Xpos_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Xpos_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \Xpos_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \Xpos_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \Xpos_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Xpos_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \Ypos_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Ypos_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal hPos : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \hPos[31]_i_10_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_3_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_4_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_5_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_6_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_7_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_8_n_1\ : STD_LOGIC;
  signal \hPos[31]_i_9_n_1\ : STD_LOGIC;
  signal \hPos_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \hPos_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \hPos_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \hPos_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \hPos_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \hPos_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \^hpos_reg[7]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \hPos_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vPos : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \vPos[0]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[10]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[11]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[12]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[13]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[14]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[15]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[16]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[17]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[18]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[19]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[1]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[20]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[21]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[22]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[23]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[24]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[25]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[26]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[27]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[28]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[29]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[2]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[30]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_10_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_11_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_2_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_3_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_4_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_5_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_6_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_8_n_1\ : STD_LOGIC;
  signal \vPos[31]_i_9_n_1\ : STD_LOGIC;
  signal \vPos[3]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[4]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[5]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[6]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[7]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[8]_i_1_n_1\ : STD_LOGIC;
  signal \vPos[9]_i_1_n_1\ : STD_LOGIC;
  signal \vPos_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[12]_i_2_n_8\ : STD_LOGIC;
  signal \vPos_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[16]_i_2_n_8\ : STD_LOGIC;
  signal \vPos_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[20]_i_2_n_8\ : STD_LOGIC;
  signal \vPos_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[24]_i_2_n_8\ : STD_LOGIC;
  signal \vPos_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[28]_i_2_n_8\ : STD_LOGIC;
  signal \vPos_reg[31]_i_7_n_6\ : STD_LOGIC;
  signal \vPos_reg[31]_i_7_n_7\ : STD_LOGIC;
  signal \vPos_reg[31]_i_7_n_8\ : STD_LOGIC;
  signal \vPos_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[4]_i_2_n_8\ : STD_LOGIC;
  signal \vPos_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \vPos_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \vPos_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \vPos_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \vPos_reg[8]_i_2_n_8\ : STD_LOGIC;
  signal x_cord : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_hPos_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hPos_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hPos_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hPos_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hPos_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hPos_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hPos_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hPos_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hPos_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vPos_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_vPos_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_vPos_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Hactive_i_10 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of Hactive_i_11 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of Hactive_i_13 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of Hactive_i_4 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of Hsync_i_7 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of Vactive_i_15 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of Vactive_i_17 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of Vactive_i_8 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of Vsync_i_3 : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[3]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[4]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Xpos_reg[4]_i_1\ : label is "soft_lutpair64";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[5]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Xpos_reg[5]_i_1\ : label is "soft_lutpair64";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[6]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Xpos_reg[6]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[7]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Xpos_reg[7]_i_1\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[8]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Xpos_reg[8]_i_1\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \Xpos_reg[9]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[0]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[0]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[1]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[1]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[2]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[3]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[3]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[4]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[4]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[5]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[6]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[6]_i_2\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[7]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[7]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \Ypos_reg[8]\ : label is "LDC";
  attribute SOFT_HLUTNM of \Ypos_reg[8]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \hPos[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \hPos[10]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \hPos[11]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \hPos[12]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \hPos[13]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \hPos[14]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \hPos[15]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \hPos[17]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \hPos[18]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \hPos[19]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \hPos[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \hPos[20]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \hPos[21]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \hPos[22]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \hPos[23]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \hPos[24]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \hPos[25]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \hPos[26]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \hPos[27]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \hPos[28]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \hPos[29]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \hPos[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \hPos[30]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \hPos[31]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \hPos[31]_i_10\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \hPos[31]_i_6\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \hPos[31]_i_8\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \hPos[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \hPos[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \hPos[5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \hPos[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \hPos[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \hPos[8]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \hPos[9]_i_1\ : label is "soft_lutpair70";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \hPos_reg[12]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[16]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[20]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[24]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[28]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[31]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[4]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \hPos_reg[8]_i_2\ : label is "SWEEP";
  attribute SOFT_HLUTNM of \vPos[31]_i_10\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \vPos[31]_i_11\ : label is "soft_lutpair50";
  attribute OPT_MODIFIED of \vPos_reg[12]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[16]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[20]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[24]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[28]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[31]_i_7\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[4]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \vPos_reg[8]_i_2\ : label is "SWEEP";
begin
  Hsync_OBUF <= \^hsync_obuf\;
  Q(8 downto 0) <= \^q\(8 downto 0);
  Vactive_reg_0 <= \^vactive_reg_0\;
  Vsync_OBUF <= \^vsync_obuf\;
  \hPos_reg[7]_0\(6 downto 0) <= \^hpos_reg[7]_0\(6 downto 0);
Hactive_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => Hactive_i_2_n_1,
      I1 => Hactive_i_3_n_1,
      I2 => Hactive_i_4_n_1,
      I3 => Hactive,
      I4 => Hactive_i_5_n_1,
      I5 => Hactive_i_6_n_1,
      O => Hactive_i_1_n_1
    );
Hactive_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => hPos(2),
      I1 => hPos(1),
      I2 => hPos(0),
      O => Hactive_i_10_n_1
    );
Hactive_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Hactive_i_4_n_1,
      I1 => hPos(8),
      I2 => hPos(3),
      O => Hactive_i_11_n_1
    );
Hactive_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => hPos(6),
      I1 => hPos(5),
      I2 => Hsync_i_4_n_1,
      I3 => hPos(28),
      I4 => hPos(29),
      O => Hactive_i_12_n_1
    );
Hactive_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => hPos(2),
      I1 => hPos(0),
      I2 => hPos(1),
      O => Hactive_i_13_n_1
    );
Hactive_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(12),
      I3 => hPos(13),
      I4 => hPos(26),
      I5 => hPos(14),
      O => Hactive_i_14_n_1
    );
Hactive_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => hPos(20),
      I1 => hPos(19),
      I2 => hPos(18),
      O => Hactive_i_15_n_1
    );
Hactive_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002202"
    )
        port map (
      I0 => Hactive_i_7_n_1,
      I1 => Hactive_i_8_n_1,
      I2 => hPos(7),
      I3 => hPos(10),
      I4 => hPos(11),
      O => Hactive_i_2_n_1
    );
Hactive_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => Hactive_i_9_n_1,
      I1 => Hactive_i_10_n_1,
      I2 => reset_IBUF,
      I3 => hPos(3),
      I4 => hPos(4),
      I5 => Hsync_i_4_n_1,
      O => Hactive_i_3_n_1
    );
Hactive_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => hPos(19),
      I1 => hPos(20),
      I2 => hPos(10),
      I3 => hPos(11),
      I4 => \hPos[31]_i_5_n_1\,
      O => Hactive_i_4_n_1
    );
Hactive_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => Hactive_i_11_n_1,
      I1 => hPos(4),
      I2 => hPos(5),
      I3 => hPos(7),
      I4 => reset_IBUF,
      I5 => Hactive_i_12_n_1,
      O => Hactive_i_5_n_1
    );
Hactive_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008808"
    )
        port map (
      I0 => Hactive_i_7_n_1,
      I1 => Hactive_i_13_n_1,
      I2 => hPos(9),
      I3 => hPos(10),
      I4 => hPos(11),
      I5 => Hactive_i_8_n_1,
      O => Hactive_i_6_n_1
    );
Hactive_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000D"
    )
        port map (
      I0 => hPos(27),
      I1 => hPos(28),
      I2 => hPos(29),
      I3 => Hactive_i_14_n_1,
      I4 => Hactive_i_15_n_1,
      O => Hactive_i_7_n_1
    );
Hactive_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(15),
      I3 => hPos(16),
      I4 => hPos(23),
      I5 => hPos(17),
      O => Hactive_i_8_n_1
    );
Hactive_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => hPos(29),
      I1 => hPos(28),
      I2 => hPos(9),
      I3 => hPos(8),
      I4 => hPos(5),
      I5 => hPos(6),
      O => Hactive_i_9_n_1
    );
Hactive_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Hactive_i_1_n_1,
      Q => Hactive,
      R => '0'
    );
Hsync_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => Hsync_i_2_n_1,
      I1 => \^hsync_obuf\,
      I2 => Hsync,
      O => Hsync_i_1_n_1
    );
Hsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => Hactive_i_2_n_1,
      I1 => Hactive_i_4_n_1,
      I2 => Hsync_i_4_n_1,
      I3 => hPos(28),
      I4 => hPos(29),
      I5 => Hsync_i_5_n_1,
      O => Hsync_i_2_n_1
    );
Hsync_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => Hactive_i_6_n_1,
      I1 => Hsync_i_4_n_1,
      I2 => Hsync_i_6_n_1,
      I3 => Hactive_i_4_n_1,
      I4 => hPos(8),
      I5 => hPos(3),
      O => Hsync
    );
Hsync_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hPos(23),
      I1 => hPos(22),
      I2 => hPos(17),
      I3 => hPos(16),
      O => Hsync_i_4_n_1
    );
Hsync_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFFFFFFFFFFF0"
    )
        port map (
      I0 => Hsync_i_7_n_1,
      I1 => hPos(9),
      I2 => Hsync_i_8_n_1,
      I3 => hPos(2),
      I4 => hPos(0),
      I5 => hPos(1),
      O => Hsync_i_5_n_1
    );
Hsync_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => hPos(5),
      I1 => hPos(4),
      I2 => hPos(7),
      I3 => hPos(6),
      I4 => hPos(28),
      I5 => hPos(29),
      O => Hsync_i_6_n_1
    );
Hsync_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => hPos(6),
      I1 => hPos(5),
      I2 => hPos(8),
      I3 => hPos(4),
      I4 => hPos(3),
      O => Hsync_i_7_n_1
    );
Hsync_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => hPos(8),
      I1 => hPos(3),
      I2 => hPos(9),
      I3 => hPos(6),
      I4 => hPos(4),
      I5 => hPos(5),
      O => Hsync_i_8_n_1
    );
Hsync_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => Hsync_i_1_n_1,
      Q => \^hsync_obuf\
    );
Vactive_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002222222E"
    )
        port map (
      I0 => Vactive_reg_n_1,
      I1 => Vactive0,
      I2 => Vactive_i_3_n_1,
      I3 => Vactive_i_4_n_1,
      I4 => Vactive_i_5_n_1,
      I5 => Vsync05_out,
      O => Vactive_i_1_n_1
    );
Vactive_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBA"
    )
        port map (
      I0 => Vactive_i_16_n_1,
      I1 => vPos(28),
      I2 => vPos(27),
      I3 => vPos(14),
      I4 => vPos(13),
      I5 => \vPos[31]_i_10_n_1\,
      O => Vactive_i_10_n_1
    );
Vactive_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => vPos(10),
      I1 => vPos(11),
      I2 => vPos(9),
      I3 => vPos(1),
      I4 => vPos(0),
      I5 => vPos(2),
      O => Vactive_i_11_n_1
    );
Vactive_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => vPos(25),
      I1 => vPos(24),
      I2 => vPos(23),
      I3 => vPos(26),
      I4 => vPos(21),
      I5 => vPos(22),
      O => Vactive_i_12_n_1
    );
Vactive_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => vPos(25),
      I1 => vPos(26),
      O => Vactive_i_13_n_1
    );
Vactive_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => vPos(2),
      I1 => reset_IBUF,
      I2 => vPos(0),
      I3 => vPos(1),
      I4 => vPos(8),
      I5 => vPos(3),
      O => Vactive_i_14_n_1
    );
Vactive_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => vPos(10),
      I1 => vPos(11),
      O => Vactive_i_15_n_1
    );
Vactive_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vPos(30),
      I1 => vPos(28),
      I2 => vPos(29),
      I3 => vPos(31),
      O => Vactive_i_16_n_1
    );
Vactive_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => vPos(20),
      I1 => vPos(19),
      I2 => vPos(18),
      O => Vactive_i_17_n_1
    );
Vactive_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => vPos(4),
      I1 => \vPos[31]_i_11_n_1\,
      I2 => Vactive_i_7_n_1,
      I3 => Vactive_i_8_n_1,
      I4 => Vactive_i_9_n_1,
      I5 => Vactive_i_10_n_1,
      O => Vactive0
    );
Vactive_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => Vactive_i_10_n_1,
      I1 => Vactive_i_11_n_1,
      I2 => \vPos[31]_i_11_n_1\,
      I3 => vPos(18),
      I4 => vPos(19),
      I5 => vPos(20),
      O => Vactive_i_3_n_1
    );
Vactive_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF44F4"
    )
        port map (
      I0 => vPos(13),
      I1 => vPos(12),
      I2 => vPos(15),
      I3 => vPos(16),
      I4 => vPos(14),
      I5 => vPos(17),
      O => Vactive_i_4_n_1
    );
Vactive_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => Vactive_i_12_n_1,
      I1 => vPos(3),
      I2 => vPos(8),
      I3 => vPos(5),
      I4 => vPos(4),
      I5 => Vactive_i_13_n_1,
      O => Vactive_i_5_n_1
    );
Vactive_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => Vactive_i_14_n_1,
      I2 => vPos(9),
      I3 => Vactive_i_15_n_1,
      I4 => \vPos[31]_i_4_n_1\,
      I5 => Vactive_i_16_n_1,
      O => Vsync05_out
    );
Vactive_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Vactive_i_4_n_1,
      I1 => vPos(26),
      I2 => vPos(25),
      I3 => vPos(2),
      I4 => reset_IBUF,
      I5 => vPos(3),
      O => Vactive_i_7_n_1
    );
Vactive_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => Vactive_i_12_n_1,
      I1 => vPos(11),
      I2 => vPos(10),
      I3 => vPos(8),
      I4 => Vactive_i_17_n_1,
      O => Vactive_i_8_n_1
    );
Vactive_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEFFFFFFF"
    )
        port map (
      I0 => vPos(11),
      I1 => vPos(10),
      I2 => vPos(1),
      I3 => vPos(5),
      I4 => vPos(0),
      I5 => vPos(9),
      O => Vactive_i_9_n_1
    );
Vactive_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      D => Vactive_i_1_n_1,
      Q => Vactive_reg_n_1,
      R => '0'
    );
Vsync_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Vsync0,
      I1 => \^vsync_obuf\,
      I2 => Vsync05_out,
      O => Vsync_i_1_n_1
    );
Vsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Vsync_i_3_n_1,
      I1 => Vactive_i_4_n_1,
      I2 => Vsync_i_4_n_1,
      I3 => \vPos[31]_i_3_n_1\,
      I4 => Vactive_i_10_n_1,
      I5 => Vactive_i_8_n_1,
      O => Vsync0
    );
Vsync_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => vPos(4),
      I1 => vPos(16),
      I2 => vPos(17),
      I3 => vPos(6),
      I4 => vPos(7),
      O => Vsync_i_3_n_1
    );
Vsync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => reset_IBUF,
      I1 => vPos(2),
      I2 => vPos(5),
      I3 => Vactive_i_13_n_1,
      I4 => vPos(9),
      I5 => vPos(3),
      O => Vsync_i_4_n_1
    );
Vsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      D => Vsync_i_1_n_1,
      Q => \^vsync_obuf\,
      R => '0'
    );
\Xpos_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => hPos(0),
      G => \^vactive_reg_0\,
      GE => '1',
      Q => x_cord(0)
    );
\Xpos_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => hPos(1),
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(0)
    );
\Xpos_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => hPos(2),
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(1)
    );
\Xpos_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => hPos(3),
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(2)
    );
\Xpos_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Xpos_reg[4]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(3)
    );
\Xpos_reg[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hPos(4),
      O => \Xpos_reg[4]_i_1_n_1\
    );
\Xpos_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Xpos_reg[5]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(4)
    );
\Xpos_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => hPos(5),
      I1 => hPos(4),
      O => \Xpos_reg[5]_i_1_n_1\
    );
\Xpos_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Xpos_reg[6]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(5)
    );
\Xpos_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => hPos(6),
      I1 => hPos(4),
      I2 => hPos(5),
      O => \Xpos_reg[6]_i_1_n_1\
    );
\Xpos_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Xpos_reg[7]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^hpos_reg[7]_0\(6)
    );
\Xpos_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => hPos(7),
      I1 => hPos(4),
      I2 => hPos(6),
      I3 => hPos(5),
      O => \Xpos_reg[7]_i_1_n_1\
    );
\Xpos_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Xpos_reg[8]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => x_cord(8)
    );
\Xpos_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95555"
    )
        port map (
      I0 => hPos(8),
      I1 => hPos(4),
      I2 => hPos(6),
      I3 => hPos(5),
      I4 => hPos(7),
      O => \Xpos_reg[8]_i_1_n_1\
    );
\Xpos_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Xpos_reg[9]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => x_cord(9)
    );
\Xpos_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA99999995"
    )
        port map (
      I0 => hPos(9),
      I1 => hPos(7),
      I2 => hPos(5),
      I3 => hPos(6),
      I4 => hPos(4),
      I5 => hPos(8),
      O => \Xpos_reg[9]_i_1_n_1\
    );
\Xpos_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Vactive_reg_n_1,
      I1 => Hactive,
      O => \^vactive_reg_0\
    );
\Ypos_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[0]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(0)
    );
\Ypos_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vPos(0),
      O => \Ypos_reg[0]_i_1_n_1\
    );
\Ypos_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[1]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(1)
    );
\Ypos_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vPos(1),
      I1 => vPos(0),
      O => \Ypos_reg[1]_i_1_n_1\
    );
\Ypos_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[2]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(2)
    );
\Ypos_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => vPos(2),
      I1 => vPos(0),
      I2 => vPos(1),
      O => \Ypos_reg[2]_i_1_n_1\
    );
\Ypos_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[3]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(3)
    );
\Ypos_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA95"
    )
        port map (
      I0 => vPos(3),
      I1 => vPos(1),
      I2 => vPos(0),
      I3 => vPos(2),
      O => \Ypos_reg[3]_i_1_n_1\
    );
\Ypos_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[4]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(4)
    );
\Ypos_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0111"
    )
        port map (
      I0 => vPos(3),
      I1 => vPos(2),
      I2 => vPos(0),
      I3 => vPos(1),
      I4 => vPos(4),
      O => \Ypos_reg[4]_i_1_n_1\
    );
\Ypos_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[5]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(5)
    );
\Ypos_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555565656"
    )
        port map (
      I0 => vPos(5),
      I1 => vPos(3),
      I2 => vPos(2),
      I3 => vPos(0),
      I4 => vPos(1),
      I5 => vPos(4),
      O => \Ypos_reg[5]_i_1_n_1\
    );
\Ypos_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[6]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(6)
    );
\Ypos_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555555"
    )
        port map (
      I0 => vPos(6),
      I1 => vPos(4),
      I2 => \Ypos_reg[6]_i_2_n_1\,
      I3 => vPos(2),
      I4 => vPos(3),
      I5 => vPos(5),
      O => \Ypos_reg[6]_i_1_n_1\
    );
\Ypos_reg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vPos(1),
      I1 => vPos(0),
      O => \Ypos_reg[6]_i_2_n_1\
    );
\Ypos_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[7]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(7)
    );
\Ypos_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => vPos(7),
      I1 => \Ypos_reg[8]_i_2_n_1\,
      I2 => vPos(6),
      O => \Ypos_reg[7]_i_1_n_1\
    );
\Ypos_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_IBUF,
      D => \Ypos_reg[8]_i_1_n_1\,
      G => \^vactive_reg_0\,
      GE => '1',
      Q => \^q\(8)
    );
\Ypos_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => vPos(8),
      I1 => \Ypos_reg[8]_i_2_n_1\,
      I2 => vPos(6),
      I3 => vPos(7),
      O => \Ypos_reg[8]_i_1_n_1\
    );
\Ypos_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8A8A8"
    )
        port map (
      I0 => vPos(5),
      I1 => vPos(3),
      I2 => vPos(2),
      I3 => vPos(0),
      I4 => vPos(1),
      I5 => vPos(4),
      O => \Ypos_reg[8]_i_2_n_1\
    );
\bar_index_rep[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CO(0),
      I1 => reset_IBUF,
      O => E(0)
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \Ypos_reg[8]_1\(0)
    );
geqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B82"
    )
        port map (
      I0 => \^q\(1),
      I1 => DOA(1),
      I2 => DOA(0),
      I3 => \^q\(0),
      O => \bar_index_reg_rep[3]\(0)
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => x_cord(8),
      I1 => plusOp13(5),
      I2 => plusOp13(6),
      I3 => x_cord(9),
      O => \Xpos_reg[9]_1\(0)
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => x_cord(8),
      I1 => plusOp13(5),
      I2 => plusOp13(6),
      I3 => x_cord(9),
      O => \Xpos_reg[9]_0\(0)
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(5),
      I1 => plusOp13(3),
      I2 => plusOp13(4),
      I3 => \^hpos_reg[7]_0\(6),
      O => \Xpos_reg[7]_1\(3)
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => ltOp_carry(0),
      I1 => \^hpos_reg[7]_0\(3),
      I2 => plusOp13(2),
      I3 => \^hpos_reg[7]_0\(4),
      O => \Xpos_reg[7]_1\(2)
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(1),
      I1 => plusOp13(0),
      I2 => plusOp13(1),
      I3 => \^hpos_reg[7]_0\(2),
      O => \Xpos_reg[7]_1\(1)
    );
gtOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_cord(0),
      I1 => \^hpos_reg[7]_0\(0),
      O => \Xpos_reg[7]_1\(0)
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(5),
      I1 => plusOp13(3),
      I2 => plusOp13(4),
      I3 => \^hpos_reg[7]_0\(6),
      O => \Xpos_reg[7]_0\(3)
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => ltOp_carry(0),
      I1 => \^hpos_reg[7]_0\(3),
      I2 => plusOp13(2),
      I3 => \^hpos_reg[7]_0\(4),
      O => \Xpos_reg[7]_0\(2)
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(1),
      I1 => plusOp13(0),
      I2 => plusOp13(1),
      I3 => \^hpos_reg[7]_0\(2),
      O => \Xpos_reg[7]_0\(1)
    );
gtOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(0),
      I1 => x_cord(0),
      O => \Xpos_reg[7]_0\(0)
    );
\hPos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hPos(0),
      O => p_0_out(0)
    );
\hPos[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(10)
    );
\hPos[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(11)
    );
\hPos[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(12)
    );
\hPos[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(13)
    );
\hPos[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(14)
    );
\hPos[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(15)
    );
\hPos[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(16)
    );
\hPos[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(17)
    );
\hPos[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(18)
    );
\hPos[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(19)
    );
\hPos[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(1)
    );
\hPos[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(20),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(20)
    );
\hPos[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(21),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(21)
    );
\hPos[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(22),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(22)
    );
\hPos[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(23),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(23)
    );
\hPos[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(24),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(24)
    );
\hPos[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(25),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(25)
    );
\hPos[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(26),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(26)
    );
\hPos[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(27),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(27)
    );
\hPos[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(28),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(28)
    );
\hPos[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(29),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(29)
    );
\hPos[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(2)
    );
\hPos[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(30),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(30)
    );
\hPos[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(31),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(31)
    );
\hPos[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => hPos(3),
      I1 => hPos(4),
      I2 => hPos(8),
      O => \hPos[31]_i_10_n_1\
    );
\hPos[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \hPos[31]_i_4_n_1\,
      I1 => hPos(5),
      I2 => hPos(6),
      I3 => \hPos[31]_i_5_n_1\,
      I4 => \hPos[31]_i_6_n_1\,
      I5 => \hPos[31]_i_7_n_1\,
      O => \hPos[31]_i_3_n_1\
    );
\hPos[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => hPos(29),
      I1 => hPos(28),
      I2 => hPos(16),
      I3 => hPos(17),
      I4 => hPos(22),
      I5 => hPos(23),
      O => \hPos[31]_i_4_n_1\
    );
\hPos[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(25),
      I3 => hPos(26),
      I4 => hPos(31),
      I5 => hPos(30),
      O => \hPos[31]_i_5_n_1\
    );
\hPos[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => hPos(0),
      I1 => hPos(1),
      I2 => hPos(2),
      I3 => hPos(9),
      O => \hPos[31]_i_6_n_1\
    );
\hPos[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => hPos(24),
      I1 => hPos(27),
      I2 => hPos(12),
      I3 => \hPos[31]_i_8_n_1\,
      I4 => \hPos[31]_i_9_n_1\,
      I5 => \hPos[31]_i_10_n_1\,
      O => \hPos[31]_i_7_n_1\
    );
\hPos[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hPos(11),
      I1 => hPos(10),
      I2 => hPos(20),
      I3 => hPos(19),
      O => \hPos[31]_i_8_n_1\
    );
\hPos[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hPos(18),
      I1 => hPos(7),
      I2 => hPos(21),
      I3 => hPos(15),
      O => \hPos[31]_i_9_n_1\
    );
\hPos[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(3)
    );
\hPos[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(4)
    );
\hPos[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(5)
    );
\hPos[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(6)
    );
\hPos[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(7)
    );
\hPos[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(8)
    );
\hPos[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \hPos[31]_i_3_n_1\,
      O => p_0_out(9)
    );
\hPos_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(0),
      Q => hPos(0)
    );
\hPos_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(10),
      Q => hPos(10)
    );
\hPos_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(11),
      Q => hPos(11)
    );
\hPos_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(12),
      Q => hPos(12)
    );
\hPos_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[8]_i_2_n_1\,
      CO(3) => \hPos_reg[12]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => hPos(12 downto 9)
    );
\hPos_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(13),
      Q => hPos(13)
    );
\hPos_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(14),
      Q => hPos(14)
    );
\hPos_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(15),
      Q => hPos(15)
    );
\hPos_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(16),
      Q => hPos(16)
    );
\hPos_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[12]_i_2_n_1\,
      CO(3) => \hPos_reg[16]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => hPos(16 downto 13)
    );
\hPos_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(17),
      Q => hPos(17)
    );
\hPos_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(18),
      Q => hPos(18)
    );
\hPos_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(19),
      Q => hPos(19)
    );
\hPos_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(1),
      Q => hPos(1)
    );
\hPos_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(20),
      Q => hPos(20)
    );
\hPos_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[16]_i_2_n_1\,
      CO(3) => \hPos_reg[20]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => hPos(20 downto 17)
    );
\hPos_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(21),
      Q => hPos(21)
    );
\hPos_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(22),
      Q => hPos(22)
    );
\hPos_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(23),
      Q => hPos(23)
    );
\hPos_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(24),
      Q => hPos(24)
    );
\hPos_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[20]_i_2_n_1\,
      CO(3) => \hPos_reg[24]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => hPos(24 downto 21)
    );
\hPos_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(25),
      Q => hPos(25)
    );
\hPos_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(26),
      Q => hPos(26)
    );
\hPos_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(27),
      Q => hPos(27)
    );
\hPos_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(28),
      Q => hPos(28)
    );
\hPos_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[24]_i_2_n_1\,
      CO(3) => \hPos_reg[28]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => hPos(28 downto 25)
    );
\hPos_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(29),
      Q => hPos(29)
    );
\hPos_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(2),
      Q => hPos(2)
    );
\hPos_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(30),
      Q => hPos(30)
    );
\hPos_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(31),
      Q => hPos(31)
    );
\hPos_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[28]_i_2_n_1\,
      CO(3 downto 0) => \NLW_hPos_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_hPos_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => hPos(31 downto 29)
    );
\hPos_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(3),
      Q => hPos(3)
    );
\hPos_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(4),
      Q => hPos(4)
    );
\hPos_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hPos_reg[4]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => hPos(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => hPos(4 downto 1)
    );
\hPos_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(5),
      Q => hPos(5)
    );
\hPos_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(6),
      Q => hPos(6)
    );
\hPos_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(7),
      Q => hPos(7)
    );
\hPos_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(8),
      Q => hPos(8)
    );
\hPos_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hPos_reg[4]_i_2_n_1\,
      CO(3) => \hPos_reg[8]_i_2_n_1\,
      CO(2 downto 0) => \NLW_hPos_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => hPos(8 downto 5)
    );
\hPos_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => p_0_out(9),
      Q => hPos(9)
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBAA"
    )
        port map (
      I0 => x_cord(9),
      I1 => \gtOp_inferred__0/i__carry\(1),
      I2 => \gtOp_inferred__0/i__carry\(0),
      I3 => x_cord(8),
      O => DI(0)
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => x_cord(9),
      I1 => plusOp10(4),
      I2 => x_cord(8),
      I3 => plusOp10(3),
      O => \i__carry_i_8__0_0\(0)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => x_cord(9),
      I1 => \gtOp_inferred__0/i__carry\(1),
      I2 => \gtOp_inferred__0/i__carry\(0),
      I3 => x_cord(8),
      O => \bar_index_reg_rep[3]__1\(0)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => plusOp10(4),
      I1 => x_cord(9),
      I2 => plusOp10(3),
      I3 => x_cord(8),
      O => \Xpos_reg[8]_0\(0)
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(6),
      I1 => plusOp10(2),
      I2 => \^hpos_reg[7]_0\(5),
      I3 => plusOp10(1),
      O => \i__carry_i_8__0\(2)
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22B2B2B2"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(4),
      I1 => plusOp10(0),
      I2 => \^hpos_reg[7]_0\(3),
      I3 => \gtOp_inferred__0/i__carry\(0),
      I4 => \gtOp_inferred__0/i__carry\(1),
      O => \i__carry_i_8__0\(1)
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(2),
      I1 => \gtOp_inferred__0/i__carry\(1),
      I2 => \gtOp_inferred__0/i__carry\(0),
      I3 => \^hpos_reg[7]_0\(1),
      O => \i__carry_i_8__0\(0)
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => plusOp10(2),
      I1 => \^hpos_reg[7]_0\(6),
      I2 => plusOp10(1),
      I3 => \^hpos_reg[7]_0\(5),
      O => \Xpos_reg[6]_0\(1)
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_cord(0),
      I1 => \^hpos_reg[7]_0\(0),
      O => \hPos_reg[0]_0\(0)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A40"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(2),
      I1 => \gtOp_inferred__0/i__carry\(1),
      I2 => \gtOp_inferred__0/i__carry\(0),
      I3 => \^hpos_reg[7]_0\(1),
      O => \bar_index_reg_rep[3]__1_0\(1)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_cord(0),
      I1 => \^hpos_reg[7]_0\(0),
      O => \Xpos_reg[6]_0\(0)
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(0),
      I1 => x_cord(0),
      O => \bar_index_reg_rep[3]__1_0\(0)
    );
\leqOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \Ypos_reg[8]_0\(0)
    );
leqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A40"
    )
        port map (
      I0 => \^q\(5),
      I1 => leqOp_carry(1),
      I2 => leqOp_carry(0),
      I3 => \^q\(4),
      O => S(2)
    );
leqOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => S(1)
    );
leqOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => S(0)
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => plusOp13(5),
      I1 => x_cord(8),
      I2 => x_cord(9),
      I3 => plusOp13(6),
      O => ltOp_carry_i_9(2)
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => plusOp13(3),
      I1 => \^hpos_reg[7]_0\(5),
      I2 => \^hpos_reg[7]_0\(6),
      I3 => plusOp13(4),
      O => ltOp_carry_i_9(1)
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => ltOp_carry(0),
      I1 => \^hpos_reg[7]_0\(3),
      I2 => \^hpos_reg[7]_0\(4),
      I3 => plusOp13(2),
      O => ltOp_carry_i_9(0)
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => x_cord(8),
      I1 => plusOp13(5),
      I2 => plusOp13(6),
      I3 => x_cord(9),
      O => \Xpos_reg[9]_2\(3)
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(5),
      I1 => plusOp13(3),
      I2 => plusOp13(4),
      I3 => \^hpos_reg[7]_0\(6),
      O => \Xpos_reg[9]_2\(2)
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => ltOp_carry(0),
      I1 => \^hpos_reg[7]_0\(3),
      I2 => plusOp13(2),
      I3 => \^hpos_reg[7]_0\(4),
      O => \Xpos_reg[9]_2\(1)
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^hpos_reg[7]_0\(1),
      I1 => plusOp13(0),
      I2 => plusOp13(1),
      I3 => \^hpos_reg[7]_0\(2),
      O => \Xpos_reg[9]_2\(0)
    );
\vPos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => vPos(0),
      O => \vPos[0]_i_1_n_1\
    );
\vPos[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[12]_i_2_n_7\,
      O => \vPos[10]_i_1_n_1\
    );
\vPos[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[12]_i_2_n_6\,
      O => \vPos[11]_i_1_n_1\
    );
\vPos[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[12]_i_2_n_5\,
      O => \vPos[12]_i_1_n_1\
    );
\vPos[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[16]_i_2_n_8\,
      O => \vPos[13]_i_1_n_1\
    );
\vPos[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[16]_i_2_n_7\,
      O => \vPos[14]_i_1_n_1\
    );
\vPos[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[16]_i_2_n_6\,
      O => \vPos[15]_i_1_n_1\
    );
\vPos[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[16]_i_2_n_5\,
      O => \vPos[16]_i_1_n_1\
    );
\vPos[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[20]_i_2_n_8\,
      O => \vPos[17]_i_1_n_1\
    );
\vPos[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[20]_i_2_n_7\,
      O => \vPos[18]_i_1_n_1\
    );
\vPos[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[20]_i_2_n_6\,
      O => \vPos[19]_i_1_n_1\
    );
\vPos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[4]_i_2_n_8\,
      O => \vPos[1]_i_1_n_1\
    );
\vPos[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[20]_i_2_n_5\,
      O => \vPos[20]_i_1_n_1\
    );
\vPos[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[24]_i_2_n_8\,
      O => \vPos[21]_i_1_n_1\
    );
\vPos[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[24]_i_2_n_7\,
      O => \vPos[22]_i_1_n_1\
    );
\vPos[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[24]_i_2_n_6\,
      O => \vPos[23]_i_1_n_1\
    );
\vPos[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[24]_i_2_n_5\,
      O => \vPos[24]_i_1_n_1\
    );
\vPos[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[28]_i_2_n_8\,
      O => \vPos[25]_i_1_n_1\
    );
\vPos[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[28]_i_2_n_7\,
      O => \vPos[26]_i_1_n_1\
    );
\vPos[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[28]_i_2_n_6\,
      O => \vPos[27]_i_1_n_1\
    );
\vPos[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[28]_i_2_n_5\,
      O => \vPos[28]_i_1_n_1\
    );
\vPos[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[31]_i_7_n_8\,
      O => \vPos[29]_i_1_n_1\
    );
\vPos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[4]_i_2_n_7\,
      O => \vPos[2]_i_1_n_1\
    );
\vPos[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[31]_i_7_n_7\,
      O => \vPos[30]_i_1_n_1\
    );
\vPos[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[31]_i_7_n_6\,
      O => \vPos[31]_i_1_n_1\
    );
\vPos[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vPos(23),
      I1 => vPos(22),
      I2 => vPos(20),
      I3 => vPos(19),
      O => \vPos[31]_i_10_n_1\
    );
\vPos[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vPos(7),
      I1 => vPos(6),
      I2 => vPos(17),
      I3 => vPos(16),
      O => \vPos[31]_i_11_n_1\
    );
\vPos[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \vPos[31]_i_8_n_1\,
      I1 => vPos(12),
      I2 => vPos(4),
      I3 => \vPos[31]_i_9_n_1\,
      I4 => \vPos[31]_i_10_n_1\,
      I5 => \vPos[31]_i_11_n_1\,
      O => \vPos[31]_i_2_n_1\
    );
\vPos[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vPos(11),
      I1 => vPos(10),
      I2 => vPos(0),
      I3 => vPos(1),
      O => \vPos[31]_i_3_n_1\
    );
\vPos[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vPos(26),
      I1 => vPos(25),
      I2 => vPos(27),
      I3 => vPos(24),
      O => \vPos[31]_i_4_n_1\
    );
\vPos[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => vPos(31),
      I1 => vPos(29),
      I2 => vPos(28),
      O => \vPos[31]_i_5_n_1\
    );
\vPos[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => vPos(3),
      I1 => vPos(9),
      I2 => vPos(8),
      I3 => vPos(2),
      I4 => vPos(30),
      O => \vPos[31]_i_6_n_1\
    );
\vPos[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => vPos(13),
      I1 => vPos(14),
      O => \vPos[31]_i_8_n_1\
    );
\vPos[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => vPos(21),
      I1 => vPos(18),
      I2 => vPos(15),
      I3 => vPos(5),
      O => \vPos[31]_i_9_n_1\
    );
\vPos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[4]_i_2_n_6\,
      O => \vPos[3]_i_1_n_1\
    );
\vPos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[4]_i_2_n_5\,
      O => \vPos[4]_i_1_n_1\
    );
\vPos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[8]_i_2_n_8\,
      O => \vPos[5]_i_1_n_1\
    );
\vPos[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[8]_i_2_n_7\,
      O => \vPos[6]_i_1_n_1\
    );
\vPos[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[8]_i_2_n_6\,
      O => \vPos[7]_i_1_n_1\
    );
\vPos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[8]_i_2_n_5\,
      O => \vPos[8]_i_1_n_1\
    );
\vPos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \vPos[31]_i_2_n_1\,
      I1 => \vPos[31]_i_3_n_1\,
      I2 => \vPos[31]_i_4_n_1\,
      I3 => \vPos[31]_i_5_n_1\,
      I4 => \vPos[31]_i_6_n_1\,
      I5 => \vPos_reg[12]_i_2_n_8\,
      O => \vPos[9]_i_1_n_1\
    );
\vPos_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[0]_i_1_n_1\,
      Q => vPos(0)
    );
\vPos_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[10]_i_1_n_1\,
      Q => vPos(10)
    );
\vPos_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[11]_i_1_n_1\,
      Q => vPos(11)
    );
\vPos_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[12]_i_1_n_1\,
      Q => vPos(12)
    );
\vPos_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[8]_i_2_n_1\,
      CO(3) => \vPos_reg[12]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[12]_i_2_n_5\,
      O(2) => \vPos_reg[12]_i_2_n_6\,
      O(1) => \vPos_reg[12]_i_2_n_7\,
      O(0) => \vPos_reg[12]_i_2_n_8\,
      S(3 downto 0) => vPos(12 downto 9)
    );
\vPos_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[13]_i_1_n_1\,
      Q => vPos(13)
    );
\vPos_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[14]_i_1_n_1\,
      Q => vPos(14)
    );
\vPos_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[15]_i_1_n_1\,
      Q => vPos(15)
    );
\vPos_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[16]_i_1_n_1\,
      Q => vPos(16)
    );
\vPos_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[12]_i_2_n_1\,
      CO(3) => \vPos_reg[16]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[16]_i_2_n_5\,
      O(2) => \vPos_reg[16]_i_2_n_6\,
      O(1) => \vPos_reg[16]_i_2_n_7\,
      O(0) => \vPos_reg[16]_i_2_n_8\,
      S(3 downto 0) => vPos(16 downto 13)
    );
\vPos_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[17]_i_1_n_1\,
      Q => vPos(17)
    );
\vPos_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[18]_i_1_n_1\,
      Q => vPos(18)
    );
\vPos_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[19]_i_1_n_1\,
      Q => vPos(19)
    );
\vPos_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[1]_i_1_n_1\,
      Q => vPos(1)
    );
\vPos_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[20]_i_1_n_1\,
      Q => vPos(20)
    );
\vPos_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[16]_i_2_n_1\,
      CO(3) => \vPos_reg[20]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[20]_i_2_n_5\,
      O(2) => \vPos_reg[20]_i_2_n_6\,
      O(1) => \vPos_reg[20]_i_2_n_7\,
      O(0) => \vPos_reg[20]_i_2_n_8\,
      S(3 downto 0) => vPos(20 downto 17)
    );
\vPos_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[21]_i_1_n_1\,
      Q => vPos(21)
    );
\vPos_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[22]_i_1_n_1\,
      Q => vPos(22)
    );
\vPos_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[23]_i_1_n_1\,
      Q => vPos(23)
    );
\vPos_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[24]_i_1_n_1\,
      Q => vPos(24)
    );
\vPos_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[20]_i_2_n_1\,
      CO(3) => \vPos_reg[24]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[24]_i_2_n_5\,
      O(2) => \vPos_reg[24]_i_2_n_6\,
      O(1) => \vPos_reg[24]_i_2_n_7\,
      O(0) => \vPos_reg[24]_i_2_n_8\,
      S(3 downto 0) => vPos(24 downto 21)
    );
\vPos_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[25]_i_1_n_1\,
      Q => vPos(25)
    );
\vPos_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[26]_i_1_n_1\,
      Q => vPos(26)
    );
\vPos_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[27]_i_1_n_1\,
      Q => vPos(27)
    );
\vPos_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[28]_i_1_n_1\,
      Q => vPos(28)
    );
\vPos_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[24]_i_2_n_1\,
      CO(3) => \vPos_reg[28]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[28]_i_2_n_5\,
      O(2) => \vPos_reg[28]_i_2_n_6\,
      O(1) => \vPos_reg[28]_i_2_n_7\,
      O(0) => \vPos_reg[28]_i_2_n_8\,
      S(3 downto 0) => vPos(28 downto 25)
    );
\vPos_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[29]_i_1_n_1\,
      Q => vPos(29)
    );
\vPos_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[2]_i_1_n_1\,
      Q => vPos(2)
    );
\vPos_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[30]_i_1_n_1\,
      Q => vPos(30)
    );
\vPos_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[31]_i_1_n_1\,
      Q => vPos(31)
    );
\vPos_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[28]_i_2_n_1\,
      CO(3 downto 0) => \NLW_vPos_reg[31]_i_7_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_vPos_reg[31]_i_7_O_UNCONNECTED\(3),
      O(2) => \vPos_reg[31]_i_7_n_6\,
      O(1) => \vPos_reg[31]_i_7_n_7\,
      O(0) => \vPos_reg[31]_i_7_n_8\,
      S(3) => '0',
      S(2 downto 0) => vPos(31 downto 29)
    );
\vPos_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[3]_i_1_n_1\,
      Q => vPos(3)
    );
\vPos_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[4]_i_1_n_1\,
      Q => vPos(4)
    );
\vPos_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \vPos_reg[4]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => vPos(0),
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[4]_i_2_n_5\,
      O(2) => \vPos_reg[4]_i_2_n_6\,
      O(1) => \vPos_reg[4]_i_2_n_7\,
      O(0) => \vPos_reg[4]_i_2_n_8\,
      S(3 downto 0) => vPos(4 downto 1)
    );
\vPos_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[5]_i_1_n_1\,
      Q => vPos(5)
    );
\vPos_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[6]_i_1_n_1\,
      Q => vPos(6)
    );
\vPos_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[7]_i_1_n_1\,
      Q => vPos(7)
    );
\vPos_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[8]_i_1_n_1\,
      Q => vPos(8)
    );
\vPos_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vPos_reg[4]_i_2_n_1\,
      CO(3) => \vPos_reg[8]_i_2_n_1\,
      CO(2 downto 0) => \NLW_vPos_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vPos_reg[8]_i_2_n_5\,
      O(2) => \vPos_reg[8]_i_2_n_6\,
      O(1) => \vPos_reg[8]_i_2_n_7\,
      O(0) => \vPos_reg[8]_i_2_n_8\,
      S(3 downto 0) => vPos(8 downto 5)
    );
\vPos_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \vPos[9]_i_1_n_1\,
      Q => vPos(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adau1761_configuraiton_data is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 8 downto 0 );
    data_reg_0 : out STD_LOGIC;
    skip_reg : out STD_LOGIC;
    data_reg_1 : out STD_LOGIC;
    data_reg_2 : out STD_LOGIC;
    skip_reg_0 : out STD_LOGIC;
    data_reg_3 : out STD_LOGIC;
    data_reg_4 : out STD_LOGIC;
    data_reg_5 : out STD_LOGIC;
    data_reg_6 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_reg_7 : out STD_LOGIC;
    data_reg_8 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    data_reg_9 : out STD_LOGIC;
    data_reg_10 : out STD_LOGIC;
    data_reg_11 : out STD_LOGIC;
    data_reg_12 : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    CLK_48 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    skip_reg_1 : in STD_LOGIC;
    skip_reg_2 : in STD_LOGIC;
    \i2c_data_reg[0]\ : in STD_LOGIC;
    skip_reg_3 : in STD_LOGIC;
    skip_reg_4 : in STD_LOGIC;
    skip_i_4_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bitcount_reg[0]\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \delay_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \delay_reg[12]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \delay_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ack_flag : in STD_LOGIC;
    \delay_reg[15]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i2c_data_reg[1]\ : in STD_LOGIC;
    \i2c_data_reg[8]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i2c_data_reg[3]\ : in STD_LOGIC;
    pwropt : in STD_LOGIC
  );
end adau1761_configuraiton_data;

architecture STRUCTURE of adau1761_configuraiton_data is
  signal \Audio/Inst_adau1761_izedboard/Inst_i2c/Inst_adau1761_configuraiton_data/data_reg_cooolgate_en_sig_1\ : STD_LOGIC;
  signal \^doado\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \bitcount[7]_i_9_n_1\ : STD_LOGIC;
  signal \^data_reg_1\ : STD_LOGIC;
  signal \^data_reg_3\ : STD_LOGIC;
  signal \i2c_data[2]_i_2_n_1\ : STD_LOGIC;
  signal \i2c_data[2]_i_3_n_1\ : STD_LOGIC;
  signal \i2c_data[3]_i_2_n_1\ : STD_LOGIC;
  signal \i2c_data[4]_i_2_n_1\ : STD_LOGIC;
  signal \i2c_data[4]_i_3_n_1\ : STD_LOGIC;
  signal \i2c_data[6]_i_2_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_9_n_1\ : STD_LOGIC;
  signal skip0 : STD_LOGIC;
  signal skip_i_2_n_1 : STD_LOGIC;
  signal skip_i_3_n_1 : STD_LOGIC;
  signal skip_i_5_n_1 : STD_LOGIC;
  signal skip_i_6_n_1 : STD_LOGIC;
  signal skip_i_7_n_1 : STD_LOGIC;
  signal skip_i_8_n_1 : STD_LOGIC;
  signal skip_i_9_n_1 : STD_LOGIC;
  signal NLW_data_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_data_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_data_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcount[7]_i_9\ : label is "soft_lutpair5";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of data_reg : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg : label is "p0_d9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of data_reg : label is "ENARDEN=NEW";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_reg : label is 9216;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_reg : label is "Inst_adau1761_izedboard/Inst_i2c/Inst_adau1761_configuraiton_data/data";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of data_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of data_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of data_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of data_reg : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of data_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of data_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of data_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of data_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of data_reg : label is 8;
  attribute SOFT_HLUTNM of \i2c_data[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i2c_data[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pcnext[9]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pcnext[9]_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of skip_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of skip_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of skip_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of skip_i_7 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of skip_i_9 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[0]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[0]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[3]_i_5\ : label is "soft_lutpair4";
begin
  DOADO(8 downto 0) <= \^doado\(8 downto 0);
  data_reg_1 <= \^data_reg_1\;
  data_reg_3 <= \^data_reg_3\;
\Audio/Inst_adau1761_izedboard/Inst_i2c/Inst_adau1761_configuraiton_data/data_reg_cooolgate_en_gate_1_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_48,
      CE => '1',
      CLR => '0',
      D => pwropt,
      Q => \Audio/Inst_adau1761_izedboard/Inst_i2c/Inst_adau1761_configuraiton_data/data_reg_cooolgate_en_sig_1\
    );
\bitcount[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440404040404040"
    )
        port map (
      I0 => skip_reg_2,
      I1 => \bitcount_reg[0]\,
      I2 => \^data_reg_3\,
      I3 => \^doado\(7),
      I4 => \^doado\(6),
      I5 => \bitcount[7]_i_9_n_1\,
      O => skip_reg_0
    );
\bitcount[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \^doado\(3),
      I2 => \^doado\(0),
      I3 => \^doado\(1),
      I4 => \^doado\(4),
      O => \bitcount[7]_i_9_n_1\
    );
data_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00FF01010123010C0100017D010001020140017600FF010E01000140017600EF",
      INIT_01 => X"0101010A0140017600FF010101150140017600EF00FF010F01000140017600EF",
      INIT_02 => X"00FF0105010D0140017600FF0101010C0140017600FF0105010B0140017600FF",
      INIT_03 => X"017600FF01E701230140017600FF0141011E0140017600FF0121011C01400176",
      INIT_04 => X"0140017600FF01E701260140017600FF01E701250140017600FF01E701240140",
      INIT_05 => X"01F20140017600FF0103012A0140017600FF010301290140017600FF01030119",
      INIT_06 => X"010301FA0140017600FF017F01F90140017600FF010101F30140017600FF0101",
      INIT_07 => X"011E0140017600FF0120011C0140017600FE00FE00FE00FE00FE00FE001300FF",
      INIT_08 => X"017600FF0121011C0140017600EF00EF00A100A000EF00EF00EF00EF00FF0140",
      INIT_09 => X"00FE00FE00FE0013001900810014008000FE00FE00FE00FE00FF0141011E0140",
      INIT_0A => X"00A100B000EF00EF00EF00EF00FF0140011E0140017600FF0120011C01400176",
      INIT_0B => X"00FE00FE00FE00FE00FF0141011E0140017600FF0121011C0140017600EF00EF",
      INIT_0C => X"011E0140017600FF0120011C0140017600FE00FE00FE0018001E0081000F0090",
      INIT_0D => X"017600FF0121011C0140017600EF00EF00B100A000EF00EF00EF00EF00FF0140",
      INIT_0E => X"00FE00FE00FE001D000F00910000008000FE00FE00FE00FE00FF0141011E0140",
      INIT_0F => X"00B100B000EF00EF00EF00EF00FF0140011E0140017600FF0120011C01400176",
      INIT_10 => X"00FE00FE00FE00FE00FF0141011E0140017600FF0121011C0140017600EF00EF",
      INIT_11 => X"0000000000000000000000000000000000000000000000220014009100190090",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => CLK_48,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 9) => NLW_data_reg_DOADO_UNCONNECTED(15 downto 9),
      DOADO(8 downto 0) => \^doado\(8 downto 0),
      DOBDO(15 downto 0) => NLW_data_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_data_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_data_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \Audio/Inst_adau1761_izedboard/Inst_i2c/Inst_adau1761_configuraiton_data/data_reg_cooolgate_en_sig_1\,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444447"
    )
        port map (
      I0 => \delay_reg[0]\(0),
      I1 => skip_i_4_0(0),
      I2 => \^doado\(0),
      I3 => \^doado\(3),
      I4 => \^doado\(1),
      I5 => \^doado\(2),
      O => D(0)
    );
\delay[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA000000C0"
    )
        port map (
      I0 => \delay_reg[12]\(1),
      I1 => \^doado\(1),
      I2 => \^doado\(3),
      I3 => \^doado\(2),
      I4 => \^doado\(0),
      I5 => skip_i_4_0(0),
      O => D(10)
    );
\delay[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0ACA0A0A0"
    )
        port map (
      I0 => \delay_reg[12]\(2),
      I1 => \^doado\(0),
      I2 => skip_i_4_0(0),
      I3 => \^doado\(3),
      I4 => \^doado\(1),
      I5 => \^doado\(2),
      O => D(11)
    );
\delay[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00300000"
    )
        port map (
      I0 => \delay_reg[12]\(3),
      I1 => \^doado\(0),
      I2 => \^doado\(2),
      I3 => \^doado\(1),
      I4 => \^doado\(3),
      I5 => skip_i_4_0(0),
      O => D(12)
    );
\delay[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => \delay_reg[15]\(0),
      I1 => skip_i_4_0(0),
      I2 => \^doado\(0),
      I3 => \^doado\(2),
      I4 => \^doado\(3),
      I5 => \^doado\(1),
      O => D(13)
    );
\delay[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0000C000"
    )
        port map (
      I0 => \delay_reg[15]\(1),
      I1 => \^doado\(1),
      I2 => \^doado\(3),
      I3 => \^doado\(2),
      I4 => \^doado\(0),
      I5 => skip_i_4_0(0),
      O => D(14)
    );
\delay[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0AA00AA00AA00"
    )
        port map (
      I0 => \delay_reg[15]\(2),
      I1 => \^doado\(1),
      I2 => \^doado\(3),
      I3 => skip_i_4_0(0),
      I4 => \^doado\(0),
      I5 => \^doado\(2),
      O => D(15)
    );
\delay[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(7),
      I2 => skip_reg_2,
      I3 => \^doado\(4),
      I4 => \^doado\(5),
      I5 => \^doado\(8),
      O => data_reg_5
    );
\delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0A0AC"
    )
        port map (
      I0 => O(0),
      I1 => \^doado\(0),
      I2 => skip_i_4_0(0),
      I3 => \^doado\(2),
      I4 => \^doado\(1),
      I5 => \^doado\(3),
      O => D(1)
    );
\delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00030000"
    )
        port map (
      I0 => O(1),
      I1 => \^doado\(0),
      I2 => \^doado\(3),
      I3 => \^doado\(2),
      I4 => \^doado\(1),
      I5 => skip_i_4_0(0),
      O => D(2)
    );
\delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0ACA0A0A0A0"
    )
        port map (
      I0 => O(2),
      I1 => \^doado\(0),
      I2 => skip_i_4_0(0),
      I3 => \^doado\(3),
      I4 => \^doado\(2),
      I5 => \^doado\(1),
      O => D(3)
    );
\delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00030000"
    )
        port map (
      I0 => O(3),
      I1 => \^doado\(0),
      I2 => \^doado\(3),
      I3 => \^doado\(1),
      I4 => \^doado\(2),
      I5 => skip_i_4_0(0),
      O => D(4)
    );
\delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888B888"
    )
        port map (
      I0 => \delay_reg[8]\(0),
      I1 => skip_i_4_0(0),
      I2 => \^doado\(0),
      I3 => \^doado\(2),
      I4 => \^doado\(1),
      I5 => \^doado\(3),
      O => D(5)
    );
\delay[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA03000000"
    )
        port map (
      I0 => \delay_reg[8]\(1),
      I1 => \^doado\(0),
      I2 => \^doado\(3),
      I3 => \^doado\(2),
      I4 => \^doado\(1),
      I5 => skip_i_4_0(0),
      O => D(6)
    );
\delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => \delay_reg[8]\(2),
      I1 => skip_i_4_0(0),
      I2 => \^doado\(0),
      I3 => \^doado\(2),
      I4 => \^doado\(1),
      I5 => \^doado\(3),
      O => D(7)
    );
\delay[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00030000"
    )
        port map (
      I0 => \delay_reg[8]\(3),
      I1 => \^doado\(1),
      I2 => \^doado\(2),
      I3 => \^doado\(0),
      I4 => \^doado\(3),
      I5 => skip_i_4_0(0),
      O => D(8)
    );
\delay[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0ACA0"
    )
        port map (
      I0 => \delay_reg[12]\(0),
      I1 => \^doado\(0),
      I2 => skip_i_4_0(0),
      I3 => \^doado\(3),
      I4 => \^doado\(2),
      I5 => \^doado\(1),
      O => D(9)
    );
\i2c_bits_left[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404044404040"
    )
        port map (
      I0 => skip_reg_2,
      I1 => \i2c_data_reg[0]\,
      I2 => \^doado\(8),
      I3 => \^doado\(7),
      I4 => \^doado\(6),
      I5 => \^doado\(5),
      O => skip_reg
    );
\i2c_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEABAAAAA"
    )
        port map (
      I0 => \i2c_data_reg[1]\,
      I1 => \^doado\(2),
      I2 => \^doado\(1),
      I3 => \^doado\(3),
      I4 => \i2c_data[2]_i_2_n_1\,
      I5 => \i2c_data[4]_i_3_n_1\,
      O => data_reg_8(0)
    );
\i2c_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFAAAFEEE"
    )
        port map (
      I0 => \i2c_data[4]_i_3_n_1\,
      I1 => \^doado\(1),
      I2 => \i2c_data[2]_i_2_n_1\,
      I3 => \i2c_data[2]_i_3_n_1\,
      I4 => skip_i_4_0(0),
      I5 => \i2c_data_reg[8]\(0),
      O => data_reg_8(1)
    );
\i2c_data[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(4),
      I2 => \^doado\(8),
      I3 => skip_i_4_0(0),
      O => \i2c_data[2]_i_2_n_1\
    );
\i2c_data[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \^doado\(2),
      I2 => \^doado\(0),
      O => \i2c_data[2]_i_3_n_1\
    );
\i2c_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFB8"
    )
        port map (
      I0 => \i2c_data_reg[8]\(1),
      I1 => skip_i_4_0(0),
      I2 => \^doado\(2),
      I3 => \i2c_data[3]_i_2_n_1\,
      I4 => \i2c_data[4]_i_3_n_1\,
      O => data_reg_8(2)
    );
\i2c_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400000000000000"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \^doado\(0),
      I2 => \^doado\(1),
      I3 => \i2c_data_reg[3]\,
      I4 => \^doado\(4),
      I5 => \^doado\(6),
      O => \i2c_data[3]_i_2_n_1\
    );
\i2c_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFB8"
    )
        port map (
      I0 => \i2c_data_reg[8]\(2),
      I1 => skip_i_4_0(0),
      I2 => \^doado\(3),
      I3 => \i2c_data[4]_i_2_n_1\,
      I4 => \i2c_data[4]_i_3_n_1\,
      O => data_reg_8(3)
    );
\i2c_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400000000000000"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \^doado\(0),
      I2 => \^doado\(1),
      I3 => \i2c_data_reg[3]\,
      I4 => \^doado\(4),
      I5 => \^doado\(6),
      O => \i2c_data[4]_i_2_n_1\
    );
\i2c_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001E00FF"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(4),
      I2 => \^doado\(5),
      I3 => skip_i_4_0(0),
      I4 => \^doado\(7),
      I5 => \^doado\(8),
      O => \i2c_data[4]_i_3_n_1\
    );
\i2c_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCDFFD"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(4),
      I2 => \^doado\(6),
      I3 => \^doado\(5),
      I4 => \^doado\(8),
      I5 => skip_i_4_0(0),
      O => data_reg_10
    );
\i2c_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCAFAFCCCCAAAF"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \i2c_data_reg[8]\(3),
      I2 => \^doado\(8),
      I3 => \^doado\(7),
      I4 => skip_i_4_0(0),
      I5 => \i2c_data[6]_i_2_n_1\,
      O => data_reg_8(4)
    );
\i2c_data[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(4),
      I1 => \^doado\(6),
      O => \i2c_data[6]_i_2_n_1\
    );
\i2c_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCDFFD"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(6),
      I2 => \^doado\(5),
      I3 => \^doado\(4),
      I4 => \^doado\(8),
      I5 => skip_i_4_0(0),
      O => data_reg_11
    );
\i2c_data[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0D"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(7),
      I2 => skip_i_4_0(0),
      I3 => \i2c_data_reg[8]\(4),
      O => data_reg_8(5)
    );
\pcnext[9]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(8),
      O => data_reg_12
    );
\pcnext[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D050505"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \pcnext[9]_i_9_n_1\,
      I2 => \^doado\(8),
      I3 => \^doado\(5),
      I4 => \^doado\(4),
      I5 => skip_reg_4,
      O => data_reg_2
    );
\pcnext[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4003"
    )
        port map (
      I0 => \^doado\(0),
      I1 => \^doado\(3),
      I2 => \^doado\(1),
      I3 => \^doado\(2),
      O => \pcnext[9]_i_9_n_1\
    );
skip_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFFFFF40000"
    )
        port map (
      I0 => \^doado\(8),
      I1 => skip_i_2_n_1,
      I2 => skip_i_3_n_1,
      I3 => skip_reg_1,
      I4 => skip0,
      I5 => skip_reg_2,
      O => data_reg_0
    );
skip_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA00AF"
    )
        port map (
      I0 => ack_flag,
      I1 => skip_i_5_n_1,
      I2 => \^doado\(5),
      I3 => \^doado\(4),
      I4 => \^doado\(6),
      O => skip_i_2_n_1
    );
skip_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000400FF"
    )
        port map (
      I0 => skip_i_6_n_1,
      I1 => skip_i_7_n_1,
      I2 => ack_flag,
      I3 => skip_reg_2,
      I4 => \^doado\(7),
      I5 => \^doado\(8),
      O => skip_i_3_n_1
    );
skip_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEFEEEE"
    )
        port map (
      I0 => skip_i_8_n_1,
      I1 => skip_reg_3,
      I2 => \^data_reg_1\,
      I3 => \^doado\(3),
      I4 => skip_i_9_n_1,
      I5 => skip_reg_4,
      O => skip0
    );
skip_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \^doado\(1),
      I2 => \^doado\(3),
      I3 => \^doado\(0),
      O => skip_i_5_n_1
    );
skip_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \^doado\(0),
      I1 => \^doado\(3),
      I2 => \^doado\(1),
      I3 => \^doado\(2),
      I4 => \^doado\(5),
      O => skip_i_6_n_1
    );
skip_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^doado\(4),
      I1 => \^doado\(6),
      O => skip_i_7_n_1
    );
skip_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \^doado\(6),
      I2 => \^doado\(8),
      I3 => skip_i_4_0(2),
      I4 => skip_i_4_0(0),
      I5 => skip_i_4_0(1),
      O => skip_i_8_n_1
    );
skip_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(4),
      I2 => \^doado\(2),
      I3 => \^doado\(1),
      O => skip_i_9_n_1
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => skip_reg_1,
      I1 => skip_i_4_0(0),
      I2 => \^doado\(8),
      I3 => \^doado\(4),
      I4 => \^doado\(6),
      I5 => \^doado\(5),
      O => \state_reg[0]\
    );
\state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(5),
      O => \^data_reg_1\
    );
\state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75555D57"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(0),
      I2 => \^doado\(3),
      I3 => \^doado\(1),
      I4 => \^doado\(2),
      O => data_reg_6
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \^doado\(6),
      I2 => \^doado\(7),
      I3 => \^doado\(8),
      O => \^data_reg_3\
    );
\state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7BE"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \^doado\(1),
      I2 => \^doado\(0),
      I3 => \^doado\(3),
      O => data_reg_7
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(5),
      I2 => \^doado\(7),
      I3 => \^doado\(6),
      I4 => \^doado\(4),
      O => data_reg_9
    );
\state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECCCFCCC"
    )
        port map (
      I0 => \bitcount[7]_i_9_n_1\,
      I1 => \^doado\(8),
      I2 => \^doado\(7),
      I3 => \^doado\(6),
      I4 => \^doado\(5),
      O => data_reg_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_div is
  port (
    tmp_clk_reg_0 : out STD_LOGIC;
    clk_100_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end clk_div;

architecture STRUCTURE of clk_div is
  signal \div_count[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \div_count[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \div_count[0]_i_4__0_n_1\ : STD_LOGIC;
  signal div_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \div_count_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[0]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[12]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[16]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[20]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[24]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[28]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[4]_i_1__0_n_8\ : STD_LOGIC;
  signal \div_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \div_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \div_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \div_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \div_count_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \tmp_clk_i_1__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_2__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_3__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_4__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_5__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_6__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_7__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_8__0_n_1\ : STD_LOGIC;
  signal \tmp_clk_i_9__0_n_1\ : STD_LOGIC;
  signal \^tmp_clk_reg_0\ : STD_LOGIC;
  signal \NLW_div_count_reg[0]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_div_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_div_count_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_div_count_reg[20]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_div_count_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_div_count_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_div_count_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_div_count_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \div_count_reg[0]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[12]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[16]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[20]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[24]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[28]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[4]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \div_count_reg[8]_i_1__0\ : label is "SWEEP";
begin
  tmp_clk_reg_0 <= \^tmp_clk_reg_0\;
\div_count[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \tmp_clk_i_2__0_n_1\,
      I1 => \tmp_clk_i_3__0_n_1\,
      I2 => \tmp_clk_i_4__0_n_1\,
      I3 => \tmp_clk_i_5__0_n_1\,
      I4 => div_count_reg(0),
      O => \div_count[0]_i_2__0_n_1\
    );
\div_count[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => \tmp_clk_i_2__0_n_1\,
      I1 => \tmp_clk_i_3__0_n_1\,
      I2 => \tmp_clk_i_4__0_n_1\,
      I3 => \tmp_clk_i_5__0_n_1\,
      I4 => div_count_reg(1),
      O => \div_count[0]_i_3__0_n_1\
    );
\div_count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => \tmp_clk_i_2__0_n_1\,
      I1 => \tmp_clk_i_3__0_n_1\,
      I2 => \tmp_clk_i_4__0_n_1\,
      I3 => \tmp_clk_i_5__0_n_1\,
      I4 => div_count_reg(0),
      O => \div_count[0]_i_4__0_n_1\
    );
\div_count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => \div_count_reg[0]_i_1__0_n_8\,
      PRE => reset_IBUF,
      Q => div_count_reg(0)
    );
\div_count_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \div_count_reg[0]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[0]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \div_count[0]_i_2__0_n_1\,
      O(3) => \div_count_reg[0]_i_1__0_n_5\,
      O(2) => \div_count_reg[0]_i_1__0_n_6\,
      O(1) => \div_count_reg[0]_i_1__0_n_7\,
      O(0) => \div_count_reg[0]_i_1__0_n_8\,
      S(3 downto 2) => div_count_reg(3 downto 2),
      S(1) => \div_count[0]_i_3__0_n_1\,
      S(0) => \div_count[0]_i_4__0_n_1\
    );
\div_count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[8]_i_1__0_n_6\,
      Q => div_count_reg(10)
    );
\div_count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[8]_i_1__0_n_5\,
      Q => div_count_reg(11)
    );
\div_count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[12]_i_1__0_n_8\,
      Q => div_count_reg(12)
    );
\div_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[8]_i_1__0_n_1\,
      CO(3) => \div_count_reg[12]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[12]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[12]_i_1__0_n_5\,
      O(2) => \div_count_reg[12]_i_1__0_n_6\,
      O(1) => \div_count_reg[12]_i_1__0_n_7\,
      O(0) => \div_count_reg[12]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(15 downto 12)
    );
\div_count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[12]_i_1__0_n_7\,
      Q => div_count_reg(13)
    );
\div_count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[12]_i_1__0_n_6\,
      Q => div_count_reg(14)
    );
\div_count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[12]_i_1__0_n_5\,
      Q => div_count_reg(15)
    );
\div_count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[16]_i_1__0_n_8\,
      Q => div_count_reg(16)
    );
\div_count_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[12]_i_1__0_n_1\,
      CO(3) => \div_count_reg[16]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[16]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[16]_i_1__0_n_5\,
      O(2) => \div_count_reg[16]_i_1__0_n_6\,
      O(1) => \div_count_reg[16]_i_1__0_n_7\,
      O(0) => \div_count_reg[16]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(19 downto 16)
    );
\div_count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[16]_i_1__0_n_7\,
      Q => div_count_reg(17)
    );
\div_count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[16]_i_1__0_n_6\,
      Q => div_count_reg(18)
    );
\div_count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[16]_i_1__0_n_5\,
      Q => div_count_reg(19)
    );
\div_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[0]_i_1__0_n_7\,
      Q => div_count_reg(1)
    );
\div_count_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[20]_i_1__0_n_8\,
      Q => div_count_reg(20)
    );
\div_count_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[16]_i_1__0_n_1\,
      CO(3) => \div_count_reg[20]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[20]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[20]_i_1__0_n_5\,
      O(2) => \div_count_reg[20]_i_1__0_n_6\,
      O(1) => \div_count_reg[20]_i_1__0_n_7\,
      O(0) => \div_count_reg[20]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(23 downto 20)
    );
\div_count_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[20]_i_1__0_n_7\,
      Q => div_count_reg(21)
    );
\div_count_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[20]_i_1__0_n_6\,
      Q => div_count_reg(22)
    );
\div_count_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[20]_i_1__0_n_5\,
      Q => div_count_reg(23)
    );
\div_count_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[24]_i_1__0_n_8\,
      Q => div_count_reg(24)
    );
\div_count_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[20]_i_1__0_n_1\,
      CO(3) => \div_count_reg[24]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[24]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[24]_i_1__0_n_5\,
      O(2) => \div_count_reg[24]_i_1__0_n_6\,
      O(1) => \div_count_reg[24]_i_1__0_n_7\,
      O(0) => \div_count_reg[24]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(27 downto 24)
    );
\div_count_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[24]_i_1__0_n_7\,
      Q => div_count_reg(25)
    );
\div_count_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[24]_i_1__0_n_6\,
      Q => div_count_reg(26)
    );
\div_count_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[24]_i_1__0_n_5\,
      Q => div_count_reg(27)
    );
\div_count_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[28]_i_1__0_n_8\,
      Q => div_count_reg(28)
    );
\div_count_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[24]_i_1__0_n_1\,
      CO(3 downto 0) => \NLW_div_count_reg[28]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[28]_i_1__0_n_5\,
      O(2) => \div_count_reg[28]_i_1__0_n_6\,
      O(1) => \div_count_reg[28]_i_1__0_n_7\,
      O(0) => \div_count_reg[28]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(31 downto 28)
    );
\div_count_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[28]_i_1__0_n_7\,
      Q => div_count_reg(29)
    );
\div_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[0]_i_1__0_n_6\,
      Q => div_count_reg(2)
    );
\div_count_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[28]_i_1__0_n_6\,
      Q => div_count_reg(30)
    );
\div_count_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[28]_i_1__0_n_5\,
      Q => div_count_reg(31)
    );
\div_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[0]_i_1__0_n_5\,
      Q => div_count_reg(3)
    );
\div_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[4]_i_1__0_n_8\,
      Q => div_count_reg(4)
    );
\div_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[0]_i_1__0_n_1\,
      CO(3) => \div_count_reg[4]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[4]_i_1__0_n_5\,
      O(2) => \div_count_reg[4]_i_1__0_n_6\,
      O(1) => \div_count_reg[4]_i_1__0_n_7\,
      O(0) => \div_count_reg[4]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(7 downto 4)
    );
\div_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[4]_i_1__0_n_7\,
      Q => div_count_reg(5)
    );
\div_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[4]_i_1__0_n_6\,
      Q => div_count_reg(6)
    );
\div_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[4]_i_1__0_n_5\,
      Q => div_count_reg(7)
    );
\div_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[8]_i_1__0_n_8\,
      Q => div_count_reg(8)
    );
\div_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_count_reg[4]_i_1__0_n_1\,
      CO(3) => \div_count_reg[8]_i_1__0_n_1\,
      CO(2 downto 0) => \NLW_div_count_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_count_reg[8]_i_1__0_n_5\,
      O(2) => \div_count_reg[8]_i_1__0_n_6\,
      O(1) => \div_count_reg[8]_i_1__0_n_7\,
      O(0) => \div_count_reg[8]_i_1__0_n_8\,
      S(3 downto 0) => div_count_reg(11 downto 8)
    );
\div_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \div_count_reg[8]_i_1__0_n_7\,
      Q => div_count_reg(9)
    );
\tmp_clk_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0004"
    )
        port map (
      I0 => \tmp_clk_i_2__0_n_1\,
      I1 => \tmp_clk_i_3__0_n_1\,
      I2 => \tmp_clk_i_4__0_n_1\,
      I3 => \tmp_clk_i_5__0_n_1\,
      I4 => \^tmp_clk_reg_0\,
      O => \tmp_clk_i_1__0_n_1\
    );
\tmp_clk_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => div_count_reg(23),
      I1 => div_count_reg(15),
      I2 => div_count_reg(13),
      I3 => div_count_reg(6),
      I4 => \tmp_clk_i_6__0_n_1\,
      O => \tmp_clk_i_2__0_n_1\
    );
\tmp_clk_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => div_count_reg(8),
      I1 => div_count_reg(3),
      I2 => div_count_reg(2),
      I3 => div_count_reg(25),
      I4 => \tmp_clk_i_7__0_n_1\,
      O => \tmp_clk_i_3__0_n_1\
    );
\tmp_clk_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => div_count_reg(10),
      I1 => div_count_reg(30),
      I2 => div_count_reg(17),
      I3 => div_count_reg(29),
      I4 => \tmp_clk_i_8__0_n_1\,
      O => \tmp_clk_i_4__0_n_1\
    );
\tmp_clk_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => div_count_reg(18),
      I1 => div_count_reg(11),
      I2 => div_count_reg(22),
      I3 => div_count_reg(20),
      I4 => \tmp_clk_i_9__0_n_1\,
      O => \tmp_clk_i_5__0_n_1\
    );
\tmp_clk_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => div_count_reg(4),
      I1 => div_count_reg(19),
      I2 => div_count_reg(5),
      I3 => div_count_reg(7),
      O => \tmp_clk_i_6__0_n_1\
    );
\tmp_clk_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => div_count_reg(27),
      I1 => div_count_reg(21),
      I2 => div_count_reg(24),
      I3 => div_count_reg(0),
      O => \tmp_clk_i_7__0_n_1\
    );
\tmp_clk_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => div_count_reg(26),
      I1 => div_count_reg(14),
      I2 => div_count_reg(1),
      I3 => div_count_reg(9),
      O => \tmp_clk_i_8__0_n_1\
    );
\tmp_clk_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => div_count_reg(28),
      I1 => div_count_reg(31),
      I2 => div_count_reg(12),
      I3 => div_count_reg(16),
      O => \tmp_clk_i_9__0_n_1\
    );
tmp_clk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \tmp_clk_i_1__0_n_1\,
      Q => \^tmp_clk_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocking is
  port (
    CLK_48 : out STD_LOGIC;
    CLK : in STD_LOGIC
  );
end clocking;

architecture STRUCTURE of clocking is
  signal clk_feedback : STD_LOGIC;
  signal zed_audio_clk_48M : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SPLIT_LOADS_ON_BUFG : boolean;
  attribute SPLIT_LOADS_ON_BUFG of clkout1_buf : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of clkout1_buf : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "MLO SWEEP";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => zed_audio_clk_48M,
      O => CLK_48
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 49.500000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 20.625000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 5,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clk_feedback,
      CLKFBOUT => clk_feedback,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => CLK,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => zed_audio_clk_48M,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i2s_data_interface is
  port (
    i2s_lr_last_reg_0 : out STD_LOGIC;
    AC_GPIO0 : out STD_LOGIC;
    \sr_out_reg[62]_0\ : out STD_LOGIC_VECTOR ( 46 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \audio_r_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK_48 : in STD_LOGIC;
    AC_GPIO3_IBUF : in STD_LOGIC;
    AC_GPIO1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sr_out_reg[63]_0\ : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end i2s_data_interface;

architecture STRUCTURE of i2s_data_interface is
  signal audio_l_out_n_1 : STD_LOGIC;
  signal \bclk_delay_reg[1]__0_n_1\ : STD_LOGIC;
  signal \bclk_delay_reg[2]_srl5_n_1\ : STD_LOGIC;
  signal \bclk_delay_reg_n_1_[0]\ : STD_LOGIC;
  signal \bclk_delay_reg_n_1_[9]\ : STD_LOGIC;
  signal i2s_d_in_last : STD_LOGIC;
  signal i2s_lr_last_i_1_n_1 : STD_LOGIC;
  signal \^i2s_lr_last_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sr_in : STD_LOGIC_VECTOR ( 126 downto 71 );
  signal \sr_in[126]_i_1_n_1\ : STD_LOGIC;
  signal \sr_in_reg[102]_srl8_n_1\ : STD_LOGIC;
  signal \sr_in_reg[31]_srl32_n_2\ : STD_LOGIC;
  signal \sr_in_reg[63]_srl32_n_2\ : STD_LOGIC;
  signal \sr_in_reg[70]_srl7_n_1\ : STD_LOGIC;
  signal sr_out : STD_LOGIC_VECTOR ( 63 downto 31 );
  signal \sr_out[39]_i_1_n_1\ : STD_LOGIC;
  signal \NLW_sr_in_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sr_in_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \bclk_delay_reg[2]_srl5\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/bclk_delay_reg ";
  attribute srl_name : string;
  attribute srl_name of \bclk_delay_reg[2]_srl5\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/bclk_delay_reg[2]_srl5 ";
  attribute srl_bus_name of \sr_in_reg[102]_srl8\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg ";
  attribute srl_name of \sr_in_reg[102]_srl8\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg[102]_srl8 ";
  attribute srl_bus_name of \sr_in_reg[31]_srl32\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg ";
  attribute srl_name of \sr_in_reg[31]_srl32\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg[31]_srl32 ";
  attribute srl_bus_name of \sr_in_reg[63]_srl32\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg ";
  attribute srl_name of \sr_in_reg[63]_srl32\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg[63]_srl32 ";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \sr_in_reg[70]_srl7\ : label is "RETARGET";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \sr_in_reg[70]_srl7\ : label is "SRLC32E";
  attribute srl_bus_name of \sr_in_reg[70]_srl7\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg ";
  attribute srl_name of \sr_in_reg[70]_srl7\ : label is "\Audio/Inst_adau1761_izedboard/Inst_i2s_data_interface/sr_in_reg[70]_srl7 ";
begin
  i2s_lr_last_reg_0 <= \^i2s_lr_last_reg_0\;
audio_l_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \bclk_delay_reg_n_1_[0]\,
      I1 => AC_GPIO3_IBUF,
      I2 => \^i2s_lr_last_reg_0\,
      I3 => \bclk_delay_reg[1]__0_n_1\,
      O => audio_l_out_n_1
    );
\audio_l_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(103),
      Q => Q(0),
      R => '0'
    );
\audio_l_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(113),
      Q => Q(10),
      R => '0'
    );
\audio_l_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(114),
      Q => Q(11),
      R => '0'
    );
\audio_l_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(115),
      Q => Q(12),
      R => '0'
    );
\audio_l_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(116),
      Q => Q(13),
      R => '0'
    );
\audio_l_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(117),
      Q => Q(14),
      R => '0'
    );
\audio_l_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(118),
      Q => Q(15),
      R => '0'
    );
\audio_l_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(119),
      Q => Q(16),
      R => '0'
    );
\audio_l_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(120),
      Q => Q(17),
      R => '0'
    );
\audio_l_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(121),
      Q => Q(18),
      R => '0'
    );
\audio_l_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(122),
      Q => Q(19),
      R => '0'
    );
\audio_l_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(104),
      Q => Q(1),
      R => '0'
    );
\audio_l_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(123),
      Q => Q(20),
      R => '0'
    );
\audio_l_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(124),
      Q => Q(21),
      R => '0'
    );
\audio_l_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(125),
      Q => Q(22),
      R => '0'
    );
\audio_l_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(126),
      Q => Q(23),
      R => '0'
    );
\audio_l_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(105),
      Q => Q(2),
      R => '0'
    );
\audio_l_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(106),
      Q => Q(3),
      R => '0'
    );
\audio_l_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(107),
      Q => Q(4),
      R => '0'
    );
\audio_l_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(108),
      Q => Q(5),
      R => '0'
    );
\audio_l_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(109),
      Q => Q(6),
      R => '0'
    );
\audio_l_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(110),
      Q => Q(7),
      R => '0'
    );
\audio_l_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(111),
      Q => Q(8),
      R => '0'
    );
\audio_l_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(112),
      Q => Q(9),
      R => '0'
    );
\audio_r_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(71),
      Q => \audio_r_out_reg[23]_0\(0),
      R => '0'
    );
\audio_r_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(81),
      Q => \audio_r_out_reg[23]_0\(10),
      R => '0'
    );
\audio_r_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(82),
      Q => \audio_r_out_reg[23]_0\(11),
      R => '0'
    );
\audio_r_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(83),
      Q => \audio_r_out_reg[23]_0\(12),
      R => '0'
    );
\audio_r_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(84),
      Q => \audio_r_out_reg[23]_0\(13),
      R => '0'
    );
\audio_r_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(85),
      Q => \audio_r_out_reg[23]_0\(14),
      R => '0'
    );
\audio_r_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(86),
      Q => \audio_r_out_reg[23]_0\(15),
      R => '0'
    );
\audio_r_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(87),
      Q => \audio_r_out_reg[23]_0\(16),
      R => '0'
    );
\audio_r_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(88),
      Q => \audio_r_out_reg[23]_0\(17),
      R => '0'
    );
\audio_r_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(89),
      Q => \audio_r_out_reg[23]_0\(18),
      R => '0'
    );
\audio_r_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(90),
      Q => \audio_r_out_reg[23]_0\(19),
      R => '0'
    );
\audio_r_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(72),
      Q => \audio_r_out_reg[23]_0\(1),
      R => '0'
    );
\audio_r_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(91),
      Q => \audio_r_out_reg[23]_0\(20),
      R => '0'
    );
\audio_r_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(92),
      Q => \audio_r_out_reg[23]_0\(21),
      R => '0'
    );
\audio_r_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(93),
      Q => \audio_r_out_reg[23]_0\(22),
      R => '0'
    );
\audio_r_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(94),
      Q => \audio_r_out_reg[23]_0\(23),
      R => '0'
    );
\audio_r_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(73),
      Q => \audio_r_out_reg[23]_0\(2),
      R => '0'
    );
\audio_r_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(74),
      Q => \audio_r_out_reg[23]_0\(3),
      R => '0'
    );
\audio_r_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(75),
      Q => \audio_r_out_reg[23]_0\(4),
      R => '0'
    );
\audio_r_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(76),
      Q => \audio_r_out_reg[23]_0\(5),
      R => '0'
    );
\audio_r_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(77),
      Q => \audio_r_out_reg[23]_0\(6),
      R => '0'
    );
\audio_r_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(78),
      Q => \audio_r_out_reg[23]_0\(7),
      R => '0'
    );
\audio_r_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(79),
      Q => \audio_r_out_reg[23]_0\(8),
      R => '0'
    );
\audio_r_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => audio_l_out_n_1,
      D => sr_in(80),
      Q => \audio_r_out_reg[23]_0\(9),
      R => '0'
    );
\bclk_delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => \bclk_delay_reg[1]__0_n_1\,
      Q => \bclk_delay_reg_n_1_[0]\,
      R => '0'
    );
\bclk_delay_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => \bclk_delay_reg[2]_srl5_n_1\,
      Q => \bclk_delay_reg[1]__0_n_1\,
      R => '0'
    );
\bclk_delay_reg[2]_srl5\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => CLK_48,
      D => p_0_in(0),
      Q => \bclk_delay_reg[2]_srl5_n_1\
    );
\bclk_delay_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => p_0_in(1),
      Q => p_0_in(0),
      R => '0'
    );
\bclk_delay_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => \bclk_delay_reg_n_1_[9]\,
      Q => p_0_in(1),
      R => '0'
    );
\bclk_delay_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => D(0),
      Q => \bclk_delay_reg_n_1_[9]\,
      R => '0'
    );
i2s_d_in_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => AC_GPIO1,
      Q => i2s_d_in_last,
      R => '0'
    );
i2s_d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(63),
      Q => AC_GPIO0,
      R => '0'
    );
i2s_lr_last_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bclk_delay_reg[1]__0_n_1\,
      I1 => \bclk_delay_reg_n_1_[0]\,
      O => i2s_lr_last_i_1_n_1
    );
i2s_lr_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => AC_GPIO3_IBUF,
      Q => \^i2s_lr_last_reg_0\,
      R => '0'
    );
\sr_in[126]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => \sr_in[126]_i_1_n_1\
    );
\sr_in_reg[102]_srl8\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => \sr_in[126]_i_1_n_1\,
      CLK => CLK_48,
      D => sr_in(94),
      Q => \sr_in_reg[102]_srl8_n_1\
    );
\sr_in_reg[103]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => \sr_in_reg[102]_srl8_n_1\,
      Q => sr_in(103),
      R => '0'
    );
\sr_in_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(103),
      Q => sr_in(104),
      R => '0'
    );
\sr_in_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(104),
      Q => sr_in(105),
      R => '0'
    );
\sr_in_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(105),
      Q => sr_in(106),
      R => '0'
    );
\sr_in_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(106),
      Q => sr_in(107),
      R => '0'
    );
\sr_in_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(107),
      Q => sr_in(108),
      R => '0'
    );
\sr_in_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(108),
      Q => sr_in(109),
      R => '0'
    );
\sr_in_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(109),
      Q => sr_in(110),
      R => '0'
    );
\sr_in_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(110),
      Q => sr_in(111),
      R => '0'
    );
\sr_in_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(111),
      Q => sr_in(112),
      R => '0'
    );
\sr_in_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(112),
      Q => sr_in(113),
      R => '0'
    );
\sr_in_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(113),
      Q => sr_in(114),
      R => '0'
    );
\sr_in_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(114),
      Q => sr_in(115),
      R => '0'
    );
\sr_in_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(115),
      Q => sr_in(116),
      R => '0'
    );
\sr_in_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(116),
      Q => sr_in(117),
      R => '0'
    );
\sr_in_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(117),
      Q => sr_in(118),
      R => '0'
    );
\sr_in_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(118),
      Q => sr_in(119),
      R => '0'
    );
\sr_in_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(119),
      Q => sr_in(120),
      R => '0'
    );
\sr_in_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(120),
      Q => sr_in(121),
      R => '0'
    );
\sr_in_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(121),
      Q => sr_in(122),
      R => '0'
    );
\sr_in_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(122),
      Q => sr_in(123),
      R => '0'
    );
\sr_in_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(123),
      Q => sr_in(124),
      R => '0'
    );
\sr_in_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(124),
      Q => sr_in(125),
      R => '0'
    );
\sr_in_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(125),
      Q => sr_in(126),
      R => '0'
    );
\sr_in_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \sr_in[126]_i_1_n_1\,
      CLK => CLK_48,
      D => i2s_d_in_last,
      Q => \NLW_sr_in_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \sr_in_reg[31]_srl32_n_2\
    );
\sr_in_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => \sr_in[126]_i_1_n_1\,
      CLK => CLK_48,
      D => \sr_in_reg[31]_srl32_n_2\,
      Q => \NLW_sr_in_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \sr_in_reg[63]_srl32_n_2\
    );
\sr_in_reg[70]_srl7\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => \sr_in[126]_i_1_n_1\,
      CLK => CLK_48,
      D => \sr_in_reg[63]_srl32_n_2\,
      Q => \sr_in_reg[70]_srl7_n_1\
    );
\sr_in_reg[71]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => \sr_in_reg[70]_srl7_n_1\,
      Q => sr_in(71),
      R => '0'
    );
\sr_in_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(71),
      Q => sr_in(72),
      R => '0'
    );
\sr_in_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(72),
      Q => sr_in(73),
      R => '0'
    );
\sr_in_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(73),
      Q => sr_in(74),
      R => '0'
    );
\sr_in_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(74),
      Q => sr_in(75),
      R => '0'
    );
\sr_in_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(75),
      Q => sr_in(76),
      R => '0'
    );
\sr_in_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(76),
      Q => sr_in(77),
      R => '0'
    );
\sr_in_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(77),
      Q => sr_in(78),
      R => '0'
    );
\sr_in_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(78),
      Q => sr_in(79),
      R => '0'
    );
\sr_in_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(79),
      Q => sr_in(80),
      R => '0'
    );
\sr_in_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(80),
      Q => sr_in(81),
      R => '0'
    );
\sr_in_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(81),
      Q => sr_in(82),
      R => '0'
    );
\sr_in_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(82),
      Q => sr_in(83),
      R => '0'
    );
\sr_in_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(83),
      Q => sr_in(84),
      R => '0'
    );
\sr_in_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(84),
      Q => sr_in(85),
      R => '0'
    );
\sr_in_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(85),
      Q => sr_in(86),
      R => '0'
    );
\sr_in_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(86),
      Q => sr_in(87),
      R => '0'
    );
\sr_in_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(87),
      Q => sr_in(88),
      R => '0'
    );
\sr_in_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(88),
      Q => sr_in(89),
      R => '0'
    );
\sr_in_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(89),
      Q => sr_in(90),
      R => '0'
    );
\sr_in_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(90),
      Q => sr_in(91),
      R => '0'
    );
\sr_in_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(91),
      Q => sr_in(92),
      R => '0'
    );
\sr_in_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(92),
      Q => sr_in(93),
      R => '0'
    );
\sr_in_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \sr_in[126]_i_1_n_1\,
      D => sr_in(93),
      Q => sr_in(94),
      R => '0'
    );
\sr_out[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^i2s_lr_last_reg_0\,
      I1 => AC_GPIO3_IBUF,
      I2 => \bclk_delay_reg_n_1_[0]\,
      I3 => \bclk_delay_reg[1]__0_n_1\,
      O => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(2),
      Q => \sr_out_reg[62]_0\(2),
      R => '0'
    );
\sr_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(3),
      Q => \sr_out_reg[62]_0\(3),
      R => '0'
    );
\sr_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(4),
      Q => \sr_out_reg[62]_0\(4),
      R => '0'
    );
\sr_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(5),
      Q => \sr_out_reg[62]_0\(5),
      R => '0'
    );
\sr_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(6),
      Q => \sr_out_reg[62]_0\(6),
      R => '0'
    );
\sr_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(7),
      Q => \sr_out_reg[62]_0\(7),
      R => '0'
    );
\sr_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(8),
      Q => \sr_out_reg[62]_0\(8),
      R => '0'
    );
\sr_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(9),
      Q => \sr_out_reg[62]_0\(9),
      R => '0'
    );
\sr_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(10),
      Q => \sr_out_reg[62]_0\(10),
      R => '0'
    );
\sr_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(11),
      Q => \sr_out_reg[62]_0\(11),
      R => '0'
    );
\sr_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(12),
      Q => \sr_out_reg[62]_0\(12),
      R => '0'
    );
\sr_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(13),
      Q => \sr_out_reg[62]_0\(13),
      R => '0'
    );
\sr_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(14),
      Q => \sr_out_reg[62]_0\(14),
      R => '0'
    );
\sr_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(15),
      Q => \sr_out_reg[62]_0\(15),
      R => '0'
    );
\sr_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(16),
      Q => \sr_out_reg[62]_0\(16),
      R => '0'
    );
\sr_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(17),
      Q => \sr_out_reg[62]_0\(17),
      R => '0'
    );
\sr_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(18),
      Q => \sr_out_reg[62]_0\(18),
      R => '0'
    );
\sr_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(19),
      Q => \sr_out_reg[62]_0\(19),
      R => '0'
    );
\sr_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(20),
      Q => \sr_out_reg[62]_0\(20),
      R => '0'
    );
\sr_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(21),
      Q => \sr_out_reg[62]_0\(21),
      R => '0'
    );
\sr_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(22),
      Q => \sr_out_reg[62]_0\(22),
      R => '0'
    );
\sr_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(23),
      Q => sr_out(31),
      R => '0'
    );
\sr_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(31),
      Q => sr_out(32),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(32),
      Q => sr_out(33),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(33),
      Q => sr_out(34),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(34),
      Q => sr_out(35),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(35),
      Q => sr_out(36),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(36),
      Q => sr_out(37),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(37),
      Q => sr_out(38),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => sr_out(38),
      Q => \sr_out_reg[62]_0\(23),
      R => \sr_out[39]_i_1_n_1\
    );
\sr_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(24),
      Q => \sr_out_reg[62]_0\(24),
      R => '0'
    );
\sr_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(25),
      Q => \sr_out_reg[62]_0\(25),
      R => '0'
    );
\sr_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(26),
      Q => \sr_out_reg[62]_0\(26),
      R => '0'
    );
\sr_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(27),
      Q => \sr_out_reg[62]_0\(27),
      R => '0'
    );
\sr_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(28),
      Q => \sr_out_reg[62]_0\(28),
      R => '0'
    );
\sr_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(29),
      Q => \sr_out_reg[62]_0\(29),
      R => '0'
    );
\sr_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(30),
      Q => \sr_out_reg[62]_0\(30),
      R => '0'
    );
\sr_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(31),
      Q => \sr_out_reg[62]_0\(31),
      R => '0'
    );
\sr_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(32),
      Q => \sr_out_reg[62]_0\(32),
      R => '0'
    );
\sr_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(33),
      Q => \sr_out_reg[62]_0\(33),
      R => '0'
    );
\sr_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(34),
      Q => \sr_out_reg[62]_0\(34),
      R => '0'
    );
\sr_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(35),
      Q => \sr_out_reg[62]_0\(35),
      R => '0'
    );
\sr_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(36),
      Q => \sr_out_reg[62]_0\(36),
      R => '0'
    );
\sr_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(37),
      Q => \sr_out_reg[62]_0\(37),
      R => '0'
    );
\sr_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(38),
      Q => \sr_out_reg[62]_0\(38),
      R => '0'
    );
\sr_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(39),
      Q => \sr_out_reg[62]_0\(39),
      R => '0'
    );
\sr_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(40),
      Q => \sr_out_reg[62]_0\(40),
      R => '0'
    );
\sr_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(41),
      Q => \sr_out_reg[62]_0\(41),
      R => '0'
    );
\sr_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(42),
      Q => \sr_out_reg[62]_0\(42),
      R => '0'
    );
\sr_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(43),
      Q => \sr_out_reg[62]_0\(43),
      R => '0'
    );
\sr_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(44),
      Q => \sr_out_reg[62]_0\(44),
      R => '0'
    );
\sr_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(45),
      Q => \sr_out_reg[62]_0\(45),
      R => '0'
    );
\sr_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(46),
      Q => \sr_out_reg[62]_0\(46),
      R => '0'
    );
\sr_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(47),
      Q => sr_out(63),
      R => '0'
    );
\sr_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(0),
      Q => \sr_out_reg[62]_0\(0),
      R => '0'
    );
\sr_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2s_lr_last_i_1_n_1,
      D => \sr_out_reg[63]_0\(1),
      Q => \sr_out_reg[62]_0\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i3c2 is
  port (
    AC_SCK : out STD_LOGIC;
    T : out STD_LOGIC;
    skip_reg_0 : out STD_LOGIC;
    ack_flag : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \delay_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \delay_reg[12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \delay_reg[14]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[2]_1\ : out STD_LOGIC;
    skip_reg_1 : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    \state_reg[3]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \i2c_data_reg[0]_0\ : out STD_LOGIC;
    \pcnext_reg_rep[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \i2c_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_48 : in STD_LOGIC;
    skip_reg_2 : in STD_LOGIC;
    \i2c_data_reg[0]_1\ : in STD_LOGIC;
    \bitcount_reg[0]_0\ : in STD_LOGIC;
    \delay_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \pcnext_reg_rep[0]_0\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \pcnext_reg_rep[9]_1\ : in STD_LOGIC;
    \state_reg[2]_2\ : in STD_LOGIC;
    \state_reg[2]_3\ : in STD_LOGIC;
    \state_reg[1]_2\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    \state_reg[0]_3\ : in STD_LOGIC;
    \state_reg[0]_4\ : in STD_LOGIC;
    \i2c_data_reg[5]_0\ : in STD_LOGIC;
    \i2c_data_reg[7]_1\ : in STD_LOGIC;
    i2c_sda_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \delay_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwropt : out STD_LOGIC
  );
end i3c2;

architecture STRUCTURE of i3c2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ack_flag\ : STD_LOGIC;
  signal ack_flag_i_1_n_1 : STD_LOGIC;
  signal bitcount : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bitcount[0]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[1]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[1]_i_2_n_1\ : STD_LOGIC;
  signal \bitcount[2]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[2]_i_2_n_1\ : STD_LOGIC;
  signal \bitcount[3]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[3]_i_2_n_1\ : STD_LOGIC;
  signal \bitcount[3]_i_3_n_1\ : STD_LOGIC;
  signal \bitcount[4]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[5]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[6]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_10_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_11_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_12_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_13_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_1_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_2_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_3_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_6_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_7_n_1\ : STD_LOGIC;
  signal \bitcount[7]_i_8_n_1\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \delay[15]_i_1_n_1\ : STD_LOGIC;
  signal i2c_bits_left : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i2c_bits_left0 : STD_LOGIC;
  signal \i2c_bits_left[0]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_bits_left[1]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_bits_left[2]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_bits_left[3]_i_2_n_1\ : STD_LOGIC;
  signal \i2c_bits_left[3]_i_3_n_1\ : STD_LOGIC;
  signal \i2c_bits_left[3]_i_4_n_1\ : STD_LOGIC;
  signal \i2c_data[0]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_data[5]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_data[7]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_data[8]_i_1_n_1\ : STD_LOGIC;
  signal \i2c_data[8]_i_3_n_1\ : STD_LOGIC;
  signal \i2c_data[8]_i_4_n_1\ : STD_LOGIC;
  signal \i2c_data[8]_i_5_n_1\ : STD_LOGIC;
  signal \i2c_data_reg_n_1_[0]\ : STD_LOGIC;
  signal \i2c_data_reg_n_1_[4]\ : STD_LOGIC;
  signal \i2c_data_reg_n_1_[6]\ : STD_LOGIC;
  signal i2c_scl_i_1_n_1 : STD_LOGIC;
  signal i2c_scl_i_2_n_1 : STD_LOGIC;
  signal i2c_scl_i_3_n_1 : STD_LOGIC;
  signal i2c_sda_t0 : STD_LOGIC;
  signal i2c_sda_t_i_1_n_1 : STD_LOGIC;
  signal i2c_sda_t_i_3_n_1 : STD_LOGIC;
  signal i2c_sda_t_i_4_n_1 : STD_LOGIC;
  signal i2c_sda_t_i_5_n_1 : STD_LOGIC;
  signal i2c_sda_t_i_6_n_1 : STD_LOGIC;
  signal i2c_started : STD_LOGIC;
  signal i2c_started_i_1_n_1 : STD_LOGIC;
  signal \i__carry__0_i_1_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_1\ : STD_LOGIC;
  signal \i__carry_i_1_n_1\ : STD_LOGIC;
  signal \i__carry_i_2_n_1\ : STD_LOGIC;
  signal \i__carry_i_3_n_1\ : STD_LOGIC;
  signal \i__carry_i_4_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal pcnext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pcnext[0]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[1]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[2]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[3]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[3]_i_2_n_1\ : STD_LOGIC;
  signal \pcnext[4]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[4]_i_2_n_1\ : STD_LOGIC;
  signal \pcnext[5]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[5]_i_2_n_1\ : STD_LOGIC;
  signal \pcnext[6]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[7]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[7]_i_2_n_1\ : STD_LOGIC;
  signal \pcnext[8]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_1_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_2_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_5_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_6_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_7_n_1\ : STD_LOGIC;
  signal \pcnext[9]_i_8_n_1\ : STD_LOGIC;
  signal \^skip_reg_0\ : STD_LOGIC;
  signal \^skip_reg_1\ : STD_LOGIC;
  signal \state[0]_i_1_n_1\ : STD_LOGIC;
  signal \state[0]_i_2_n_1\ : STD_LOGIC;
  signal \state[1]_i_1_n_1\ : STD_LOGIC;
  signal \state[1]_i_3_n_1\ : STD_LOGIC;
  signal \state[2]_i_1_n_1\ : STD_LOGIC;
  signal \state[3]_i_1_n_1\ : STD_LOGIC;
  signal \state[3]_i_2_n_1\ : STD_LOGIC;
  signal \state[3]_i_3_n_1\ : STD_LOGIC;
  signal \state[3]_i_4_n_1\ : STD_LOGIC;
  signal \state[3]_i_6_n_1\ : STD_LOGIC;
  signal \state[3]_i_7_n_1\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^state_reg[2]_1\ : STD_LOGIC;
  signal \^state_reg[3]_0\ : STD_LOGIC;
  signal \state_reg_n_1_[3]\ : STD_LOGIC;
  signal \NLW_minusOp_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcount[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bitcount[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bitcount[2]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bitcount[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bitcount[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bitcount[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bitcount[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bitcount[7]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bitcount[7]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bitcount[7]_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2c_bits_left[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i2c_bits_left[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i2c_bits_left[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_bits_left[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2c_bits_left[3]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_bits_left[3]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i2c_data[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i2c_data[4]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i2c_data[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i2c_data[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i2c_data[8]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2c_data[8]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of i2c_sda_t_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of i2c_sda_t_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of i2c_sda_t_i_6 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of i2c_started_i_1 : label is "soft_lutpair13";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \minusOp_inferred__1/i__carry\ : label is "SWEEP";
  attribute OPT_MODIFIED of \minusOp_inferred__1/i__carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \minusOp_inferred__1/i__carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \minusOp_inferred__1/i__carry__2\ : label is "SWEEP";
  attribute SOFT_HLUTNM of \pcnext[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pcnext[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pcnext[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pcnext[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pcnext[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pcnext[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pcnext[9]_i_8\ : label is "soft_lutpair20";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \pcnext_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \pcnext_reg_rep[9]\ : label is "no";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \state[3]_i_6\ : label is "soft_lutpair13";
begin
  Q(0) <= \^q\(0);
  ack_flag <= \^ack_flag\;
  pwropt <= \pcnext[9]_i_1_n_1\;
  skip_reg_0 <= \^skip_reg_0\;
  skip_reg_1 <= \^skip_reg_1\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
  \state_reg[2]_0\(2 downto 0) <= \^state_reg[2]_0\(2 downto 0);
  \state_reg[2]_1\ <= \^state_reg[2]_1\;
  \state_reg[3]_0\ <= \^state_reg[3]_0\;
ack_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00100000"
    )
        port map (
      I0 => \i2c_data_reg_n_1_[0]\,
      I1 => \i2c_bits_left[3]_i_4_n_1\,
      I2 => \^state_reg[2]_0\(1),
      I3 => \i2c_bits_left[3]_i_3_n_1\,
      I4 => \i2c_data[8]_i_5_n_1\,
      I5 => \^ack_flag\,
      O => ack_flag_i_1_n_1
    );
ack_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => ack_flag_i_1_n_1,
      Q => \^ack_flag\,
      R => '0'
    );
\bitcount[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => bitcount(1),
      I1 => \^state_reg[2]_0\(1),
      I2 => bitcount(0),
      I3 => \bitcount[1]_i_2_n_1\,
      O => \bitcount[0]_i_1_n_1\
    );
\bitcount[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC00000000AAAA"
    )
        port map (
      I0 => \bitcount[1]_i_2_n_1\,
      I1 => \^state_reg[2]_0\(1),
      I2 => \^state_reg[2]_0\(0),
      I3 => \^state_reg[2]_0\(2),
      I4 => bitcount(0),
      I5 => bitcount(1),
      O => \bitcount[1]_i_1_n_1\
    );
\bitcount[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF0EFE0"
    )
        port map (
      I0 => bitcount(2),
      I1 => bitcount(3),
      I2 => \^state_reg[2]_0\(1),
      I3 => \^state_reg[2]_0\(0),
      I4 => \bitcount[3]_i_3_n_1\,
      I5 => \^state_reg[2]_0\(2),
      O => \bitcount[1]_i_2_n_1\
    );
\bitcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC0000A"
    )
        port map (
      I0 => \bitcount[2]_i_2_n_1\,
      I1 => \^state_reg[1]_0\,
      I2 => bitcount(1),
      I3 => bitcount(0),
      I4 => bitcount(2),
      O => \bitcount[2]_i_1_n_1\
    );
\bitcount[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFAEEFA"
    )
        port map (
      I0 => \^state_reg[2]_0\(2),
      I1 => \bitcount[3]_i_3_n_1\,
      I2 => \^state_reg[2]_0\(0),
      I3 => \^state_reg[2]_0\(1),
      I4 => bitcount(3),
      O => \bitcount[2]_i_2_n_1\
    );
\bitcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999989899FF"
    )
        port map (
      I0 => \bitcount[3]_i_2_n_1\,
      I1 => bitcount(3),
      I2 => \bitcount[3]_i_3_n_1\,
      I3 => \^state_reg[2]_0\(2),
      I4 => \^state_reg[2]_0\(0),
      I5 => \^state_reg[2]_0\(1),
      O => \bitcount[3]_i_1_n_1\
    );
\bitcount[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bitcount(1),
      I1 => bitcount(0),
      I2 => bitcount(2),
      O => \bitcount[3]_i_2_n_1\
    );
\bitcount[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitcount(6),
      I1 => bitcount(4),
      I2 => bitcount(5),
      I3 => bitcount(7),
      O => \bitcount[3]_i_3_n_1\
    );
\bitcount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDD7"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => bitcount(4),
      I2 => bitcount(2),
      I3 => bitcount(0),
      I4 => bitcount(1),
      I5 => bitcount(3),
      O => \bitcount[4]_i_1_n_1\
    );
\bitcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FF01FF0101FF"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      I3 => bitcount(5),
      I4 => \bitcount[7]_i_8_n_1\,
      I5 => bitcount(4),
      O => \bitcount[5]_i_1_n_1\
    );
\bitcount[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => bitcount(6),
      I2 => \bitcount[7]_i_8_n_1\,
      I3 => bitcount(5),
      I4 => bitcount(4),
      O => \bitcount[6]_i_1_n_1\
    );
\bitcount[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      O => \^state_reg[1]_0\
    );
\bitcount[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFFEEEEEFEFE"
    )
        port map (
      I0 => \bitcount[7]_i_3_n_1\,
      I1 => \bitcount_reg[0]_0\,
      I2 => \^state_reg[2]_0\(1),
      I3 => \^state_reg[2]_0\(0),
      I4 => \^state_reg[2]_1\,
      I5 => \bitcount[7]_i_6_n_1\,
      O => \bitcount[7]_i_1_n_1\
    );
\bitcount[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay(7),
      I1 => delay(6),
      I2 => delay(5),
      I3 => delay(4),
      O => \bitcount[7]_i_10_n_1\
    );
\bitcount[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay(1),
      I1 => \^q\(0),
      I2 => delay(3),
      I3 => delay(2),
      O => \bitcount[7]_i_11_n_1\
    );
\bitcount[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay(15),
      I1 => delay(14),
      I2 => delay(13),
      I3 => delay(12),
      O => \bitcount[7]_i_12_n_1\
    );
\bitcount[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delay(11),
      I1 => delay(10),
      I2 => delay(9),
      I3 => delay(8),
      O => \bitcount[7]_i_13_n_1\
    );
\bitcount[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F00FE0E0E000"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^state_reg[2]_0\(1),
      I2 => bitcount(7),
      I3 => \bitcount[7]_i_7_n_1\,
      I4 => \bitcount[7]_i_8_n_1\,
      I5 => \^state_reg[2]_0\(2),
      O => \bitcount[7]_i_2_n_1\
    );
\bitcount[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05100000"
    )
        port map (
      I0 => \state_reg_n_1_[3]\,
      I1 => \^state_reg[2]_0\(1),
      I2 => \^state_reg[2]_0\(2),
      I3 => \^state_reg[2]_0\(0),
      I4 => \i2c_bits_left[3]_i_3_n_1\,
      O => \bitcount[7]_i_3_n_1\
    );
\bitcount[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^state_reg[2]_0\(2),
      I1 => \state_reg_n_1_[3]\,
      O => \^state_reg[2]_1\
    );
\bitcount[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \bitcount[7]_i_10_n_1\,
      I1 => \bitcount[7]_i_11_n_1\,
      I2 => \bitcount[7]_i_12_n_1\,
      I3 => \bitcount[7]_i_13_n_1\,
      O => \bitcount[7]_i_6_n_1\
    );
\bitcount[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bitcount(5),
      I1 => bitcount(4),
      I2 => bitcount(6),
      O => \bitcount[7]_i_7_n_1\
    );
\bitcount[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitcount(2),
      I1 => bitcount(0),
      I2 => bitcount(1),
      I3 => bitcount(3),
      O => \bitcount[7]_i_8_n_1\
    );
\bitcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[0]_i_1_n_1\,
      Q => bitcount(0),
      R => '0'
    );
\bitcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[1]_i_1_n_1\,
      Q => bitcount(1),
      R => '0'
    );
\bitcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[2]_i_1_n_1\,
      Q => bitcount(2),
      R => '0'
    );
\bitcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[3]_i_1_n_1\,
      Q => bitcount(3),
      R => '0'
    );
\bitcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[4]_i_1_n_1\,
      Q => bitcount(4),
      R => '0'
    );
\bitcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[5]_i_1_n_1\,
      Q => bitcount(5),
      R => '0'
    );
\bitcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[6]_i_1_n_1\,
      Q => bitcount(6),
      R => '0'
    );
\bitcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \bitcount[7]_i_1_n_1\,
      D => \bitcount[7]_i_2_n_1\,
      Q => bitcount(7),
      R => '0'
    );
\delay[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040F00000400"
    )
        port map (
      I0 => \i2c_bits_left[3]_i_3_n_1\,
      I1 => \bitcount[7]_i_6_n_1\,
      I2 => \^state_reg[2]_0\(1),
      I3 => \^state_reg[2]_0\(0),
      I4 => \^state_reg[2]_1\,
      I5 => \delay_reg[0]_0\,
      O => \delay[15]_i_1_n_1\
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\delay_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(10),
      Q => delay(10),
      R => '0'
    );
\delay_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(11),
      Q => delay(11),
      R => '0'
    );
\delay_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(12),
      Q => delay(12),
      R => '0'
    );
\delay_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(13),
      Q => delay(13),
      R => '0'
    );
\delay_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(14),
      Q => delay(14),
      R => '0'
    );
\delay_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(15),
      Q => delay(15),
      R => '0'
    );
\delay_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(1),
      Q => delay(1),
      R => '0'
    );
\delay_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(2),
      Q => delay(2),
      R => '0'
    );
\delay_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(3),
      Q => delay(3),
      R => '0'
    );
\delay_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(4),
      Q => delay(4),
      R => '0'
    );
\delay_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(5),
      Q => delay(5),
      R => '0'
    );
\delay_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(6),
      Q => delay(6),
      R => '0'
    );
\delay_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(7),
      Q => delay(7),
      R => '0'
    );
\delay_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(8),
      Q => delay(8),
      R => '0'
    );
\delay_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \delay[15]_i_1_n_1\,
      D => \delay_reg[15]_0\(9),
      Q => delay(9),
      R => '0'
    );
\i2c_bits_left[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => i2c_bits_left(0),
      O => \i2c_bits_left[0]_i_1_n_1\
    );
\i2c_bits_left[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => i2c_bits_left(0),
      I1 => i2c_bits_left(1),
      I2 => \^state_reg[2]_0\(1),
      O => \i2c_bits_left[1]_i_1_n_1\
    );
\i2c_bits_left[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => i2c_bits_left(1),
      I1 => i2c_bits_left(0),
      I2 => i2c_bits_left(2),
      I3 => \^state_reg[2]_0\(1),
      O => \i2c_bits_left[2]_i_1_n_1\
    );
\i2c_bits_left[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000000"
    )
        port map (
      I0 => \^state_reg[2]_1\,
      I1 => \^state_reg[2]_0\(0),
      I2 => \i2c_bits_left[3]_i_3_n_1\,
      I3 => \i2c_bits_left[3]_i_4_n_1\,
      I4 => \^state_reg[2]_0\(1),
      I5 => \i2c_data_reg[0]_1\,
      O => i2c_bits_left0
    );
\i2c_bits_left[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD5557"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => i2c_bits_left(2),
      I2 => i2c_bits_left(0),
      I3 => i2c_bits_left(1),
      I4 => i2c_bits_left(3),
      O => \i2c_bits_left[3]_i_2_n_1\
    );
\i2c_bits_left[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bitcount(7),
      I1 => bitcount(5),
      I2 => bitcount(4),
      I3 => bitcount(6),
      I4 => \bitcount[7]_i_8_n_1\,
      O => \i2c_bits_left[3]_i_3_n_1\
    );
\i2c_bits_left[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i2c_bits_left(2),
      I1 => i2c_bits_left(0),
      I2 => i2c_bits_left(1),
      I3 => i2c_bits_left(3),
      O => \i2c_bits_left[3]_i_4_n_1\
    );
\i2c_bits_left[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \state_reg_n_1_[3]\,
      I3 => \^state_reg[2]_0\(2),
      O => \state_reg[1]_1\
    );
\i2c_bits_left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2c_bits_left0,
      D => \i2c_bits_left[0]_i_1_n_1\,
      Q => i2c_bits_left(0),
      R => '0'
    );
\i2c_bits_left_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2c_bits_left0,
      D => \i2c_bits_left[1]_i_1_n_1\,
      Q => i2c_bits_left(1),
      R => '0'
    );
\i2c_bits_left_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2c_bits_left0,
      D => \i2c_bits_left[2]_i_1_n_1\,
      Q => i2c_bits_left(2),
      R => '0'
    );
\i2c_bits_left_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => i2c_bits_left0,
      D => \i2c_bits_left[3]_i_2_n_1\,
      Q => i2c_bits_left(3),
      R => '0'
    );
\i2c_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2c_sda_i,
      I1 => \^state_reg[2]_0\(0),
      O => \i2c_data[0]_i_1_n_1\
    );
\i2c_data[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i2c_data_reg_n_1_[0]\,
      I1 => \^state_reg[2]_0\(0),
      I2 => DOADO(0),
      O => \i2c_data_reg[0]_0\
    );
\i2c_data[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => DOADO(8),
      O => \state_reg[0]_0\
    );
\i2c_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \i2c_data_reg_n_1_[4]\,
      I2 => \i2c_data_reg[5]_0\,
      O => \i2c_data[5]_i_1_n_1\
    );
\i2c_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \i2c_data_reg_n_1_[6]\,
      I2 => \i2c_data_reg[7]_1\,
      O => \i2c_data[7]_i_1_n_1\
    );
\i2c_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \i2c_data_reg[0]_1\,
      I1 => \i2c_data[8]_i_3_n_1\,
      I2 => \i2c_data[8]_i_4_n_1\,
      I3 => bitcount(5),
      I4 => \^state_reg[2]_0\(1),
      I5 => \i2c_data[8]_i_5_n_1\,
      O => \i2c_data[8]_i_1_n_1\
    );
\i2c_data[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => bitcount(6),
      I1 => bitcount(2),
      I2 => bitcount(7),
      I3 => bitcount(3),
      I4 => bitcount(4),
      O => \i2c_data[8]_i_3_n_1\
    );
\i2c_data[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bitcount(0),
      I1 => bitcount(1),
      O => \i2c_data[8]_i_4_n_1\
    );
\i2c_data[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \state_reg_n_1_[3]\,
      I2 => \^state_reg[2]_0\(2),
      O => \i2c_data[8]_i_5_n_1\
    );
\i2c_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => \i2c_data[0]_i_1_n_1\,
      Q => \i2c_data_reg_n_1_[0]\,
      R => '0'
    );
\i2c_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => D(0),
      Q => \i2c_data_reg[7]_0\(0),
      R => '0'
    );
\i2c_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => D(1),
      Q => \i2c_data_reg[7]_0\(1),
      R => '0'
    );
\i2c_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => D(2),
      Q => \i2c_data_reg[7]_0\(2),
      R => '0'
    );
\i2c_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => D(3),
      Q => \i2c_data_reg_n_1_[4]\,
      R => '0'
    );
\i2c_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => \i2c_data[5]_i_1_n_1\,
      Q => \i2c_data_reg[7]_0\(3),
      R => '0'
    );
\i2c_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => D(4),
      Q => \i2c_data_reg_n_1_[6]\,
      R => '0'
    );
\i2c_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => \i2c_data[7]_i_1_n_1\,
      Q => \i2c_data_reg[7]_0\(4),
      R => '0'
    );
\i2c_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \i2c_data[8]_i_1_n_1\,
      D => D(5),
      Q => data0,
      R => '0'
    );
i2c_scl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B0000A00F0"
    )
        port map (
      I0 => i2c_scl_i_3_n_1,
      I1 => \i2c_bits_left[3]_i_3_n_1\,
      I2 => \^state_reg[2]_0\(1),
      I3 => \state_reg_n_1_[3]\,
      I4 => \^state_reg[2]_0\(2),
      I5 => \^state_reg[2]_0\(0),
      O => i2c_scl_i_1_n_1
    );
i2c_scl_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \bitcount[7]_i_8_n_1\,
      I1 => bitcount(6),
      I2 => bitcount(4),
      I3 => bitcount(5),
      I4 => bitcount(7),
      I5 => \^state_reg[2]_0\(1),
      O => i2c_scl_i_2_n_1
    );
i2c_scl_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => bitcount(0),
      I1 => bitcount(1),
      I2 => bitcount(5),
      I3 => \i2c_data[8]_i_3_n_1\,
      O => i2c_scl_i_3_n_1
    );
i2c_scl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_48,
      CE => i2c_scl_i_1_n_1,
      D => i2c_scl_i_2_n_1,
      Q => AC_SCK,
      R => '0'
    );
i2c_sda_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => i2c_sda_t_i_3_n_1,
      I1 => \i2c_data[8]_i_4_n_1\,
      I2 => bitcount(5),
      I3 => \i2c_data[8]_i_3_n_1\,
      I4 => i2c_sda_t_i_4_n_1,
      I5 => i2c_sda_t_i_5_n_1,
      O => i2c_sda_t_i_1_n_1
    );
i2c_sda_t_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => data0,
      I2 => \i2c_data[8]_i_3_n_1\,
      I3 => i2c_sda_t_i_6_n_1,
      O => i2c_sda_t0
    );
i2c_sda_t_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^state_reg[2]_0\(2),
      I2 => \state_reg_n_1_[3]\,
      I3 => \^state_reg[2]_0\(1),
      O => i2c_sda_t_i_3_n_1
    );
i2c_sda_t_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000600"
    )
        port map (
      I0 => bitcount(2),
      I1 => bitcount(6),
      I2 => \state_reg_n_1_[3]\,
      I3 => \^state_reg[2]_0\(2),
      I4 => \^state_reg[2]_0\(1),
      I5 => \^state_reg[2]_0\(0),
      O => i2c_sda_t_i_4_n_1
    );
i2c_sda_t_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => bitcount(0),
      I1 => bitcount(1),
      I2 => bitcount(5),
      I3 => bitcount(7),
      I4 => bitcount(3),
      I5 => bitcount(4),
      O => i2c_sda_t_i_5_n_1
    );
i2c_sda_t_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => bitcount(0),
      I1 => bitcount(1),
      I2 => \^state_reg[2]_0\(1),
      I3 => bitcount(5),
      O => i2c_sda_t_i_6_n_1
    );
i2c_sda_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_48,
      CE => i2c_sda_t_i_1_n_1,
      D => i2c_sda_t0,
      Q => T,
      R => '0'
    );
i2c_started_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0002"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \state_reg_n_1_[3]\,
      I2 => \^state_reg[2]_0\(2),
      I3 => \^state_reg[2]_0\(0),
      I4 => i2c_started,
      O => i2c_started_i_1_n_1
    );
i2c_started_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => i2c_started_i_1_n_1,
      Q => i2c_started,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(8),
      O => \i__carry__0_i_1_n_1\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(7),
      O => \i__carry__0_i_2_n_1\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(6),
      O => \i__carry__0_i_3_n_1\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(5),
      O => \i__carry__0_i_4_n_1\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(12),
      O => \i__carry__1_i_1_n_1\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(11),
      O => \i__carry__1_i_2_n_1\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(10),
      O => \i__carry__1_i_3_n_1\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(9),
      O => \i__carry__1_i_4_n_1\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(15),
      O => \i__carry__2_i_1_n_1\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(14),
      O => \i__carry__2_i_2_n_1\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(13),
      O => \i__carry__2_i_3_n_1\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(4),
      O => \i__carry_i_1_n_1\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(3),
      O => \i__carry_i_2_n_1\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(2),
      O => \i__carry_i_3_n_1\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay(1),
      O => \i__carry_i_4_n_1\
    );
\minusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__1/i__carry_n_1\,
      CO(2 downto 0) => \NLW_minusOp_inferred__1/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \^q\(0),
      DI(3 downto 0) => delay(4 downto 1),
      O(3 downto 0) => O(3 downto 0),
      S(3) => \i__carry_i_1_n_1\,
      S(2) => \i__carry_i_2_n_1\,
      S(1) => \i__carry_i_3_n_1\,
      S(0) => \i__carry_i_4_n_1\
    );
\minusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry_n_1\,
      CO(3) => \minusOp_inferred__1/i__carry__0_n_1\,
      CO(2 downto 0) => \NLW_minusOp_inferred__1/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => delay(8 downto 5),
      O(3 downto 0) => \delay_reg[8]_0\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_1\,
      S(2) => \i__carry__0_i_2_n_1\,
      S(1) => \i__carry__0_i_3_n_1\,
      S(0) => \i__carry__0_i_4_n_1\
    );
\minusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__0_n_1\,
      CO(3) => \minusOp_inferred__1/i__carry__1_n_1\,
      CO(2 downto 0) => \NLW_minusOp_inferred__1/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => delay(12 downto 9),
      O(3 downto 0) => \delay_reg[12]_0\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_1\,
      S(2) => \i__carry__1_i_2_n_1\,
      S(1) => \i__carry__1_i_3_n_1\,
      S(0) => \i__carry__1_i_4_n_1\
    );
\minusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__1_n_1\,
      CO(3 downto 0) => \NLW_minusOp_inferred__1/i__carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => delay(14 downto 13),
      O(3) => \NLW_minusOp_inferred__1/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => \delay_reg[14]_0\(2 downto 0),
      S(3) => '0',
      S(2) => \i__carry__2_i_1_n_1\,
      S(1) => \i__carry__2_i_2_n_1\,
      S(0) => \i__carry__2_i_3_n_1\
    );
\pcnext[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pcnext[9]_i_7_n_1\,
      I1 => pcnext(0),
      O => \pcnext[0]_i_1_n_1\
    );
\pcnext[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \pcnext[9]_i_7_n_1\,
      I1 => pcnext(0),
      I2 => pcnext(1),
      O => \pcnext[1]_i_1_n_1\
    );
\pcnext[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \pcnext[9]_i_7_n_1\,
      I1 => pcnext(1),
      I2 => pcnext(0),
      I3 => pcnext(2),
      O => \pcnext[2]_i_1_n_1\
    );
\pcnext[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88888F8"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(0),
      I2 => \pcnext[9]_i_7_n_1\,
      I3 => \pcnext[3]_i_2_n_1\,
      I4 => pcnext(3),
      O => \pcnext[3]_i_1_n_1\
    );
\pcnext[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => pcnext(1),
      I1 => pcnext(0),
      I2 => pcnext(2),
      O => \pcnext[3]_i_2_n_1\
    );
\pcnext[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88888F8"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(1),
      I2 => \pcnext[9]_i_7_n_1\,
      I3 => \pcnext[4]_i_2_n_1\,
      I4 => pcnext(4),
      O => \pcnext[4]_i_1_n_1\
    );
\pcnext[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pcnext(2),
      I1 => pcnext(0),
      I2 => pcnext(1),
      I3 => pcnext(3),
      O => \pcnext[4]_i_2_n_1\
    );
\pcnext[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888F88"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(2),
      I2 => \pcnext[5]_i_2_n_1\,
      I3 => \pcnext[9]_i_7_n_1\,
      I4 => pcnext(5),
      O => \pcnext[5]_i_1_n_1\
    );
\pcnext[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => pcnext(3),
      I1 => pcnext(1),
      I2 => pcnext(0),
      I3 => pcnext(2),
      I4 => pcnext(4),
      O => \pcnext[5]_i_2_n_1\
    );
\pcnext[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888F88"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(3),
      I2 => \pcnext[7]_i_2_n_1\,
      I3 => \pcnext[9]_i_7_n_1\,
      I4 => pcnext(6),
      O => \pcnext[6]_i_1_n_1\
    );
\pcnext[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF88888F888888"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(4),
      I2 => \pcnext[7]_i_2_n_1\,
      I3 => pcnext(6),
      I4 => \pcnext[9]_i_7_n_1\,
      I5 => pcnext(7),
      O => \pcnext[7]_i_1_n_1\
    );
\pcnext[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => pcnext(4),
      I1 => pcnext(2),
      I2 => pcnext(0),
      I3 => pcnext(1),
      I4 => pcnext(3),
      I5 => pcnext(5),
      O => \pcnext[7]_i_2_n_1\
    );
\pcnext[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888F88"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(5),
      I2 => \pcnext[9]_i_6_n_1\,
      I3 => \pcnext[9]_i_7_n_1\,
      I4 => pcnext(8),
      O => \pcnext[8]_i_1_n_1\
    );
\pcnext[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAABA"
    )
        port map (
      I0 => \state[3]_i_4_n_1\,
      I1 => i2c_scl_i_2_n_1,
      I2 => \^state_reg[2]_0\(0),
      I3 => \i2c_bits_left[3]_i_4_n_1\,
      I4 => \^skip_reg_1\,
      I5 => \pcnext_reg_rep[0]_0\,
      O => \pcnext[9]_i_1_n_1\
    );
\pcnext[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF88888F888888"
    )
        port map (
      I0 => \pcnext[9]_i_5_n_1\,
      I1 => DOADO(6),
      I2 => \pcnext[9]_i_6_n_1\,
      I3 => pcnext(8),
      I4 => \pcnext[9]_i_7_n_1\,
      I5 => pcnext(9),
      O => \pcnext[9]_i_2_n_1\
    );
\pcnext[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FF00FFAB"
    )
        port map (
      I0 => \^skip_reg_0\,
      I1 => DOADO(8),
      I2 => DOADO(7),
      I3 => \state_reg_n_1_[3]\,
      I4 => \pcnext[9]_i_8_n_1\,
      I5 => \^state_reg[2]_0\(2),
      O => \^skip_reg_1\
    );
\pcnext[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^state_reg[2]_1\,
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(1),
      I3 => \^skip_reg_0\,
      I4 => DOADO(7),
      I5 => DOADO(8),
      O => \pcnext[9]_i_5_n_1\
    );
\pcnext[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => pcnext(6),
      I1 => \pcnext[7]_i_2_n_1\,
      I2 => pcnext(7),
      O => \pcnext[9]_i_6_n_1\
    );
\pcnext[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000035353534"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(2),
      I2 => \^state_reg[2]_0\(0),
      I3 => \^skip_reg_0\,
      I4 => \pcnext_reg_rep[9]_1\,
      I5 => \state_reg_n_1_[3]\,
      O => \pcnext[9]_i_7_n_1\
    );
\pcnext[9]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^state_reg[2]_0\(1),
      O => \pcnext[9]_i_8_n_1\
    );
\pcnext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[0]_i_1_n_1\,
      Q => pcnext(0),
      R => '0'
    );
\pcnext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[1]_i_1_n_1\,
      Q => pcnext(1),
      R => '0'
    );
\pcnext_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[2]_i_1_n_1\,
      Q => pcnext(2),
      R => '0'
    );
\pcnext_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[3]_i_1_n_1\,
      Q => pcnext(3),
      R => '0'
    );
\pcnext_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[4]_i_1_n_1\,
      Q => pcnext(4),
      R => '0'
    );
\pcnext_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[5]_i_1_n_1\,
      Q => pcnext(5),
      R => '0'
    );
\pcnext_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[6]_i_1_n_1\,
      Q => pcnext(6),
      R => '0'
    );
\pcnext_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[7]_i_1_n_1\,
      Q => pcnext(7),
      R => '0'
    );
\pcnext_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[8]_i_1_n_1\,
      Q => pcnext(8),
      R => '0'
    );
\pcnext_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[9]_i_2_n_1\,
      Q => pcnext(9),
      R => '0'
    );
\pcnext_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[0]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(0),
      R => '0'
    );
\pcnext_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[1]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(1),
      R => '0'
    );
\pcnext_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[2]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(2),
      R => '0'
    );
\pcnext_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[3]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(3),
      R => '0'
    );
\pcnext_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[4]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(4),
      R => '0'
    );
\pcnext_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[5]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(5),
      R => '0'
    );
\pcnext_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[6]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(6),
      R => '0'
    );
\pcnext_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[7]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(7),
      R => '0'
    );
\pcnext_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[8]_i_1_n_1\,
      Q => \pcnext_reg_rep[9]_0\(8),
      R => '0'
    );
\pcnext_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \pcnext[9]_i_1_n_1\,
      D => \pcnext[9]_i_2_n_1\,
      Q => \pcnext_reg_rep[9]_0\(9),
      R => '0'
    );
skip_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_48,
      CE => '1',
      D => skip_reg_2,
      Q => \^skip_reg_0\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEFEEEEEEE"
    )
        port map (
      I0 => \state[0]_i_2_n_1\,
      I1 => \state_reg[0]_2\,
      I2 => i2c_started,
      I3 => \^state_reg[3]_0\,
      I4 => \state_reg[0]_3\,
      I5 => \state_reg[0]_4\,
      O => \state[0]_i_1_n_1\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088880000AAAF"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => i2c_bits_left(0),
      I2 => DOADO(7),
      I3 => DOADO(8),
      I4 => \^state_reg[2]_1\,
      I5 => \^state_reg[2]_0\(0),
      O => \state[0]_i_2_n_1\
    );
\state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_1_[3]\,
      I1 => \^state_reg[2]_0\(2),
      I2 => \^state_reg[2]_0\(0),
      O => \^state_reg[3]_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AFFFFF000C"
    )
        port map (
      I0 => i2c_bits_left(1),
      I1 => \state_reg[1]_2\,
      I2 => \^state_reg[2]_0\(0),
      I3 => \^state_reg[2]_1\,
      I4 => \state[1]_i_3_n_1\,
      I5 => \^state_reg[2]_0\(1),
      O => \state[1]_i_1_n_1\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \state_reg_n_1_[3]\,
      I1 => \^state_reg[2]_0\(2),
      I2 => \^state_reg[2]_0\(0),
      I3 => DOADO(4),
      I4 => DOADO(7),
      I5 => \state_reg[0]_4\,
      O => \state[1]_i_3_n_1\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000000000C0"
    )
        port map (
      I0 => i2c_bits_left(2),
      I1 => \state_reg[2]_2\,
      I2 => \state_reg[2]_3\,
      I3 => \^state_reg[2]_1\,
      I4 => \^state_reg[2]_0\(0),
      I5 => \^state_reg[2]_0\(1),
      O => \state[2]_i_1_n_1\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEFE"
    )
        port map (
      I0 => \state[3]_i_3_n_1\,
      I1 => \state[3]_i_4_n_1\,
      I2 => \state_reg[0]_1\,
      I3 => \^state_reg[1]_0\,
      I4 => \^skip_reg_0\,
      I5 => \state[3]_i_6_n_1\,
      O => \state[3]_i_1_n_1\
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => i2c_bits_left(3),
      I2 => \^state_reg[2]_0\(2),
      I3 => \state_reg_n_1_[3]\,
      I4 => \^state_reg[2]_0\(0),
      O => \state[3]_i_2_n_1\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => i2c_bits_left(2),
      I2 => i2c_bits_left(0),
      I3 => i2c_bits_left(1),
      I4 => i2c_bits_left(3),
      I5 => i2c_scl_i_2_n_1,
      O => \state[3]_i_3_n_1\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAAAAAA"
    )
        port map (
      I0 => \^state_reg[2]_0\(2),
      I1 => \bitcount[7]_i_11_n_1\,
      I2 => \bitcount[7]_i_10_n_1\,
      I3 => \bitcount[7]_i_13_n_1\,
      I4 => \state[3]_i_7_n_1\,
      I5 => \i2c_bits_left[3]_i_3_n_1\,
      O => \state[3]_i_4_n_1\
    );
\state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => \^state_reg[2]_0\(2),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(1),
      I3 => \state_reg_n_1_[3]\,
      O => \state[3]_i_6_n_1\
    );
\state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => delay(12),
      I1 => delay(13),
      I2 => delay(14),
      I3 => delay(15),
      I4 => \^state_reg[2]_0\(1),
      I5 => \^state_reg[2]_0\(0),
      O => \state[3]_i_7_n_1\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \state[3]_i_1_n_1\,
      D => \state[0]_i_1_n_1\,
      Q => \^state_reg[2]_0\(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \state[3]_i_1_n_1\,
      D => \state[1]_i_1_n_1\,
      Q => \^state_reg[2]_0\(1),
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \state[3]_i_1_n_1\,
      D => \state[2]_i_1_n_1\,
      Q => \^state_reg[2]_0\(2),
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_48,
      CE => \state[3]_i_1_n_1\,
      D => \state[3]_i_2_n_1\,
      Q => \state_reg_n_1_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pattern_generator is
  port (
    DOA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RGB_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \bar_index_reg_rep[3]__1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    plusOp13 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bar_index_reg_rep[3]__0_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \bar_index_reg_rep[3]__1_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    plusOp10 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    geqOp_carry_i_6_0 : in STD_LOGIC;
    mag_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset_IBUF : in STD_LOGIC;
    \geqOp_carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \R_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \R_reg[7]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \R_reg[7]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \R_reg[7]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \geqOp_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \geqOp_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \R_reg[7]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gtOp_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gtOp_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bar_index_reg_rep[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bar_index_reg_rep[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gtOp_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gtOp_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bar_index_reg_rep[2]__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bar_index_reg_rep[2]__0_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \geqOp_inferred__0/i__carry_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \bar_index_reg_rep[2]__0_2\ : in STD_LOGIC;
    B_switch_IBUF : in STD_LOGIC;
    G_switch_IBUF : in STD_LOGIC;
    R_switch_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : out STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC;
    lopt_8 : out STD_LOGIC;
    lopt_9 : out STD_LOGIC;
    lopt_10 : out STD_LOGIC;
    lopt_11 : out STD_LOGIC;
    lopt_12 : out STD_LOGIC;
    lopt_13 : out STD_LOGIC;
    lopt_14 : out STD_LOGIC;
    lopt_15 : out STD_LOGIC;
    lopt_16 : out STD_LOGIC;
    lopt_17 : out STD_LOGIC;
    lopt_18 : out STD_LOGIC;
    lopt_19 : out STD_LOGIC;
    lopt_20 : out STD_LOGIC;
    lopt_21 : out STD_LOGIC;
    lopt_22 : out STD_LOGIC;
    lopt_23 : out STD_LOGIC
  );
end pattern_generator;

architecture STRUCTURE of pattern_generator is
  signal \B[7]_i_1_n_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_2_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_3_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_4_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_5_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_6_1\ : STD_LOGIC;
  signal \B_reg[7]_lopt_replica_7_1\ : STD_LOGIC;
  signal \^doa\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \G[7]_i_1_n_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_2_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_3_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_4_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_5_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_6_1\ : STD_LOGIC;
  signal \G_reg[7]_lopt_replica_7_1\ : STD_LOGIC;
  signal R : STD_LOGIC_VECTOR ( 8 downto 5 );
  signal \R[7]_i_1_n_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_2_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_3_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_4_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_5_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_6_1\ : STD_LOGIC;
  signal \R_reg[7]_lopt_replica_7_1\ : STD_LOGIC;
  signal bar_height_reg_0_15_0_4_n_3 : STD_LOGIC;
  signal bar_height_reg_0_15_0_4_n_4 : STD_LOGIC;
  signal bar_height_reg_0_15_0_4_n_6 : STD_LOGIC;
  signal bar_index : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bar_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^bar_index_reg_rep[3]__0_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^bar_index_reg_rep[3]__1_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bar_index_reg_rep[3]__1_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \bar_index_reg_rep_n_1_[0]\ : STD_LOGIC;
  signal \bar_index_reg_rep_n_1_[1]\ : STD_LOGIC;
  signal \bar_index_reg_rep_n_1_[2]\ : STD_LOGIC;
  signal \bar_index_reg_rep_n_1_[3]\ : STD_LOGIC;
  signal \bar_index_rep[0]_i_1_n_1\ : STD_LOGIC;
  signal \bar_index_rep[1]_i_1_n_1\ : STD_LOGIC;
  signal \bar_index_rep[2]_i_1_n_1\ : STD_LOGIC;
  signal \bar_index_rep[3]_i_1_n_1\ : STD_LOGIC;
  signal \bar_index_rep[3]_i_3_n_1\ : STD_LOGIC;
  signal \bar_index_rep[3]_i_5_n_1\ : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal geqOp0_in : STD_LOGIC;
  signal geqOp_carry_i_1_n_1 : STD_LOGIC;
  signal geqOp_carry_i_2_n_1 : STD_LOGIC;
  signal geqOp_carry_i_3_n_1 : STD_LOGIC;
  signal geqOp_carry_i_5_n_1 : STD_LOGIC;
  signal geqOp_carry_i_6_n_1 : STD_LOGIC;
  signal geqOp_carry_i_7_n_1 : STD_LOGIC;
  signal geqOp_carry_i_8_n_1 : STD_LOGIC;
  signal geqOp_carry_i_9_n_1 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_1\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_1\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_1\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_1\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_6_n_1\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_9_n_1\ : STD_LOGIC;
  signal leqOp : STD_LOGIC;
  signal leqOp_carry_i_1_n_1 : STD_LOGIC;
  signal leqOp_carry_i_2_n_1 : STD_LOGIC;
  signal leqOp_carry_i_3_n_1 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal ltOp_carry_i_10_n_1 : STD_LOGIC;
  signal ltOp_carry_i_11_n_1 : STD_LOGIC;
  signal ltOp_carry_i_12_n_1 : STD_LOGIC;
  signal ltOp_carry_i_13_n_1 : STD_LOGIC;
  signal ltOp_carry_i_14_n_1 : STD_LOGIC;
  signal ltOp_carry_i_4_n_1 : STD_LOGIC;
  signal \^plusop10\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^plusop13\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal plusOp_carry_i_1_n_1 : STD_LOGIC;
  signal plusOp_carry_i_2_n_1 : STD_LOGIC;
  signal plusOp_carry_i_3_n_1 : STD_LOGIC;
  signal NLW_bar_height_reg_0_15_0_4_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_bar_height_reg_0_15_0_4_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_geqOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i__carry__0_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i__carry__0_i_3__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i__carry_i_8__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_leqOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_i_10_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ltOp_carry_i_10_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ltOp_carry_i_9_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_plusOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica_2\ : label is std.standard.true;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica_2\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica_3\ : label is std.standard.true;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica_3\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica_4\ : label is std.standard.true;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica_4\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica_5\ : label is std.standard.true;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica_5\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica_6\ : label is std.standard.true;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica_6\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \B_reg[7]_lopt_replica_7\ : label is std.standard.true;
  attribute OPT_MODIFIED of \B_reg[7]_lopt_replica_7\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica_2\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica_2\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica_3\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica_3\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica_4\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica_4\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica_5\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica_5\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica_6\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica_6\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \G_reg[7]_lopt_replica_7\ : label is std.standard.true;
  attribute OPT_MODIFIED of \G_reg[7]_lopt_replica_7\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica_2\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica_2\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica_3\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica_3\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica_4\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica_4\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica_5\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica_5\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica_6\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica_6\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \R_reg[7]_lopt_replica_7\ : label is std.standard.true;
  attribute OPT_MODIFIED of \R_reg[7]_lopt_replica_7\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bar_height_reg_0_15_0_4 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bar_height_reg_0_15_0_4 : label is 80;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bar_height_reg_0_15_0_4 : label is "Video/Video_output/bar_height";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bar_height_reg_0_15_0_4 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bar_height_reg_0_15_0_4 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of bar_height_reg_0_15_0_4 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bar_height_reg_0_15_0_4 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bar_height_reg_0_15_0_4 : label is 4;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \bar_index_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[0]__1\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[1]__1\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[2]__0\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[2]__1\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[3]__0\ : label is "no";
  attribute equivalent_register_removal of \bar_index_reg_rep[3]__1\ : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bar_index_rep[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \bar_index_rep[2]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \bar_index_rep[3]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \bar_index_rep[3]_i_5\ : label is "soft_lutpair78";
  attribute OPT_MODIFIED of geqOp_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \geqOp_inferred__0/i__carry\ : label is "SWEEP";
  attribute OPT_MODIFIED of gtOp_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \gtOp_inferred__0/i__carry\ : label is "SWEEP";
  attribute OPT_MODIFIED of \i__carry_i_8__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of leqOp_carry : label is "SWEEP";
  attribute OPT_MODIFIED of ltOp_carry : label is "SWEEP";
  attribute OPT_MODIFIED of ltOp_carry_i_10 : label is "SWEEP";
  attribute OPT_MODIFIED of plusOp_carry : label is "PROPCONST SWEEP";
begin
  DOA(1 downto 0) <= \^doa\(1 downto 0);
  \bar_index_reg_rep[3]__0_0\(1 downto 0) <= \^bar_index_reg_rep[3]__0_0\(1 downto 0);
  \bar_index_reg_rep[3]__1_0\(0) <= \^bar_index_reg_rep[3]__1_0\(0);
  \bar_index_reg_rep[3]__1_1\(1 downto 0) <= \^bar_index_reg_rep[3]__1_1\(1 downto 0);
  lopt <= \B_reg[7]_lopt_replica_1\;
  lopt_1 <= \B_reg[7]_lopt_replica_2_1\;
  lopt_10 <= \G_reg[7]_lopt_replica_3_1\;
  lopt_11 <= \G_reg[7]_lopt_replica_4_1\;
  lopt_12 <= \G_reg[7]_lopt_replica_5_1\;
  lopt_13 <= \G_reg[7]_lopt_replica_6_1\;
  lopt_14 <= \G_reg[7]_lopt_replica_7_1\;
  lopt_16 <= \R_reg[7]_lopt_replica_1\;
  lopt_17 <= \R_reg[7]_lopt_replica_2_1\;
  lopt_18 <= \R_reg[7]_lopt_replica_3_1\;
  lopt_19 <= \R_reg[7]_lopt_replica_4_1\;
  lopt_2 <= \B_reg[7]_lopt_replica_3_1\;
  lopt_20 <= \R_reg[7]_lopt_replica_5_1\;
  lopt_21 <= \R_reg[7]_lopt_replica_6_1\;
  lopt_22 <= \R_reg[7]_lopt_replica_7_1\;
  lopt_3 <= \B_reg[7]_lopt_replica_4_1\;
  lopt_4 <= \B_reg[7]_lopt_replica_5_1\;
  lopt_5 <= \B_reg[7]_lopt_replica_6_1\;
  lopt_6 <= \B_reg[7]_lopt_replica_7_1\;
  lopt_8 <= \G_reg[7]_lopt_replica_1\;
  lopt_9 <= \G_reg[7]_lopt_replica_2_1\;
  plusOp10(4 downto 0) <= \^plusop10\(4 downto 0);
  plusOp13(6 downto 0) <= \^plusop13\(6 downto 0);
  lopt_15 <= 'Z';
  lopt_23 <= 'Z';
  lopt_7 <= 'Z';
\B[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ltOp,
      I1 => leqOp,
      I2 => geqOp,
      I3 => geqOp0_in,
      I4 => \bar_index_reg_rep[2]__0_2\,
      I5 => B_switch_IBUF,
      O => \B[7]_i_1_n_1\
    );
\B_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => RGB_OBUF(0)
    );
\B_reg[7]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_1\
    );
\B_reg[7]_lopt_replica_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_2_1\
    );
\B_reg[7]_lopt_replica_3\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_3_1\
    );
\B_reg[7]_lopt_replica_4\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_4_1\
    );
\B_reg[7]_lopt_replica_5\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_5_1\
    );
\B_reg[7]_lopt_replica_6\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_6_1\
    );
\B_reg[7]_lopt_replica_7\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \B[7]_i_1_n_1\,
      Q => \B_reg[7]_lopt_replica_7_1\
    );
\G[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ltOp,
      I1 => leqOp,
      I2 => geqOp,
      I3 => geqOp0_in,
      I4 => \bar_index_reg_rep[2]__0_2\,
      I5 => G_switch_IBUF,
      O => \G[7]_i_1_n_1\
    );
\G_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => RGB_OBUF(1)
    );
\G_reg[7]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_1\
    );
\G_reg[7]_lopt_replica_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_2_1\
    );
\G_reg[7]_lopt_replica_3\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_3_1\
    );
\G_reg[7]_lopt_replica_4\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_4_1\
    );
\G_reg[7]_lopt_replica_5\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_5_1\
    );
\G_reg[7]_lopt_replica_6\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_6_1\
    );
\G_reg[7]_lopt_replica_7\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \G[7]_i_1_n_1\,
      Q => \G_reg[7]_lopt_replica_7_1\
    );
\R[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ltOp,
      I1 => leqOp,
      I2 => geqOp,
      I3 => geqOp0_in,
      I4 => \bar_index_reg_rep[2]__0_2\,
      I5 => R_switch_IBUF,
      O => \R[7]_i_1_n_1\
    );
\R_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => RGB_OBUF(2)
    );
\R_reg[7]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_1\
    );
\R_reg[7]_lopt_replica_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_2_1\
    );
\R_reg[7]_lopt_replica_3\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_3_1\
    );
\R_reg[7]_lopt_replica_4\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_4_1\
    );
\R_reg[7]_lopt_replica_5\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_5_1\
    );
\R_reg[7]_lopt_replica_6\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_6_1\
    );
\R_reg[7]_lopt_replica_7\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset_IBUF,
      D => \R[7]_i_1_n_1\,
      Q => \R_reg[7]_lopt_replica_7_1\
    );
bar_height_reg_0_15_0_4: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3) => \bar_index_reg_rep_n_1_[3]\,
      ADDRA(2) => \bar_index_reg_rep_n_1_[2]\,
      ADDRA(1) => \bar_index_reg_rep_n_1_[1]\,
      ADDRA(0) => \bar_index_reg_rep_n_1_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \bar_index_reg_rep_n_1_[3]\,
      ADDRB(2) => \bar_index_reg_rep_n_1_[2]\,
      ADDRB(1) => \bar_index_reg_rep_n_1_[1]\,
      ADDRB(0) => \bar_index_reg_rep_n_1_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \bar_index_reg_rep_n_1_[3]\,
      ADDRC(2) => \bar_index_reg_rep_n_1_[2]\,
      ADDRC(1) => \bar_index_reg_rep_n_1_[1]\,
      ADDRC(0) => \bar_index_reg_rep_n_1_[0]\,
      ADDRD(4 downto 0) => B"00000",
      DIA(1 downto 0) => mag_in(1 downto 0),
      DIB(1 downto 0) => mag_in(3 downto 2),
      DIC(1) => '0',
      DIC(0) => mag_in(4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^doa\(1 downto 0),
      DOB(1) => bar_height_reg_0_15_0_4_n_3,
      DOB(0) => bar_height_reg_0_15_0_4_n_4,
      DOC(1) => NLW_bar_height_reg_0_15_0_4_DOC_UNCONNECTED(1),
      DOC(0) => bar_height_reg_0_15_0_4_n_6,
      DOD(1 downto 0) => NLW_bar_height_reg_0_15_0_4_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK,
      WE => geqOp_carry_i_6_0
    );
\bar_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[0]_i_1_n_1\,
      Q => bar_index_reg(0),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[1]_i_1_n_1\,
      Q => bar_index_reg(1),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[2]_i_1_n_1\,
      Q => bar_index_reg(2),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[3]_i_3_n_1\,
      Q => bar_index_reg(3),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[0]_i_1_n_1\,
      Q => \bar_index_reg_rep_n_1_[0]\,
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[0]__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[0]_i_1_n_1\,
      Q => bar_index(0),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[1]_i_1_n_1\,
      Q => \bar_index_reg_rep_n_1_[1]\,
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[1]__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[1]_i_1_n_1\,
      Q => bar_index(1),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[2]_i_1_n_1\,
      Q => \bar_index_reg_rep_n_1_[2]\,
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[2]_i_1_n_1\,
      Q => \^bar_index_reg_rep[3]__0_0\(0),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[2]__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[2]_i_1_n_1\,
      Q => \^bar_index_reg_rep[3]__1_1\(0),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[3]_i_3_n_1\,
      Q => \bar_index_reg_rep_n_1_[3]\,
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[3]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[3]_i_3_n_1\,
      Q => \^bar_index_reg_rep[3]__0_0\(1),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_reg_rep[3]__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \bar_index_rep[3]_i_3_n_1\,
      Q => \^bar_index_reg_rep[3]__1_1\(1),
      R => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_rep[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bar_index_reg(0),
      O => \bar_index_rep[0]_i_1_n_1\
    );
\bar_index_rep[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bar_index_reg(0),
      I1 => bar_index_reg(1),
      O => \bar_index_rep[1]_i_1_n_1\
    );
\bar_index_rep[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bar_index_reg(2),
      I1 => bar_index_reg(1),
      I2 => bar_index_reg(0),
      O => \bar_index_rep[2]_i_1_n_1\
    );
\bar_index_rep[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008880FFFF"
    )
        port map (
      I0 => \gtOp_inferred__0/i__carry__0_n_4\,
      I1 => bar_index_reg(3),
      I2 => \bar_index_rep[3]_i_5_n_1\,
      I3 => bar_index_reg(2),
      I4 => \bar_index_reg_rep[2]__0_2\,
      I5 => reset_IBUF,
      O => \bar_index_rep[3]_i_1_n_1\
    );
\bar_index_rep[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bar_index_reg(3),
      I1 => bar_index_reg(0),
      I2 => bar_index_reg(1),
      I3 => bar_index_reg(2),
      O => \bar_index_rep[3]_i_3_n_1\
    );
\bar_index_rep[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bar_index_reg(0),
      I1 => bar_index_reg(1),
      O => \bar_index_rep[3]_i_5_n_1\
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_1,
      CO(2 downto 0) => NLW_geqOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_1,
      DI(2) => geqOp_carry_i_2_n_1,
      DI(1) => geqOp_carry_i_3_n_1,
      DI(0) => \geqOp_carry__0_0\(0),
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_5_n_1,
      S(2) => geqOp_carry_i_6_n_1,
      S(1) => geqOp_carry_i_7_n_1,
      S(0) => geqOp_carry_i_8_n_1
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_1,
      CO(3 downto 1) => \NLW_geqOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => geqOp,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \R_reg[7]_0\(0)
    );
geqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000400000"
    )
        port map (
      I0 => geqOp_carry_i_9_n_1,
      I1 => \^bar_index_reg_rep[3]__0_0\(0),
      I2 => \^bar_index_reg_rep[3]__0_0\(1),
      I3 => bar_height_reg_0_15_0_4_n_6,
      I4 => Q(7),
      I5 => Q(6),
      O => geqOp_carry_i_1_n_1
    );
geqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAA388808882000"
    )
        port map (
      I0 => Q(5),
      I1 => geqOp_carry_i_9_n_1,
      I2 => \^bar_index_reg_rep[3]__0_0\(0),
      I3 => \^bar_index_reg_rep[3]__0_0\(1),
      I4 => bar_height_reg_0_15_0_4_n_6,
      I5 => Q(4),
      O => geqOp_carry_i_2_n_1
    );
geqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEA8883AAA80002"
    )
        port map (
      I0 => Q(3),
      I1 => bar_height_reg_0_15_0_4_n_4,
      I2 => \^doa\(1),
      I3 => \^doa\(0),
      I4 => bar_height_reg_0_15_0_4_n_3,
      I5 => Q(2),
      O => geqOp_carry_i_3_n_1
    );
geqOp_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF000000000040"
    )
        port map (
      I0 => bar_height_reg_0_15_0_4_n_6,
      I1 => \^bar_index_reg_rep[3]__0_0\(1),
      I2 => \^bar_index_reg_rep[3]__0_0\(0),
      I3 => geqOp_carry_i_9_n_1,
      I4 => Q(6),
      I5 => Q(7),
      O => geqOp_carry_i_5_n_1
    );
geqOp_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2842424281282828"
    )
        port map (
      I0 => Q(5),
      I1 => geqOp_carry_i_9_n_1,
      I2 => bar_height_reg_0_15_0_4_n_6,
      I3 => \^bar_index_reg_rep[3]__0_0\(1),
      I4 => \^bar_index_reg_rep[3]__0_0\(0),
      I5 => Q(4),
      O => geqOp_carry_i_6_n_1
    );
geqOp_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606066060606009"
    )
        port map (
      I0 => bar_height_reg_0_15_0_4_n_3,
      I1 => Q(3),
      I2 => bar_height_reg_0_15_0_4_n_4,
      I3 => \^doa\(1),
      I4 => \^doa\(0),
      I5 => Q(2),
      O => geqOp_carry_i_7_n_1
    );
geqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => \^doa\(1),
      I1 => Q(1),
      I2 => \^doa\(0),
      I3 => Q(0),
      O => geqOp_carry_i_8_n_1
    );
geqOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bar_height_reg_0_15_0_4_n_3,
      I1 => \^doa\(0),
      I2 => \^doa\(1),
      I3 => bar_height_reg_0_15_0_4_n_4,
      O => geqOp_carry_i_9_n_1
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_1\,
      CO(2 downto 0) => \NLW_geqOp_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \i__carry_i_1__3_n_1\,
      DI(2) => \i__carry_i_2__2_n_1\,
      DI(1) => \i__carry_i_3__4_n_1\,
      DI(0) => \geqOp_inferred__0/i__carry__0_0\(0),
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_1\,
      S(2) => \i__carry_i_6_n_1\,
      S(1 downto 0) => \geqOp_inferred__0/i__carry__0_1\(1 downto 0)
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_1\,
      CO(3 downto 1) => \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => geqOp0_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => DI(0),
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \R_reg[7]_4\(0)
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_1,
      CO(2 downto 0) => NLW_gtOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \gtOp_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \gtOp_carry__0_1\(3 downto 0)
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_1,
      CO(3 downto 1) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CO(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \bar_index_reg_rep[0]_0\(0),
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \bar_index_reg_rep[0]_1\(0)
    );
\gtOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtOp_inferred__0/i__carry_n_1\,
      CO(2 downto 0) => \NLW_gtOp_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \gtOp_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_inferred__0/i__carry__0_1\(1),
      S(2) => \i__carry_i_5__1_n_1\,
      S(1) => \i__carry_i_6__0_n_1\,
      S(0) => \gtOp_inferred__0/i__carry__0_1\(0)
    );
\gtOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_inferred__0/i__carry_n_1\,
      CO(3 downto 1) => \NLW_gtOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gtOp_inferred__0/i__carry__0_n_4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \bar_index_reg_rep[2]__0_0\(0),
      O(3 downto 0) => \NLW_gtOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \bar_index_reg_rep[2]__0_1\(0)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_8__0_n_1\,
      CO(3 downto 1) => \NLW_i__carry__0_i_3__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^plusop10\(4),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i__carry__0_i_3__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i__carry_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      O => R(8)
    );
\i__carry_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      O => R(7)
    );
\i__carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      I1 => \^bar_index_reg_rep[3]__1_1\(1),
      I2 => bar_index(1),
      O => R(6)
    );
\i__carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      I1 => \^bar_index_reg_rep[3]__1_1\(1),
      I2 => bar_index(0),
      O => R(5)
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8E888E8"
    )
        port map (
      I0 => \geqOp_inferred__0/i__carry_0\(5),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      I2 => \geqOp_inferred__0/i__carry_0\(4),
      I3 => bar_index(1),
      I4 => \^bar_index_reg_rep[3]__1_1\(1),
      O => \i__carry_i_1__3_n_1\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBA222"
    )
        port map (
      I0 => \geqOp_inferred__0/i__carry_0\(3),
      I1 => bar_index(0),
      I2 => \^bar_index_reg_rep[3]__1_1\(1),
      I3 => \^bar_index_reg_rep[3]__1_1\(0),
      I4 => \geqOp_inferred__0/i__carry_0\(2),
      O => \i__carry_i_2__2_n_1\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      I1 => \^bar_index_reg_rep[3]__1_1\(1),
      I2 => \geqOp_inferred__0/i__carry_0\(1),
      I3 => \geqOp_inferred__0/i__carry_0\(0),
      O => \i__carry_i_3__4_n_1\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26004066"
    )
        port map (
      I0 => \geqOp_inferred__0/i__carry_0\(5),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      I2 => \^bar_index_reg_rep[3]__1_1\(1),
      I3 => bar_index(1),
      I4 => \geqOp_inferred__0/i__carry_0\(4),
      O => \i__carry_i_5__0_n_1\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87000087"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      I2 => \geqOp_inferred__0/i__carry_0\(2),
      I3 => \^plusop10\(0),
      I4 => \geqOp_inferred__0/i__carry_0\(3),
      O => \i__carry_i_5__1_n_1\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15004055"
    )
        port map (
      I0 => \geqOp_inferred__0/i__carry_0\(2),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      I2 => \^bar_index_reg_rep[3]__1_1\(1),
      I3 => bar_index(0),
      I4 => \geqOp_inferred__0/i__carry_0\(3),
      O => \i__carry_i_6_n_1\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0087"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      I2 => \geqOp_inferred__0/i__carry_0\(0),
      I3 => \geqOp_inferred__0/i__carry_0\(1),
      O => \i__carry_i_6__0_n_1\
    );
\i__carry_i_8__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_8__0_n_1\,
      CO(2 downto 0) => \NLW_i__carry_i_8__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \i__carry_i_9_n_1\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^plusop10\(3 downto 0),
      S(3 downto 0) => R(8 downto 5)
    );
\i__carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      O => \i__carry_i_9_n_1\
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_1,
      CO(2 downto 0) => NLW_leqOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => leqOp_carry_i_1_n_1,
      DI(2) => leqOp_carry_i_2_n_1,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => leqOp_carry_i_3_n_1,
      S(2 downto 0) => S(2 downto 0)
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_1,
      CO(3 downto 1) => \NLW_leqOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => leqOp,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \R_reg[7]_3\(0)
    );
leqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__0_0\(0),
      I1 => \^bar_index_reg_rep[3]__0_0\(1),
      I2 => Q(7),
      I3 => Q(6),
      O => leqOp_carry_i_1_n_1
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__0_0\(0),
      I1 => \^bar_index_reg_rep[3]__0_0\(1),
      I2 => Q(5),
      I3 => Q(4),
      O => leqOp_carry_i_2_n_1
    );
leqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7008"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__0_0\(1),
      I1 => \^bar_index_reg_rep[3]__0_0\(0),
      I2 => Q(6),
      I3 => Q(7),
      O => leqOp_carry_i_3_n_1
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp,
      CO(2 downto 0) => NLW_ltOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \R_reg[7]_1\(2 downto 0),
      DI(0) => ltOp_carry_i_4_n_1,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \R_reg[7]_2\(3 downto 0)
    );
ltOp_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_i_10_n_1,
      CO(2 downto 0) => NLW_ltOp_carry_i_10_CO_UNCONNECTED(2 downto 0),
      CYINIT => \^bar_index_reg_rep[3]__1_0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \^plusop13\(4 downto 2),
      O(0) => NLW_ltOp_carry_i_10_O_UNCONNECTED(0),
      S(3) => ltOp_carry_i_12_n_1,
      S(2) => ltOp_carry_i_13_n_1,
      S(1) => ltOp_carry_i_14_n_1,
      S(0) => '1'
    );
ltOp_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      O => ltOp_carry_i_11_n_1
    );
ltOp_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      O => ltOp_carry_i_12_n_1
    );
ltOp_carry_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      I1 => \^bar_index_reg_rep[3]__1_1\(1),
      I2 => bar_index(1),
      O => ltOp_carry_i_13_n_1
    );
ltOp_carry_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      I1 => \^bar_index_reg_rep[3]__1_1\(1),
      I2 => bar_index(0),
      O => ltOp_carry_i_14_n_1
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^plusop13\(0),
      I1 => \geqOp_inferred__0/i__carry_0\(0),
      I2 => \geqOp_inferred__0/i__carry_0\(1),
      I3 => \^plusop13\(1),
      O => ltOp_carry_i_4_n_1
    );
ltOp_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_i_10_n_1,
      CO(3 downto 2) => NLW_ltOp_carry_i_9_CO_UNCONNECTED(3 downto 2),
      CO(1) => \^plusop13\(6),
      CO(0) => NLW_ltOp_carry_i_9_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_ltOp_carry_i_9_O_UNCONNECTED(3 downto 1),
      O(0) => \^plusop13\(5),
      S(3 downto 1) => B"001",
      S(0) => ltOp_carry_i_11_n_1
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^bar_index_reg_rep[3]__1_0\(0),
      CO(2 downto 0) => NLW_plusOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => plusOp_carry_i_1_n_1,
      DI(0) => '0',
      O(3) => NLW_plusOp_carry_O_UNCONNECTED(3),
      O(2 downto 1) => \^plusop13\(1 downto 0),
      O(0) => NLW_plusOp_carry_O_UNCONNECTED(0),
      S(3) => '1',
      S(2) => plusOp_carry_i_2_n_1,
      S(1) => plusOp_carry_i_3_n_1,
      S(0) => '0'
    );
plusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      O => plusOp_carry_i_1_n_1
    );
plusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(1),
      I1 => \^bar_index_reg_rep[3]__1_1\(0),
      O => plusOp_carry_i_2_n_1
    );
plusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bar_index_reg_rep[3]__1_1\(0),
      I1 => \^bar_index_reg_rep[3]__1_1\(1),
      O => plusOp_carry_i_3_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Video_top is
  port (
    RGB_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmp_clk_reg : out STD_LOGIC;
    Hsync_OBUF : out STD_LOGIC;
    Vsync_OBUF : out STD_LOGIC;
    CLK : in STD_LOGIC;
    geqOp_carry_i_6 : in STD_LOGIC;
    mag_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset_IBUF : in STD_LOGIC;
    clk_100_IBUF_BUFG : in STD_LOGIC;
    Hsync_OBUF_BUFG : in STD_LOGIC;
    B_switch_IBUF : in STD_LOGIC;
    G_switch_IBUF : in STD_LOGIC;
    R_switch_IBUF : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : out STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC;
    lopt_8 : out STD_LOGIC;
    lopt_9 : out STD_LOGIC;
    lopt_10 : out STD_LOGIC;
    lopt_11 : out STD_LOGIC;
    lopt_12 : out STD_LOGIC;
    lopt_13 : out STD_LOGIC;
    lopt_14 : out STD_LOGIC;
    lopt_15 : out STD_LOGIC;
    lopt_16 : out STD_LOGIC;
    lopt_17 : out STD_LOGIC;
    lopt_18 : out STD_LOGIC;
    lopt_19 : out STD_LOGIC;
    lopt_20 : out STD_LOGIC;
    lopt_21 : out STD_LOGIC;
    lopt_22 : out STD_LOGIC;
    lopt_23 : out STD_LOGIC
  );
end Video_top;

architecture STRUCTURE of Video_top is
  signal VGA_timings_n_15 : STD_LOGIC;
  signal VGA_timings_n_23 : STD_LOGIC;
  signal VGA_timings_n_24 : STD_LOGIC;
  signal VGA_timings_n_26 : STD_LOGIC;
  signal VGA_timings_n_27 : STD_LOGIC;
  signal VGA_timings_n_28 : STD_LOGIC;
  signal VGA_timings_n_29 : STD_LOGIC;
  signal VGA_timings_n_3 : STD_LOGIC;
  signal VGA_timings_n_30 : STD_LOGIC;
  signal VGA_timings_n_31 : STD_LOGIC;
  signal VGA_timings_n_32 : STD_LOGIC;
  signal VGA_timings_n_33 : STD_LOGIC;
  signal VGA_timings_n_34 : STD_LOGIC;
  signal VGA_timings_n_35 : STD_LOGIC;
  signal VGA_timings_n_36 : STD_LOGIC;
  signal VGA_timings_n_37 : STD_LOGIC;
  signal VGA_timings_n_38 : STD_LOGIC;
  signal VGA_timings_n_39 : STD_LOGIC;
  signal VGA_timings_n_4 : STD_LOGIC;
  signal VGA_timings_n_40 : STD_LOGIC;
  signal VGA_timings_n_41 : STD_LOGIC;
  signal VGA_timings_n_42 : STD_LOGIC;
  signal VGA_timings_n_43 : STD_LOGIC;
  signal VGA_timings_n_44 : STD_LOGIC;
  signal VGA_timings_n_45 : STD_LOGIC;
  signal VGA_timings_n_46 : STD_LOGIC;
  signal VGA_timings_n_47 : STD_LOGIC;
  signal VGA_timings_n_48 : STD_LOGIC;
  signal VGA_timings_n_49 : STD_LOGIC;
  signal VGA_timings_n_5 : STD_LOGIC;
  signal VGA_timings_n_50 : STD_LOGIC;
  signal VGA_timings_n_51 : STD_LOGIC;
  signal VGA_timings_n_52 : STD_LOGIC;
  signal VGA_timings_n_53 : STD_LOGIC;
  signal VGA_timings_n_54 : STD_LOGIC;
  signal VGA_timings_n_55 : STD_LOGIC;
  signal Video_output_n_1 : STD_LOGIC;
  signal Video_output_n_15 : STD_LOGIC;
  signal Video_output_n_16 : STD_LOGIC;
  signal Video_output_n_2 : STD_LOGIC;
  signal Video_output_n_6 : STD_LOGIC;
  signal bar_index : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal bar_index0 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal plusOp10 : STD_LOGIC_VECTOR ( 9 downto 5 );
  signal plusOp13 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal x_cord : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal y_cord : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_Video_output_lopt_15_UNCONNECTED : STD_LOGIC;
  signal NLW_Video_output_lopt_23_UNCONNECTED : STD_LOGIC;
  signal NLW_Video_output_lopt_7_UNCONNECTED : STD_LOGIC;
begin
  lopt_15 <= 'Z';
  lopt_23 <= 'Z';
  lopt_7 <= 'Z';
VGA_timings: entity work.VGA
     port map (
      CLK => CLK,
      CO(0) => gtOp,
      DI(0) => VGA_timings_n_15,
      DOA(1) => Video_output_n_1,
      DOA(0) => Video_output_n_2,
      E(0) => bar_index0,
      Hsync_OBUF => Hsync_OBUF,
      Hsync_OBUF_BUFG => Hsync_OBUF_BUFG,
      Q(8 downto 0) => y_cord(8 downto 0),
      S(2) => VGA_timings_n_3,
      S(1) => VGA_timings_n_4,
      S(0) => VGA_timings_n_5,
      Vactive_reg_0 => VGA_timings_n_24,
      Vsync_OBUF => Vsync_OBUF,
      \Xpos_reg[6]_0\(1) => VGA_timings_n_45,
      \Xpos_reg[6]_0\(0) => VGA_timings_n_46,
      \Xpos_reg[7]_0\(3) => VGA_timings_n_27,
      \Xpos_reg[7]_0\(2) => VGA_timings_n_28,
      \Xpos_reg[7]_0\(1) => VGA_timings_n_29,
      \Xpos_reg[7]_0\(0) => VGA_timings_n_30,
      \Xpos_reg[7]_1\(3) => VGA_timings_n_31,
      \Xpos_reg[7]_1\(2) => VGA_timings_n_32,
      \Xpos_reg[7]_1\(1) => VGA_timings_n_33,
      \Xpos_reg[7]_1\(0) => VGA_timings_n_34,
      \Xpos_reg[8]_0\(0) => VGA_timings_n_47,
      \Xpos_reg[9]_0\(0) => VGA_timings_n_38,
      \Xpos_reg[9]_1\(0) => VGA_timings_n_39,
      \Xpos_reg[9]_2\(3) => VGA_timings_n_51,
      \Xpos_reg[9]_2\(2) => VGA_timings_n_52,
      \Xpos_reg[9]_2\(1) => VGA_timings_n_53,
      \Xpos_reg[9]_2\(0) => VGA_timings_n_54,
      \Ypos_reg[8]_0\(0) => VGA_timings_n_49,
      \Ypos_reg[8]_1\(0) => VGA_timings_n_50,
      \bar_index_reg_rep[3]\(0) => VGA_timings_n_26,
      \bar_index_reg_rep[3]__1\(0) => VGA_timings_n_23,
      \bar_index_reg_rep[3]__1_0\(1) => VGA_timings_n_40,
      \bar_index_reg_rep[3]__1_0\(0) => VGA_timings_n_41,
      \gtOp_inferred__0/i__carry\(1 downto 0) => bar_index(3 downto 2),
      \hPos_reg[0]_0\(0) => VGA_timings_n_55,
      \hPos_reg[7]_0\(6 downto 0) => x_cord(7 downto 1),
      \i__carry_i_8__0\(2) => VGA_timings_n_42,
      \i__carry_i_8__0\(1) => VGA_timings_n_43,
      \i__carry_i_8__0\(0) => VGA_timings_n_44,
      \i__carry_i_8__0_0\(0) => VGA_timings_n_48,
      leqOp_carry(1) => Video_output_n_15,
      leqOp_carry(0) => Video_output_n_16,
      ltOp_carry(0) => Video_output_n_6,
      ltOp_carry_i_9(2) => VGA_timings_n_35,
      ltOp_carry_i_9(1) => VGA_timings_n_36,
      ltOp_carry_i_9(0) => VGA_timings_n_37,
      plusOp10(4 downto 0) => plusOp10(9 downto 5),
      plusOp13(6 downto 2) => plusOp13(9 downto 5),
      plusOp13(1 downto 0) => plusOp13(3 downto 2),
      reset_IBUF => reset_IBUF
    );
Video_output: entity work.pattern_generator
     port map (
      B_switch_IBUF => B_switch_IBUF,
      CLK => CLK,
      CO(0) => gtOp,
      DI(0) => VGA_timings_n_15,
      DOA(1) => Video_output_n_1,
      DOA(0) => Video_output_n_2,
      E(0) => bar_index0,
      G_switch_IBUF => G_switch_IBUF,
      Q(8 downto 0) => y_cord(8 downto 0),
      RGB_OBUF(2 downto 0) => RGB_OBUF(2 downto 0),
      \R_reg[7]_0\(0) => VGA_timings_n_50,
      \R_reg[7]_1\(2) => VGA_timings_n_35,
      \R_reg[7]_1\(1) => VGA_timings_n_36,
      \R_reg[7]_1\(0) => VGA_timings_n_37,
      \R_reg[7]_2\(3) => VGA_timings_n_51,
      \R_reg[7]_2\(2) => VGA_timings_n_52,
      \R_reg[7]_2\(1) => VGA_timings_n_53,
      \R_reg[7]_2\(0) => VGA_timings_n_54,
      \R_reg[7]_3\(0) => VGA_timings_n_49,
      \R_reg[7]_4\(0) => VGA_timings_n_23,
      R_switch_IBUF => R_switch_IBUF,
      S(2) => VGA_timings_n_3,
      S(1) => VGA_timings_n_4,
      S(0) => VGA_timings_n_5,
      \bar_index_reg_rep[0]_0\(0) => VGA_timings_n_39,
      \bar_index_reg_rep[0]_1\(0) => VGA_timings_n_38,
      \bar_index_reg_rep[2]__0_0\(0) => VGA_timings_n_48,
      \bar_index_reg_rep[2]__0_1\(0) => VGA_timings_n_47,
      \bar_index_reg_rep[2]__0_2\ => VGA_timings_n_24,
      \bar_index_reg_rep[3]__0_0\(1) => Video_output_n_15,
      \bar_index_reg_rep[3]__0_0\(0) => Video_output_n_16,
      \bar_index_reg_rep[3]__1_0\(0) => Video_output_n_6,
      \bar_index_reg_rep[3]__1_1\(1 downto 0) => bar_index(3 downto 2),
      \geqOp_carry__0_0\(0) => VGA_timings_n_26,
      geqOp_carry_i_6_0 => geqOp_carry_i_6,
      \geqOp_inferred__0/i__carry_0\(5 downto 0) => x_cord(7 downto 2),
      \geqOp_inferred__0/i__carry__0_0\(0) => VGA_timings_n_55,
      \geqOp_inferred__0/i__carry__0_1\(1) => VGA_timings_n_40,
      \geqOp_inferred__0/i__carry__0_1\(0) => VGA_timings_n_41,
      \gtOp_carry__0_0\(3) => VGA_timings_n_31,
      \gtOp_carry__0_0\(2) => VGA_timings_n_32,
      \gtOp_carry__0_0\(1) => VGA_timings_n_33,
      \gtOp_carry__0_0\(0) => VGA_timings_n_34,
      \gtOp_carry__0_1\(3) => VGA_timings_n_27,
      \gtOp_carry__0_1\(2) => VGA_timings_n_28,
      \gtOp_carry__0_1\(1) => VGA_timings_n_29,
      \gtOp_carry__0_1\(0) => VGA_timings_n_30,
      \gtOp_inferred__0/i__carry__0_0\(3) => VGA_timings_n_42,
      \gtOp_inferred__0/i__carry__0_0\(2) => VGA_timings_n_43,
      \gtOp_inferred__0/i__carry__0_0\(1) => VGA_timings_n_44,
      \gtOp_inferred__0/i__carry__0_0\(0) => x_cord(1),
      \gtOp_inferred__0/i__carry__0_1\(1) => VGA_timings_n_45,
      \gtOp_inferred__0/i__carry__0_1\(0) => VGA_timings_n_46,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_10 => lopt_10,
      lopt_11 => lopt_11,
      lopt_12 => lopt_12,
      lopt_13 => lopt_13,
      lopt_14 => lopt_14,
      lopt_15 => NLW_Video_output_lopt_15_UNCONNECTED,
      lopt_16 => lopt_16,
      lopt_17 => lopt_17,
      lopt_18 => lopt_18,
      lopt_19 => lopt_19,
      lopt_2 => lopt_2,
      lopt_20 => lopt_20,
      lopt_21 => lopt_21,
      lopt_22 => lopt_22,
      lopt_23 => NLW_Video_output_lopt_23_UNCONNECTED,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      lopt_7 => NLW_Video_output_lopt_7_UNCONNECTED,
      lopt_8 => lopt_8,
      lopt_9 => lopt_9,
      mag_in(4 downto 0) => mag_in(4 downto 0),
      plusOp10(4 downto 0) => plusOp10(9 downto 5),
      plusOp13(6 downto 2) => plusOp13(9 downto 5),
      plusOp13(1 downto 0) => plusOp13(3 downto 2),
      reset_IBUF => reset_IBUF
    );
clk_div_100_25: entity work.clk_div
     port map (
      clk_100_IBUF_BUFG => clk_100_IBUF_BUFG,
      reset_IBUF => reset_IBUF,
      tmp_clk_reg_0 => tmp_clk_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i2c is
  port (
    AC_SCK : out STD_LOGIC;
    T : out STD_LOGIC;
    CLK_48 : in STD_LOGIC;
    i2c_sda_i : in STD_LOGIC
  );
end i2c;

architecture STRUCTURE of i2c is
  signal Inst_adau1761_configuraiton_data_n_10 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_11 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_12 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_13 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_14 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_15 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_16 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_17 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_18 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_19 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_20 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_21 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_22 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_23 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_24 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_25 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_26 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_27 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_28 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_29 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_30 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_31 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_32 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_33 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_34 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_35 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_36 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_37 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_38 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_39 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_40 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_41 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_42 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_43 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_44 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_45 : STD_LOGIC;
  signal Inst_adau1761_configuraiton_data_n_46 : STD_LOGIC;
  signal Inst_i3c2_n_10 : STD_LOGIC;
  signal Inst_i3c2_n_11 : STD_LOGIC;
  signal Inst_i3c2_n_12 : STD_LOGIC;
  signal Inst_i3c2_n_13 : STD_LOGIC;
  signal Inst_i3c2_n_14 : STD_LOGIC;
  signal Inst_i3c2_n_15 : STD_LOGIC;
  signal Inst_i3c2_n_16 : STD_LOGIC;
  signal Inst_i3c2_n_17 : STD_LOGIC;
  signal Inst_i3c2_n_18 : STD_LOGIC;
  signal Inst_i3c2_n_19 : STD_LOGIC;
  signal Inst_i3c2_n_20 : STD_LOGIC;
  signal Inst_i3c2_n_21 : STD_LOGIC;
  signal Inst_i3c2_n_22 : STD_LOGIC;
  signal Inst_i3c2_n_23 : STD_LOGIC;
  signal Inst_i3c2_n_24 : STD_LOGIC;
  signal Inst_i3c2_n_25 : STD_LOGIC;
  signal Inst_i3c2_n_26 : STD_LOGIC;
  signal Inst_i3c2_n_27 : STD_LOGIC;
  signal Inst_i3c2_n_28 : STD_LOGIC;
  signal Inst_i3c2_n_29 : STD_LOGIC;
  signal Inst_i3c2_n_3 : STD_LOGIC;
  signal Inst_i3c2_n_30 : STD_LOGIC;
  signal Inst_i3c2_n_31 : STD_LOGIC;
  signal Inst_i3c2_n_32 : STD_LOGIC;
  signal Inst_i3c2_n_33 : STD_LOGIC;
  signal Inst_i3c2_n_34 : STD_LOGIC;
  signal Inst_i3c2_n_35 : STD_LOGIC;
  signal Inst_i3c2_n_36 : STD_LOGIC;
  signal Inst_i3c2_n_37 : STD_LOGIC;
  signal Inst_i3c2_n_38 : STD_LOGIC;
  signal Inst_i3c2_n_39 : STD_LOGIC;
  signal Inst_i3c2_n_40 : STD_LOGIC;
  signal Inst_i3c2_n_41 : STD_LOGIC;
  signal Inst_i3c2_n_42 : STD_LOGIC;
  signal Inst_i3c2_n_43 : STD_LOGIC;
  signal Inst_i3c2_n_44 : STD_LOGIC;
  signal Inst_i3c2_n_45 : STD_LOGIC;
  signal Inst_i3c2_n_5 : STD_LOGIC;
  signal Inst_i3c2_n_6 : STD_LOGIC;
  signal Inst_i3c2_n_7 : STD_LOGIC;
  signal Inst_i3c2_n_8 : STD_LOGIC;
  signal ack_flag : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 0 to 0 );
  signal inst_data : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pwropt : STD_LOGIC;
begin
Inst_adau1761_configuraiton_data: entity work.adau1761_configuraiton_data
     port map (
      CLK_48 => CLK_48,
      D(15) => Inst_adau1761_configuraiton_data_n_19,
      D(14) => Inst_adau1761_configuraiton_data_n_20,
      D(13) => Inst_adau1761_configuraiton_data_n_21,
      D(12) => Inst_adau1761_configuraiton_data_n_22,
      D(11) => Inst_adau1761_configuraiton_data_n_23,
      D(10) => Inst_adau1761_configuraiton_data_n_24,
      D(9) => Inst_adau1761_configuraiton_data_n_25,
      D(8) => Inst_adau1761_configuraiton_data_n_26,
      D(7) => Inst_adau1761_configuraiton_data_n_27,
      D(6) => Inst_adau1761_configuraiton_data_n_28,
      D(5) => Inst_adau1761_configuraiton_data_n_29,
      D(4) => Inst_adau1761_configuraiton_data_n_30,
      D(3) => Inst_adau1761_configuraiton_data_n_31,
      D(2) => Inst_adau1761_configuraiton_data_n_32,
      D(1) => Inst_adau1761_configuraiton_data_n_33,
      D(0) => Inst_adau1761_configuraiton_data_n_34,
      DOADO(8 downto 0) => inst_data(8 downto 0),
      O(3) => Inst_i3c2_n_5,
      O(2) => Inst_i3c2_n_6,
      O(1) => Inst_i3c2_n_7,
      O(0) => Inst_i3c2_n_8,
      Q(9) => Inst_i3c2_n_31,
      Q(8) => Inst_i3c2_n_32,
      Q(7) => Inst_i3c2_n_33,
      Q(6) => Inst_i3c2_n_34,
      Q(5) => Inst_i3c2_n_35,
      Q(4) => Inst_i3c2_n_36,
      Q(3) => Inst_i3c2_n_37,
      Q(2) => Inst_i3c2_n_38,
      Q(1) => Inst_i3c2_n_39,
      Q(0) => Inst_i3c2_n_40,
      ack_flag => ack_flag,
      \bitcount_reg[0]\ => Inst_i3c2_n_28,
      data_reg_0 => Inst_adau1761_configuraiton_data_n_10,
      data_reg_1 => Inst_adau1761_configuraiton_data_n_12,
      data_reg_10 => Inst_adau1761_configuraiton_data_n_43,
      data_reg_11 => Inst_adau1761_configuraiton_data_n_44,
      data_reg_12 => Inst_adau1761_configuraiton_data_n_45,
      data_reg_2 => Inst_adau1761_configuraiton_data_n_13,
      data_reg_3 => Inst_adau1761_configuraiton_data_n_15,
      data_reg_4 => Inst_adau1761_configuraiton_data_n_16,
      data_reg_5 => Inst_adau1761_configuraiton_data_n_17,
      data_reg_6 => Inst_adau1761_configuraiton_data_n_18,
      data_reg_7 => Inst_adau1761_configuraiton_data_n_35,
      data_reg_8(5) => Inst_adau1761_configuraiton_data_n_36,
      data_reg_8(4) => Inst_adau1761_configuraiton_data_n_37,
      data_reg_8(3) => Inst_adau1761_configuraiton_data_n_38,
      data_reg_8(2) => Inst_adau1761_configuraiton_data_n_39,
      data_reg_8(1) => Inst_adau1761_configuraiton_data_n_40,
      data_reg_8(0) => Inst_adau1761_configuraiton_data_n_41,
      data_reg_9 => Inst_adau1761_configuraiton_data_n_42,
      \delay_reg[0]\(0) => delay(0),
      \delay_reg[12]\(3) => Inst_i3c2_n_14,
      \delay_reg[12]\(2) => Inst_i3c2_n_15,
      \delay_reg[12]\(1) => Inst_i3c2_n_16,
      \delay_reg[12]\(0) => Inst_i3c2_n_17,
      \delay_reg[15]\(2) => Inst_i3c2_n_18,
      \delay_reg[15]\(1) => Inst_i3c2_n_19,
      \delay_reg[15]\(0) => Inst_i3c2_n_20,
      \delay_reg[8]\(3) => Inst_i3c2_n_10,
      \delay_reg[8]\(2) => Inst_i3c2_n_11,
      \delay_reg[8]\(1) => Inst_i3c2_n_12,
      \delay_reg[8]\(0) => Inst_i3c2_n_13,
      \i2c_data_reg[0]\ => Inst_i3c2_n_27,
      \i2c_data_reg[1]\ => Inst_i3c2_n_30,
      \i2c_data_reg[3]\ => Inst_i3c2_n_29,
      \i2c_data_reg[8]\(4) => Inst_i3c2_n_41,
      \i2c_data_reg[8]\(3) => Inst_i3c2_n_42,
      \i2c_data_reg[8]\(2) => Inst_i3c2_n_43,
      \i2c_data_reg[8]\(1) => Inst_i3c2_n_44,
      \i2c_data_reg[8]\(0) => Inst_i3c2_n_45,
      pwropt => pwropt,
      skip_i_4_0(2) => Inst_i3c2_n_21,
      skip_i_4_0(1) => Inst_i3c2_n_22,
      skip_i_4_0(0) => Inst_i3c2_n_23,
      skip_reg => Inst_adau1761_configuraiton_data_n_11,
      skip_reg_0 => Inst_adau1761_configuraiton_data_n_14,
      skip_reg_1 => Inst_i3c2_n_25,
      skip_reg_2 => Inst_i3c2_n_3,
      skip_reg_3 => Inst_i3c2_n_26,
      skip_reg_4 => Inst_i3c2_n_24,
      \state_reg[0]\ => Inst_adau1761_configuraiton_data_n_46
    );
Inst_i3c2: entity work.i3c2
     port map (
      AC_SCK => AC_SCK,
      CLK_48 => CLK_48,
      D(5) => Inst_adau1761_configuraiton_data_n_36,
      D(4) => Inst_adau1761_configuraiton_data_n_37,
      D(3) => Inst_adau1761_configuraiton_data_n_38,
      D(2) => Inst_adau1761_configuraiton_data_n_39,
      D(1) => Inst_adau1761_configuraiton_data_n_40,
      D(0) => Inst_adau1761_configuraiton_data_n_41,
      DOADO(8 downto 0) => inst_data(8 downto 0),
      O(3) => Inst_i3c2_n_5,
      O(2) => Inst_i3c2_n_6,
      O(1) => Inst_i3c2_n_7,
      O(0) => Inst_i3c2_n_8,
      Q(0) => delay(0),
      T => T,
      ack_flag => ack_flag,
      \bitcount_reg[0]_0\ => Inst_adau1761_configuraiton_data_n_14,
      \delay_reg[0]_0\ => Inst_adau1761_configuraiton_data_n_17,
      \delay_reg[12]_0\(3) => Inst_i3c2_n_14,
      \delay_reg[12]_0\(2) => Inst_i3c2_n_15,
      \delay_reg[12]_0\(1) => Inst_i3c2_n_16,
      \delay_reg[12]_0\(0) => Inst_i3c2_n_17,
      \delay_reg[14]_0\(2) => Inst_i3c2_n_18,
      \delay_reg[14]_0\(1) => Inst_i3c2_n_19,
      \delay_reg[14]_0\(0) => Inst_i3c2_n_20,
      \delay_reg[15]_0\(15) => Inst_adau1761_configuraiton_data_n_19,
      \delay_reg[15]_0\(14) => Inst_adau1761_configuraiton_data_n_20,
      \delay_reg[15]_0\(13) => Inst_adau1761_configuraiton_data_n_21,
      \delay_reg[15]_0\(12) => Inst_adau1761_configuraiton_data_n_22,
      \delay_reg[15]_0\(11) => Inst_adau1761_configuraiton_data_n_23,
      \delay_reg[15]_0\(10) => Inst_adau1761_configuraiton_data_n_24,
      \delay_reg[15]_0\(9) => Inst_adau1761_configuraiton_data_n_25,
      \delay_reg[15]_0\(8) => Inst_adau1761_configuraiton_data_n_26,
      \delay_reg[15]_0\(7) => Inst_adau1761_configuraiton_data_n_27,
      \delay_reg[15]_0\(6) => Inst_adau1761_configuraiton_data_n_28,
      \delay_reg[15]_0\(5) => Inst_adau1761_configuraiton_data_n_29,
      \delay_reg[15]_0\(4) => Inst_adau1761_configuraiton_data_n_30,
      \delay_reg[15]_0\(3) => Inst_adau1761_configuraiton_data_n_31,
      \delay_reg[15]_0\(2) => Inst_adau1761_configuraiton_data_n_32,
      \delay_reg[15]_0\(1) => Inst_adau1761_configuraiton_data_n_33,
      \delay_reg[15]_0\(0) => Inst_adau1761_configuraiton_data_n_34,
      \delay_reg[8]_0\(3) => Inst_i3c2_n_10,
      \delay_reg[8]_0\(2) => Inst_i3c2_n_11,
      \delay_reg[8]_0\(1) => Inst_i3c2_n_12,
      \delay_reg[8]_0\(0) => Inst_i3c2_n_13,
      \i2c_data_reg[0]_0\ => Inst_i3c2_n_30,
      \i2c_data_reg[0]_1\ => Inst_adau1761_configuraiton_data_n_11,
      \i2c_data_reg[5]_0\ => Inst_adau1761_configuraiton_data_n_43,
      \i2c_data_reg[7]_0\(4) => Inst_i3c2_n_41,
      \i2c_data_reg[7]_0\(3) => Inst_i3c2_n_42,
      \i2c_data_reg[7]_0\(2) => Inst_i3c2_n_43,
      \i2c_data_reg[7]_0\(1) => Inst_i3c2_n_44,
      \i2c_data_reg[7]_0\(0) => Inst_i3c2_n_45,
      \i2c_data_reg[7]_1\ => Inst_adau1761_configuraiton_data_n_44,
      i2c_sda_i => i2c_sda_i,
      \pcnext_reg_rep[0]_0\ => Inst_adau1761_configuraiton_data_n_13,
      \pcnext_reg_rep[9]_0\(9) => Inst_i3c2_n_31,
      \pcnext_reg_rep[9]_0\(8) => Inst_i3c2_n_32,
      \pcnext_reg_rep[9]_0\(7) => Inst_i3c2_n_33,
      \pcnext_reg_rep[9]_0\(6) => Inst_i3c2_n_34,
      \pcnext_reg_rep[9]_0\(5) => Inst_i3c2_n_35,
      \pcnext_reg_rep[9]_0\(4) => Inst_i3c2_n_36,
      \pcnext_reg_rep[9]_0\(3) => Inst_i3c2_n_37,
      \pcnext_reg_rep[9]_0\(2) => Inst_i3c2_n_38,
      \pcnext_reg_rep[9]_0\(1) => Inst_i3c2_n_39,
      \pcnext_reg_rep[9]_0\(0) => Inst_i3c2_n_40,
      \pcnext_reg_rep[9]_1\ => Inst_adau1761_configuraiton_data_n_45,
      pwropt => pwropt,
      skip_reg_0 => Inst_i3c2_n_3,
      skip_reg_1 => Inst_i3c2_n_26,
      skip_reg_2 => Inst_adau1761_configuraiton_data_n_10,
      \state_reg[0]_0\ => Inst_i3c2_n_29,
      \state_reg[0]_1\ => Inst_adau1761_configuraiton_data_n_16,
      \state_reg[0]_2\ => Inst_adau1761_configuraiton_data_n_46,
      \state_reg[0]_3\ => Inst_adau1761_configuraiton_data_n_12,
      \state_reg[0]_4\ => Inst_adau1761_configuraiton_data_n_18,
      \state_reg[1]_0\ => Inst_i3c2_n_24,
      \state_reg[1]_1\ => Inst_i3c2_n_27,
      \state_reg[1]_2\ => Inst_adau1761_configuraiton_data_n_15,
      \state_reg[2]_0\(2) => Inst_i3c2_n_21,
      \state_reg[2]_0\(1) => Inst_i3c2_n_22,
      \state_reg[2]_0\(0) => Inst_i3c2_n_23,
      \state_reg[2]_1\ => Inst_i3c2_n_25,
      \state_reg[2]_2\ => Inst_adau1761_configuraiton_data_n_35,
      \state_reg[2]_3\ => Inst_adau1761_configuraiton_data_n_42,
      \state_reg[3]_0\ => Inst_i3c2_n_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adau1761_izedboard is
  port (
    AC_SCK : out STD_LOGIC;
    i2s_lr_last_reg : out STD_LOGIC;
    AC_GPIO0 : out STD_LOGIC;
    \sr_out_reg[62]\ : out STD_LOGIC_VECTOR ( 46 downto 0 );
    AC_MCLK : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \audio_r_out_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    AC_SDA : inout STD_LOGIC;
    CLK_48 : in STD_LOGIC;
    AC_GPIO3_IBUF : in STD_LOGIC;
    AC_GPIO1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sr_out_reg[63]\ : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end adau1761_izedboard;

architecture STRUCTURE of adau1761_izedboard is
  signal T : STD_LOGIC;
  signal i2c_sda_i : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of i_i2s_sda_obuf : label is "PRIMITIVE";
begin
Inst_i2c: entity work.i2c
     port map (
      AC_SCK => AC_SCK,
      CLK_48 => CLK_48,
      T => T,
      i2c_sda_i => i2c_sda_i
    );
Inst_i2s_data_interface: entity work.i2s_data_interface
     port map (
      AC_GPIO0 => AC_GPIO0,
      AC_GPIO1 => AC_GPIO1,
      AC_GPIO3_IBUF => AC_GPIO3_IBUF,
      CLK_48 => CLK_48,
      D(0) => D(0),
      Q(23 downto 0) => Q(23 downto 0),
      \audio_r_out_reg[23]_0\(23 downto 0) => \audio_r_out_reg[23]\(23 downto 0),
      i2s_lr_last_reg_0 => i2s_lr_last_reg,
      \sr_out_reg[62]_0\(46 downto 0) => \sr_out_reg[62]\(46 downto 0),
      \sr_out_reg[63]_0\(47 downto 0) => \sr_out_reg[63]\(47 downto 0)
    );
i_ADAU1761_interface: entity work.ADAU1761_interface
     port map (
      AC_MCLK => AC_MCLK,
      CLK_48 => CLK_48
    );
i_i2s_sda_obuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '0',
      IO => AC_SDA,
      O => i2c_sda_i,
      T => T
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_top is
  port (
    new_sample_reg_0 : out STD_LOGIC;
    new_sample : out STD_LOGIC;
    AC_SCK : out STD_LOGIC;
    AC_GPIO0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    line_in_r : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sample_clk_48k : out STD_LOGIC;
    AC_MCLK : out STD_LOGIC;
    AC_SDA : inout STD_LOGIC;
    AC_GPIO3_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \hphone_r_freeze_100_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \hphone_l_freeze_100_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    AC_GPIO1 : in STD_LOGIC
  );
end audio_top;

architecture STRUCTURE of audio_top is
  signal Inst_adau1761_izedboard_n_2 : STD_LOGIC;
  signal audio_l_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal audio_r_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal clk_48 : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[0]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[10]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[11]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[12]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[13]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[14]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[15]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[16]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[17]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[18]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[19]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[1]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[20]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[21]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[22]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[23]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[2]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[3]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[4]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[5]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[6]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[7]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[8]\ : STD_LOGIC;
  signal \hphone_l_freeze_100_reg_n_1_[9]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[0]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[10]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[11]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[12]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[13]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[14]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[15]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[16]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[17]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[18]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[19]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[1]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[20]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[21]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[22]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[23]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[2]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[3]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[4]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[5]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[6]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[7]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[8]\ : STD_LOGIC;
  signal \hphone_r_freeze_100_reg_n_1_[9]\ : STD_LOGIC;
  signal \^new_sample\ : STD_LOGIC;
  signal new_sample_100 : STD_LOGIC;
  signal new_sample_100_i_1_n_1 : STD_LOGIC;
  signal sample_clk_48k_d2_48_reg_srl2_n_1 : STD_LOGIC;
  signal sample_clk_48k_d3_48 : STD_LOGIC;
  signal sample_clk_48k_d4_100 : STD_LOGIC;
  signal sample_clk_48k_d5_100 : STD_LOGIC;
  signal sample_clk_48k_d6_100 : STD_LOGIC;
  signal sr_out : STD_LOGIC_VECTOR ( 62 downto 8 );
  signal \sr_out[10]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[11]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[12]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[13]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[14]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[15]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[16]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[17]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[18]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[19]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[20]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[21]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[22]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[23]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[24]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[25]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[26]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[27]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[28]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[29]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[30]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[31]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[40]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[41]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[42]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[43]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[44]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[45]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[46]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[47]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[48]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[49]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[50]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[51]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[52]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[53]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[54]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[55]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[56]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[57]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[58]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[59]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[60]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[61]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[62]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[63]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[8]_i_1_n_1\ : STD_LOGIC;
  signal \sr_out[9]_i_1_n_1\ : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of sample_clk_48k_d2_48_reg_srl2 : label is "\Audio/sample_clk_48k_d2_48_reg_srl2 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sr_out[40]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sr_out[8]_i_1\ : label is "soft_lutpair26";
begin
  new_sample <= \^new_sample\;
  sample_clk_48k <= 'Z';
Inst_adau1761_izedboard: entity work.adau1761_izedboard
     port map (
      AC_GPIO0 => AC_GPIO0,
      AC_GPIO1 => AC_GPIO1,
      AC_GPIO3_IBUF => AC_GPIO3_IBUF,
      AC_MCLK => AC_MCLK,
      AC_SCK => AC_SCK,
      AC_SDA => AC_SDA,
      CLK_48 => clk_48,
      D(0) => D(0),
      Q(23 downto 0) => audio_l_out(23 downto 0),
      \audio_r_out_reg[23]\(23 downto 0) => audio_r_out(23 downto 0),
      i2s_lr_last_reg => Inst_adau1761_izedboard_n_2,
      \sr_out_reg[62]\(46 downto 23) => sr_out(62 downto 39),
      \sr_out_reg[62]\(22 downto 0) => sr_out(30 downto 8),
      \sr_out_reg[63]\(47) => \sr_out[63]_i_1_n_1\,
      \sr_out_reg[63]\(46) => \sr_out[62]_i_1_n_1\,
      \sr_out_reg[63]\(45) => \sr_out[61]_i_1_n_1\,
      \sr_out_reg[63]\(44) => \sr_out[60]_i_1_n_1\,
      \sr_out_reg[63]\(43) => \sr_out[59]_i_1_n_1\,
      \sr_out_reg[63]\(42) => \sr_out[58]_i_1_n_1\,
      \sr_out_reg[63]\(41) => \sr_out[57]_i_1_n_1\,
      \sr_out_reg[63]\(40) => \sr_out[56]_i_1_n_1\,
      \sr_out_reg[63]\(39) => \sr_out[55]_i_1_n_1\,
      \sr_out_reg[63]\(38) => \sr_out[54]_i_1_n_1\,
      \sr_out_reg[63]\(37) => \sr_out[53]_i_1_n_1\,
      \sr_out_reg[63]\(36) => \sr_out[52]_i_1_n_1\,
      \sr_out_reg[63]\(35) => \sr_out[51]_i_1_n_1\,
      \sr_out_reg[63]\(34) => \sr_out[50]_i_1_n_1\,
      \sr_out_reg[63]\(33) => \sr_out[49]_i_1_n_1\,
      \sr_out_reg[63]\(32) => \sr_out[48]_i_1_n_1\,
      \sr_out_reg[63]\(31) => \sr_out[47]_i_1_n_1\,
      \sr_out_reg[63]\(30) => \sr_out[46]_i_1_n_1\,
      \sr_out_reg[63]\(29) => \sr_out[45]_i_1_n_1\,
      \sr_out_reg[63]\(28) => \sr_out[44]_i_1_n_1\,
      \sr_out_reg[63]\(27) => \sr_out[43]_i_1_n_1\,
      \sr_out_reg[63]\(26) => \sr_out[42]_i_1_n_1\,
      \sr_out_reg[63]\(25) => \sr_out[41]_i_1_n_1\,
      \sr_out_reg[63]\(24) => \sr_out[40]_i_1_n_1\,
      \sr_out_reg[63]\(23) => \sr_out[31]_i_1_n_1\,
      \sr_out_reg[63]\(22) => \sr_out[30]_i_1_n_1\,
      \sr_out_reg[63]\(21) => \sr_out[29]_i_1_n_1\,
      \sr_out_reg[63]\(20) => \sr_out[28]_i_1_n_1\,
      \sr_out_reg[63]\(19) => \sr_out[27]_i_1_n_1\,
      \sr_out_reg[63]\(18) => \sr_out[26]_i_1_n_1\,
      \sr_out_reg[63]\(17) => \sr_out[25]_i_1_n_1\,
      \sr_out_reg[63]\(16) => \sr_out[24]_i_1_n_1\,
      \sr_out_reg[63]\(15) => \sr_out[23]_i_1_n_1\,
      \sr_out_reg[63]\(14) => \sr_out[22]_i_1_n_1\,
      \sr_out_reg[63]\(13) => \sr_out[21]_i_1_n_1\,
      \sr_out_reg[63]\(12) => \sr_out[20]_i_1_n_1\,
      \sr_out_reg[63]\(11) => \sr_out[19]_i_1_n_1\,
      \sr_out_reg[63]\(10) => \sr_out[18]_i_1_n_1\,
      \sr_out_reg[63]\(9) => \sr_out[17]_i_1_n_1\,
      \sr_out_reg[63]\(8) => \sr_out[16]_i_1_n_1\,
      \sr_out_reg[63]\(7) => \sr_out[15]_i_1_n_1\,
      \sr_out_reg[63]\(6) => \sr_out[14]_i_1_n_1\,
      \sr_out_reg[63]\(5) => \sr_out[13]_i_1_n_1\,
      \sr_out_reg[63]\(4) => \sr_out[12]_i_1_n_1\,
      \sr_out_reg[63]\(3) => \sr_out[11]_i_1_n_1\,
      \sr_out_reg[63]\(2) => \sr_out[10]_i_1_n_1\,
      \sr_out_reg[63]\(1) => \sr_out[9]_i_1_n_1\,
      \sr_out_reg[63]\(0) => \sr_out[8]_i_1_n_1\
    );
\hphone_l[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^new_sample\,
      O => new_sample_reg_0
    );
\hphone_l_freeze_100_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(0),
      Q => \hphone_l_freeze_100_reg_n_1_[0]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(10),
      Q => \hphone_l_freeze_100_reg_n_1_[10]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(11),
      Q => \hphone_l_freeze_100_reg_n_1_[11]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(12),
      Q => \hphone_l_freeze_100_reg_n_1_[12]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(13),
      Q => \hphone_l_freeze_100_reg_n_1_[13]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(14),
      Q => \hphone_l_freeze_100_reg_n_1_[14]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(15),
      Q => \hphone_l_freeze_100_reg_n_1_[15]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(16),
      Q => \hphone_l_freeze_100_reg_n_1_[16]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(17),
      Q => \hphone_l_freeze_100_reg_n_1_[17]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(18),
      Q => \hphone_l_freeze_100_reg_n_1_[18]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(19),
      Q => \hphone_l_freeze_100_reg_n_1_[19]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(1),
      Q => \hphone_l_freeze_100_reg_n_1_[1]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(20),
      Q => \hphone_l_freeze_100_reg_n_1_[20]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(21),
      Q => \hphone_l_freeze_100_reg_n_1_[21]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(22),
      Q => \hphone_l_freeze_100_reg_n_1_[22]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(23),
      Q => \hphone_l_freeze_100_reg_n_1_[23]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(2),
      Q => \hphone_l_freeze_100_reg_n_1_[2]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(3),
      Q => \hphone_l_freeze_100_reg_n_1_[3]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(4),
      Q => \hphone_l_freeze_100_reg_n_1_[4]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(5),
      Q => \hphone_l_freeze_100_reg_n_1_[5]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(6),
      Q => \hphone_l_freeze_100_reg_n_1_[6]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(7),
      Q => \hphone_l_freeze_100_reg_n_1_[7]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(8),
      Q => \hphone_l_freeze_100_reg_n_1_[8]\,
      R => '0'
    );
\hphone_l_freeze_100_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_l_freeze_100_reg[23]_0\(9),
      Q => \hphone_l_freeze_100_reg_n_1_[9]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(0),
      Q => \hphone_r_freeze_100_reg_n_1_[0]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(10),
      Q => \hphone_r_freeze_100_reg_n_1_[10]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(11),
      Q => \hphone_r_freeze_100_reg_n_1_[11]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(12),
      Q => \hphone_r_freeze_100_reg_n_1_[12]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(13),
      Q => \hphone_r_freeze_100_reg_n_1_[13]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(14),
      Q => \hphone_r_freeze_100_reg_n_1_[14]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(15),
      Q => \hphone_r_freeze_100_reg_n_1_[15]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(16),
      Q => \hphone_r_freeze_100_reg_n_1_[16]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(17),
      Q => \hphone_r_freeze_100_reg_n_1_[17]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(18),
      Q => \hphone_r_freeze_100_reg_n_1_[18]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(19),
      Q => \hphone_r_freeze_100_reg_n_1_[19]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(1),
      Q => \hphone_r_freeze_100_reg_n_1_[1]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(20),
      Q => \hphone_r_freeze_100_reg_n_1_[20]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(21),
      Q => \hphone_r_freeze_100_reg_n_1_[21]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(22),
      Q => \hphone_r_freeze_100_reg_n_1_[22]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(23),
      Q => \hphone_r_freeze_100_reg_n_1_[23]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(2),
      Q => \hphone_r_freeze_100_reg_n_1_[2]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(3),
      Q => \hphone_r_freeze_100_reg_n_1_[3]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(4),
      Q => \hphone_r_freeze_100_reg_n_1_[4]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(5),
      Q => \hphone_r_freeze_100_reg_n_1_[5]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(6),
      Q => \hphone_r_freeze_100_reg_n_1_[6]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(7),
      Q => \hphone_r_freeze_100_reg_n_1_[7]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(8),
      Q => \hphone_r_freeze_100_reg_n_1_[8]\,
      R => '0'
    );
\hphone_r_freeze_100_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \hphone_r_freeze_100_reg[23]_0\(9),
      Q => \hphone_r_freeze_100_reg_n_1_[9]\,
      R => '0'
    );
i_clocking: entity work.clocking
     port map (
      CLK => CLK,
      CLK_48 => clk_48
    );
\line_in_l_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(0),
      Q => Q(0),
      R => '0'
    );
\line_in_l_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(10),
      Q => Q(10),
      R => '0'
    );
\line_in_l_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(11),
      Q => Q(11),
      R => '0'
    );
\line_in_l_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(12),
      Q => Q(12),
      R => '0'
    );
\line_in_l_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(13),
      Q => Q(13),
      R => '0'
    );
\line_in_l_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(14),
      Q => Q(14),
      R => '0'
    );
\line_in_l_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(15),
      Q => Q(15),
      R => '0'
    );
\line_in_l_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(16),
      Q => Q(16),
      R => '0'
    );
\line_in_l_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(17),
      Q => Q(17),
      R => '0'
    );
\line_in_l_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(18),
      Q => Q(18),
      R => '0'
    );
\line_in_l_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(19),
      Q => Q(19),
      R => '0'
    );
\line_in_l_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(1),
      Q => Q(1),
      R => '0'
    );
\line_in_l_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(20),
      Q => Q(20),
      R => '0'
    );
\line_in_l_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(21),
      Q => Q(21),
      R => '0'
    );
\line_in_l_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(22),
      Q => Q(22),
      R => '0'
    );
\line_in_l_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(23),
      Q => Q(23),
      R => '0'
    );
\line_in_l_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(2),
      Q => Q(2),
      R => '0'
    );
\line_in_l_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(3),
      Q => Q(3),
      R => '0'
    );
\line_in_l_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(4),
      Q => Q(4),
      R => '0'
    );
\line_in_l_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(5),
      Q => Q(5),
      R => '0'
    );
\line_in_l_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(6),
      Q => Q(6),
      R => '0'
    );
\line_in_l_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(7),
      Q => Q(7),
      R => '0'
    );
\line_in_l_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(8),
      Q => Q(8),
      R => '0'
    );
\line_in_l_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_l_out(9),
      Q => Q(9),
      R => '0'
    );
\line_in_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(0),
      Q => line_in_r(0),
      R => '0'
    );
\line_in_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(10),
      Q => line_in_r(10),
      R => '0'
    );
\line_in_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(11),
      Q => line_in_r(11),
      R => '0'
    );
\line_in_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(12),
      Q => line_in_r(12),
      R => '0'
    );
\line_in_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(13),
      Q => line_in_r(13),
      R => '0'
    );
\line_in_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(14),
      Q => line_in_r(14),
      R => '0'
    );
\line_in_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(15),
      Q => line_in_r(15),
      R => '0'
    );
\line_in_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(16),
      Q => line_in_r(16),
      R => '0'
    );
\line_in_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(17),
      Q => line_in_r(17),
      R => '0'
    );
\line_in_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(18),
      Q => line_in_r(18),
      R => '0'
    );
\line_in_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(19),
      Q => line_in_r(19),
      R => '0'
    );
\line_in_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(1),
      Q => line_in_r(1),
      R => '0'
    );
\line_in_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(20),
      Q => line_in_r(20),
      R => '0'
    );
\line_in_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(21),
      Q => line_in_r(21),
      R => '0'
    );
\line_in_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(22),
      Q => line_in_r(22),
      R => '0'
    );
\line_in_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(23),
      Q => line_in_r(23),
      R => '0'
    );
\line_in_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(2),
      Q => line_in_r(2),
      R => '0'
    );
\line_in_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(3),
      Q => line_in_r(3),
      R => '0'
    );
\line_in_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(4),
      Q => line_in_r(4),
      R => '0'
    );
\line_in_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(5),
      Q => line_in_r(5),
      R => '0'
    );
\line_in_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(6),
      Q => line_in_r(6),
      R => '0'
    );
\line_in_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(7),
      Q => line_in_r(7),
      R => '0'
    );
\line_in_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(8),
      Q => line_in_r(8),
      R => '0'
    );
\line_in_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => new_sample_100,
      D => audio_r_out(9),
      Q => line_in_r(9),
      R => '0'
    );
new_sample_100_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sample_clk_48k_d5_100,
      I1 => sample_clk_48k_d6_100,
      O => new_sample_100_i_1_n_1
    );
new_sample_100_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => new_sample_100_i_1_n_1,
      Q => new_sample_100,
      R => '0'
    );
new_sample_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => new_sample_100,
      Q => \^new_sample\,
      R => '0'
    );
sample_clk_48k_d2_48_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk_48,
      D => AC_GPIO3_IBUF,
      Q => sample_clk_48k_d2_48_reg_srl2_n_1
    );
\sample_clk_48k_d3_48_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_48,
      CE => '1',
      D => sample_clk_48k_d2_48_reg_srl2_n_1,
      Q => sample_clk_48k_d3_48,
      R => '0'
    );
sample_clk_48k_d4_100_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sample_clk_48k_d3_48,
      Q => sample_clk_48k_d4_100,
      R => '0'
    );
sample_clk_48k_d5_100_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sample_clk_48k_d4_100,
      Q => sample_clk_48k_d5_100,
      R => '0'
    );
sample_clk_48k_d6_100_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sample_clk_48k_d5_100,
      Q => sample_clk_48k_d6_100,
      R => '0'
    );
\sr_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[2]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(9),
      O => \sr_out[10]_i_1_n_1\
    );
\sr_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[3]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(10),
      O => \sr_out[11]_i_1_n_1\
    );
\sr_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[4]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(11),
      O => \sr_out[12]_i_1_n_1\
    );
\sr_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[5]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(12),
      O => \sr_out[13]_i_1_n_1\
    );
\sr_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[6]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(13),
      O => \sr_out[14]_i_1_n_1\
    );
\sr_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[7]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(14),
      O => \sr_out[15]_i_1_n_1\
    );
\sr_out[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[8]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(15),
      O => \sr_out[16]_i_1_n_1\
    );
\sr_out[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[9]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(16),
      O => \sr_out[17]_i_1_n_1\
    );
\sr_out[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[10]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(17),
      O => \sr_out[18]_i_1_n_1\
    );
\sr_out[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[11]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(18),
      O => \sr_out[19]_i_1_n_1\
    );
\sr_out[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[12]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(19),
      O => \sr_out[20]_i_1_n_1\
    );
\sr_out[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[13]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(20),
      O => \sr_out[21]_i_1_n_1\
    );
\sr_out[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[14]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(21),
      O => \sr_out[22]_i_1_n_1\
    );
\sr_out[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[15]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(22),
      O => \sr_out[23]_i_1_n_1\
    );
\sr_out[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[16]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(23),
      O => \sr_out[24]_i_1_n_1\
    );
\sr_out[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[17]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(24),
      O => \sr_out[25]_i_1_n_1\
    );
\sr_out[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[18]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(25),
      O => \sr_out[26]_i_1_n_1\
    );
\sr_out[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[19]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(26),
      O => \sr_out[27]_i_1_n_1\
    );
\sr_out[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[20]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(27),
      O => \sr_out[28]_i_1_n_1\
    );
\sr_out[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[21]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(28),
      O => \sr_out[29]_i_1_n_1\
    );
\sr_out[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[22]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(29),
      O => \sr_out[30]_i_1_n_1\
    );
\sr_out[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[23]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(30),
      O => \sr_out[31]_i_1_n_1\
    );
\sr_out[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[0]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(39),
      O => \sr_out[40]_i_1_n_1\
    );
\sr_out[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[1]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(40),
      O => \sr_out[41]_i_1_n_1\
    );
\sr_out[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[2]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(41),
      O => \sr_out[42]_i_1_n_1\
    );
\sr_out[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[3]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(42),
      O => \sr_out[43]_i_1_n_1\
    );
\sr_out[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[4]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(43),
      O => \sr_out[44]_i_1_n_1\
    );
\sr_out[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[5]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(44),
      O => \sr_out[45]_i_1_n_1\
    );
\sr_out[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[6]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(45),
      O => \sr_out[46]_i_1_n_1\
    );
\sr_out[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[7]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(46),
      O => \sr_out[47]_i_1_n_1\
    );
\sr_out[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[8]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(47),
      O => \sr_out[48]_i_1_n_1\
    );
\sr_out[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[9]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(48),
      O => \sr_out[49]_i_1_n_1\
    );
\sr_out[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[10]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(49),
      O => \sr_out[50]_i_1_n_1\
    );
\sr_out[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[11]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(50),
      O => \sr_out[51]_i_1_n_1\
    );
\sr_out[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[12]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(51),
      O => \sr_out[52]_i_1_n_1\
    );
\sr_out[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[13]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(52),
      O => \sr_out[53]_i_1_n_1\
    );
\sr_out[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[14]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(53),
      O => \sr_out[54]_i_1_n_1\
    );
\sr_out[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[15]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(54),
      O => \sr_out[55]_i_1_n_1\
    );
\sr_out[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[16]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(55),
      O => \sr_out[56]_i_1_n_1\
    );
\sr_out[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[17]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(56),
      O => \sr_out[57]_i_1_n_1\
    );
\sr_out[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[18]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(57),
      O => \sr_out[58]_i_1_n_1\
    );
\sr_out[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[19]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(58),
      O => \sr_out[59]_i_1_n_1\
    );
\sr_out[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[20]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(59),
      O => \sr_out[60]_i_1_n_1\
    );
\sr_out[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[21]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(60),
      O => \sr_out[61]_i_1_n_1\
    );
\sr_out[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[22]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(61),
      O => \sr_out[62]_i_1_n_1\
    );
\sr_out[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_l_freeze_100_reg_n_1_[23]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(62),
      O => \sr_out[63]_i_1_n_1\
    );
\sr_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Inst_adau1761_izedboard_n_2,
      I1 => AC_GPIO3_IBUF,
      I2 => \hphone_r_freeze_100_reg_n_1_[0]\,
      O => \sr_out[8]_i_1_n_1\
    );
\sr_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \hphone_r_freeze_100_reg_n_1_[1]\,
      I1 => AC_GPIO3_IBUF,
      I2 => Inst_adau1761_izedboard_n_2,
      I3 => sr_out(8),
      O => \sr_out[9]_i_1_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Visualizer is
  port (
    clk_100 : in STD_LOGIC;
    reset : in STD_LOGIC;
    R_switch : in STD_LOGIC;
    G_switch : in STD_LOGIC;
    B_switch : in STD_LOGIC;
    Hsync : inout STD_LOGIC;
    Vsync : inout STD_LOGIC;
    RGB : out STD_LOGIC_VECTOR ( 23 downto 0 );
    AC_MCLK : out STD_LOGIC;
    AC_ADR0 : out STD_LOGIC;
    AC_ADR1 : out STD_LOGIC;
    AC_SCK : out STD_LOGIC;
    AC_SDA : inout STD_LOGIC;
    AC_GPIO0 : out STD_LOGIC;
    AC_GPIO1 : in STD_LOGIC;
    AC_GPIO2 : in STD_LOGIC;
    AC_GPIO3 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Visualizer : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Visualizer : entity is "4317c02b";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Visualizer : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Visualizer : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Visualizer : entity is 0;
end Visualizer;

architecture STRUCTURE of Visualizer is
  signal AC_GPIO0_OBUF : STD_LOGIC;
  signal AC_GPIO1_IBUF : STD_LOGIC;
  signal AC_GPIO2_IBUF : STD_LOGIC;
  signal AC_GPIO3_IBUF : STD_LOGIC;
  signal AC_MCLK_OBUF : STD_LOGIC;
  signal AC_SCK_OBUF : STD_LOGIC;
  signal ADDR_dft : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Audio_n_1 : STD_LOGIC;
  signal B_switch_IBUF : STD_LOGIC;
  signal G_switch_IBUF : STD_LOGIC;
  signal Hsync_OBUF : STD_LOGIC;
  signal Hsync_OBUF_BUFG : STD_LOGIC;
  signal RGB_OBUF : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal R_switch_IBUF : STD_LOGIC;
  signal Video_n_4 : STD_LOGIC;
  signal Vsync_OBUF : STD_LOGIC;
  signal bar_height_reg_0_15_0_4_i_1_n_1 : STD_LOGIC;
  signal clk_100_IBUF : STD_LOGIC;
  signal clk_100_IBUF_BUFG : STD_LOGIC;
  signal clk_100_buffered : STD_LOGIC;
  signal clk_25 : STD_LOGIC;
  signal din : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal hphone_l : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of hphone_l : signal is "true";
  signal hphone_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute RTL_KEEP of hphone_r : signal is "true";
  signal hphone_valid : STD_LOGIC;
  signal line_in_l : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute RTL_KEEP of line_in_l : signal is "true";
  signal line_in_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute RTL_KEEP of line_in_r : signal is "true";
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal lopt_11 : STD_LOGIC;
  signal lopt_12 : STD_LOGIC;
  signal lopt_13 : STD_LOGIC;
  signal lopt_14 : STD_LOGIC;
  signal lopt_16 : STD_LOGIC;
  signal lopt_17 : STD_LOGIC;
  signal lopt_18 : STD_LOGIC;
  signal lopt_19 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_20 : STD_LOGIC;
  signal lopt_21 : STD_LOGIC;
  signal lopt_22 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_8 : STD_LOGIC;
  signal lopt_9 : STD_LOGIC;
  signal mag_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal new_sample : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal NLW_Audio_sample_clk_48k_UNCONNECTED : STD_LOGIC;
  signal NLW_DFT_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_DFT_clk_100_IBUF_BUFG_UNCONNECTED : STD_LOGIC;
  signal NLW_DFT_n_0_205_BUFG_inst_n_1_UNCONNECTED : STD_LOGIC;
  signal NLW_DFT_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_Video_lopt_15_UNCONNECTED : STD_LOGIC;
  signal NLW_Video_lopt_23_UNCONNECTED : STD_LOGIC;
  signal NLW_Video_lopt_7_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of BUFG_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \RGB_OBUF[0]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[10]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[11]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[12]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[13]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[14]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[15]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[16]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[17]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[18]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[19]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[1]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[20]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[21]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[22]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[23]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[2]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[3]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[4]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[5]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[6]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[7]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[8]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \RGB_OBUF[9]_inst\ : label is "SWEEP";
  attribute KEEP : string;
  attribute KEEP of \hphone_l_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \hphone_l_reg[0]\ : label is "no";
  attribute KEEP of \hphone_l_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[10]\ : label is "no";
  attribute KEEP of \hphone_l_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[11]\ : label is "no";
  attribute KEEP of \hphone_l_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[12]\ : label is "no";
  attribute KEEP of \hphone_l_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[13]\ : label is "no";
  attribute KEEP of \hphone_l_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[14]\ : label is "no";
  attribute KEEP of \hphone_l_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[15]\ : label is "no";
  attribute KEEP of \hphone_l_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[16]\ : label is "no";
  attribute KEEP of \hphone_l_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[17]\ : label is "no";
  attribute KEEP of \hphone_l_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[18]\ : label is "no";
  attribute KEEP of \hphone_l_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[19]\ : label is "no";
  attribute KEEP of \hphone_l_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[1]\ : label is "no";
  attribute KEEP of \hphone_l_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[20]\ : label is "no";
  attribute KEEP of \hphone_l_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[21]\ : label is "no";
  attribute KEEP of \hphone_l_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[22]\ : label is "no";
  attribute KEEP of \hphone_l_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[23]\ : label is "no";
  attribute KEEP of \hphone_l_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[2]\ : label is "no";
  attribute KEEP of \hphone_l_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[3]\ : label is "no";
  attribute KEEP of \hphone_l_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[4]\ : label is "no";
  attribute KEEP of \hphone_l_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[5]\ : label is "no";
  attribute KEEP of \hphone_l_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[6]\ : label is "no";
  attribute KEEP of \hphone_l_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[7]\ : label is "no";
  attribute KEEP of \hphone_l_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[8]\ : label is "no";
  attribute KEEP of \hphone_l_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_l_reg[9]\ : label is "no";
  attribute KEEP of \hphone_r_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[0]\ : label is "no";
  attribute KEEP of \hphone_r_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[10]\ : label is "no";
  attribute KEEP of \hphone_r_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[11]\ : label is "no";
  attribute KEEP of \hphone_r_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[12]\ : label is "no";
  attribute KEEP of \hphone_r_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[13]\ : label is "no";
  attribute KEEP of \hphone_r_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[14]\ : label is "no";
  attribute KEEP of \hphone_r_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[15]\ : label is "no";
  attribute KEEP of \hphone_r_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[16]\ : label is "no";
  attribute KEEP of \hphone_r_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[17]\ : label is "no";
  attribute KEEP of \hphone_r_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[18]\ : label is "no";
  attribute KEEP of \hphone_r_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[19]\ : label is "no";
  attribute KEEP of \hphone_r_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[1]\ : label is "no";
  attribute KEEP of \hphone_r_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[20]\ : label is "no";
  attribute KEEP of \hphone_r_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[21]\ : label is "no";
  attribute KEEP of \hphone_r_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[22]\ : label is "no";
  attribute KEEP of \hphone_r_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[23]\ : label is "no";
  attribute KEEP of \hphone_r_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[2]\ : label is "no";
  attribute KEEP of \hphone_r_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[3]\ : label is "no";
  attribute KEEP of \hphone_r_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[4]\ : label is "no";
  attribute KEEP of \hphone_r_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[5]\ : label is "no";
  attribute KEEP of \hphone_r_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[6]\ : label is "no";
  attribute KEEP of \hphone_r_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[7]\ : label is "no";
  attribute KEEP of \hphone_r_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[8]\ : label is "no";
  attribute KEEP of \hphone_r_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \hphone_r_reg[9]\ : label is "no";
begin
AC_ADR0_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AC_ADR0
    );
AC_ADR1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AC_ADR1
    );
AC_GPIO0_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => AC_GPIO0_OBUF,
      O => AC_GPIO0
    );
AC_GPIO1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => AC_GPIO1,
      O => AC_GPIO1_IBUF
    );
AC_GPIO2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => AC_GPIO2,
      O => AC_GPIO2_IBUF
    );
AC_GPIO3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => AC_GPIO3,
      O => AC_GPIO3_IBUF
    );
AC_MCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => AC_MCLK_OBUF,
      O => AC_MCLK
    );
AC_SCK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => AC_SCK_OBUF,
      O => AC_SCK
    );
Audio: entity work.audio_top
     port map (
      AC_GPIO0 => AC_GPIO0_OBUF,
      AC_GPIO1 => AC_GPIO1_IBUF,
      AC_GPIO3_IBUF => AC_GPIO3_IBUF,
      AC_MCLK => AC_MCLK_OBUF,
      AC_SCK => AC_SCK_OBUF,
      AC_SDA => AC_SDA,
      CLK => clk_100_buffered,
      D(0) => AC_GPIO2_IBUF,
      E(0) => hphone_valid,
      Q(23 downto 0) => line_in_l(23 downto 0),
      \hphone_l_freeze_100_reg[23]_0\(23 downto 0) => hphone_l(23 downto 0),
      \hphone_r_freeze_100_reg[23]_0\(23 downto 0) => hphone_r(23 downto 0),
      line_in_r(23 downto 0) => line_in_r(23 downto 0),
      new_sample => new_sample,
      new_sample_reg_0 => Audio_n_1,
      sample_clk_48k => NLW_Audio_sample_clk_48k_UNCONNECTED
    );
BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_100_IBUF,
      O => clk_100_buffered
    );
B_switch_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B_switch,
      O => B_switch_IBUF
    );
DFT: entity work.DFT_top
     port map (
      CLK => NLW_DFT_CLK_UNCONNECTED,
      Q(16 downto 0) => NLW_DFT_Q_UNCONNECTED(16 downto 0),
      \addr_buffer_reg[3]_0\(3 downto 0) => ADDR_dft(3 downto 0),
      clk_100_IBUF_BUFG => NLW_DFT_clk_100_IBUF_BUFG_UNCONNECTED,
      \magn_out_buffer_reg[4]_0\(4 downto 0) => din(4 downto 0),
      n_0_205_BUFG_inst_n_1 => NLW_DFT_n_0_205_BUFG_inst_n_1_UNCONNECTED
    );
G_switch_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => G_switch,
      O => G_switch_IBUF
    );
Hsync_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Hsync_OBUF,
      O => Hsync_OBUF_BUFG
    );
Hsync_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Hsync_OBUF_BUFG,
      O => Hsync
    );
RAM_DFT_mag: entity work.RAM_mag
     port map (
      bar_height_reg_0_15_0_4(4 downto 0) => din(4 downto 0),
      bar_height_reg_0_15_0_4_0(3 downto 0) => ADDR_dft(3 downto 0),
      clk_100_IBUF_BUFG => clk_100_IBUF_BUFG,
      mag_in(4 downto 0) => mag_in(4 downto 0)
    );
\RGB_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt,
      O => RGB(0)
    );
\RGB_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_8,
      O => RGB(10)
    );
\RGB_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_9,
      O => RGB(11)
    );
\RGB_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_10,
      O => RGB(12)
    );
\RGB_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_11,
      O => RGB(13)
    );
\RGB_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_12,
      O => RGB(14)
    );
\RGB_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_13,
      O => RGB(15)
    );
\RGB_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_16,
      O => RGB(16)
    );
\RGB_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_17,
      O => RGB(17)
    );
\RGB_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_18,
      O => RGB(18)
    );
\RGB_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_19,
      O => RGB(19)
    );
\RGB_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_1,
      O => RGB(1)
    );
\RGB_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_20,
      O => RGB(20)
    );
\RGB_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_21,
      O => RGB(21)
    );
\RGB_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_22,
      O => RGB(22)
    );
\RGB_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RGB_OBUF(16),
      O => RGB(23)
    );
\RGB_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_2,
      O => RGB(2)
    );
\RGB_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_3,
      O => RGB(3)
    );
\RGB_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_4,
      O => RGB(4)
    );
\RGB_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_5,
      O => RGB(5)
    );
\RGB_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_6,
      O => RGB(6)
    );
\RGB_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RGB_OBUF(0),
      O => RGB(7)
    );
\RGB_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_14,
      O => RGB(8)
    );
\RGB_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RGB_OBUF(8),
      O => RGB(9)
    );
R_switch_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => R_switch,
      O => R_switch_IBUF
    );
Video: entity work.Video_top
     port map (
      B_switch_IBUF => B_switch_IBUF,
      CLK => clk_25,
      G_switch_IBUF => G_switch_IBUF,
      Hsync_OBUF => Hsync_OBUF,
      Hsync_OBUF_BUFG => Hsync_OBUF_BUFG,
      RGB_OBUF(2) => RGB_OBUF(16),
      RGB_OBUF(1) => RGB_OBUF(8),
      RGB_OBUF(0) => RGB_OBUF(0),
      R_switch_IBUF => R_switch_IBUF,
      Vsync_OBUF => Vsync_OBUF,
      clk_100_IBUF_BUFG => clk_100_IBUF_BUFG,
      geqOp_carry_i_6 => bar_height_reg_0_15_0_4_i_1_n_1,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_10 => lopt_10,
      lopt_11 => lopt_11,
      lopt_12 => lopt_12,
      lopt_13 => lopt_13,
      lopt_14 => lopt_14,
      lopt_15 => NLW_Video_lopt_15_UNCONNECTED,
      lopt_16 => lopt_16,
      lopt_17 => lopt_17,
      lopt_18 => lopt_18,
      lopt_19 => lopt_19,
      lopt_2 => lopt_2,
      lopt_20 => lopt_20,
      lopt_21 => lopt_21,
      lopt_22 => lopt_22,
      lopt_23 => NLW_Video_lopt_23_UNCONNECTED,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      lopt_7 => NLW_Video_lopt_7_UNCONNECTED,
      lopt_8 => lopt_8,
      lopt_9 => lopt_9,
      mag_in(4 downto 0) => mag_in(4 downto 0),
      reset_IBUF => reset_IBUF,
      tmp_clk_reg => Video_n_4
    );
Vsync_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Vsync_OBUF,
      O => Vsync
    );
bar_height_reg_0_15_0_4_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Vsync_OBUF,
      O => bar_height_reg_0_15_0_4_i_1_n_1
    );
\bar_index_reg_rep[3]_i_4\: unisim.vcomponents.BUFG
     port map (
      I => Video_n_4,
      O => clk_25
    );
clk_100_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_100_IBUF,
      O => clk_100_IBUF_BUFG
    );
clk_100_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_100,
      O => clk_100_IBUF
    );
\hphone_l_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(0),
      Q => hphone_l(0),
      R => Audio_n_1
    );
\hphone_l_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(10),
      Q => hphone_l(10),
      R => Audio_n_1
    );
\hphone_l_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(11),
      Q => hphone_l(11),
      R => Audio_n_1
    );
\hphone_l_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(12),
      Q => hphone_l(12),
      R => Audio_n_1
    );
\hphone_l_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(13),
      Q => hphone_l(13),
      R => Audio_n_1
    );
\hphone_l_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(14),
      Q => hphone_l(14),
      R => Audio_n_1
    );
\hphone_l_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(15),
      Q => hphone_l(15),
      R => Audio_n_1
    );
\hphone_l_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(16),
      Q => hphone_l(16),
      R => Audio_n_1
    );
\hphone_l_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(17),
      Q => hphone_l(17),
      R => Audio_n_1
    );
\hphone_l_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(18),
      Q => hphone_l(18),
      R => Audio_n_1
    );
\hphone_l_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(19),
      Q => hphone_l(19),
      R => Audio_n_1
    );
\hphone_l_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(1),
      Q => hphone_l(1),
      R => Audio_n_1
    );
\hphone_l_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(20),
      Q => hphone_l(20),
      R => Audio_n_1
    );
\hphone_l_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(21),
      Q => hphone_l(21),
      R => Audio_n_1
    );
\hphone_l_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(22),
      Q => hphone_l(22),
      R => Audio_n_1
    );
\hphone_l_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(23),
      Q => hphone_l(23),
      R => Audio_n_1
    );
\hphone_l_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(2),
      Q => hphone_l(2),
      R => Audio_n_1
    );
\hphone_l_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(3),
      Q => hphone_l(3),
      R => Audio_n_1
    );
\hphone_l_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(4),
      Q => hphone_l(4),
      R => Audio_n_1
    );
\hphone_l_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(5),
      Q => hphone_l(5),
      R => Audio_n_1
    );
\hphone_l_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(6),
      Q => hphone_l(6),
      R => Audio_n_1
    );
\hphone_l_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(7),
      Q => hphone_l(7),
      R => Audio_n_1
    );
\hphone_l_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(8),
      Q => hphone_l(8),
      R => Audio_n_1
    );
\hphone_l_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_l(9),
      Q => hphone_l(9),
      R => Audio_n_1
    );
\hphone_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(0),
      Q => hphone_r(0),
      R => Audio_n_1
    );
\hphone_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(10),
      Q => hphone_r(10),
      R => Audio_n_1
    );
\hphone_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(11),
      Q => hphone_r(11),
      R => Audio_n_1
    );
\hphone_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(12),
      Q => hphone_r(12),
      R => Audio_n_1
    );
\hphone_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(13),
      Q => hphone_r(13),
      R => Audio_n_1
    );
\hphone_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(14),
      Q => hphone_r(14),
      R => Audio_n_1
    );
\hphone_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(15),
      Q => hphone_r(15),
      R => Audio_n_1
    );
\hphone_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(16),
      Q => hphone_r(16),
      R => Audio_n_1
    );
\hphone_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(17),
      Q => hphone_r(17),
      R => Audio_n_1
    );
\hphone_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(18),
      Q => hphone_r(18),
      R => Audio_n_1
    );
\hphone_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(19),
      Q => hphone_r(19),
      R => Audio_n_1
    );
\hphone_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(1),
      Q => hphone_r(1),
      R => Audio_n_1
    );
\hphone_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(20),
      Q => hphone_r(20),
      R => Audio_n_1
    );
\hphone_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(21),
      Q => hphone_r(21),
      R => Audio_n_1
    );
\hphone_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(22),
      Q => hphone_r(22),
      R => Audio_n_1
    );
\hphone_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(23),
      Q => hphone_r(23),
      R => Audio_n_1
    );
\hphone_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(2),
      Q => hphone_r(2),
      R => Audio_n_1
    );
\hphone_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(3),
      Q => hphone_r(3),
      R => Audio_n_1
    );
\hphone_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(4),
      Q => hphone_r(4),
      R => Audio_n_1
    );
\hphone_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(5),
      Q => hphone_r(5),
      R => Audio_n_1
    );
\hphone_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(6),
      Q => hphone_r(6),
      R => Audio_n_1
    );
\hphone_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(7),
      Q => hphone_r(7),
      R => Audio_n_1
    );
\hphone_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(8),
      Q => hphone_r(8),
      R => Audio_n_1
    );
\hphone_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => line_in_r(9),
      Q => hphone_r(9),
      R => Audio_n_1
    );
hphone_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_IBUF_BUFG,
      CE => '1',
      D => new_sample,
      Q => hphone_valid,
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
end STRUCTURE;
