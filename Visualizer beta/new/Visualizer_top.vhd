----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 10:16:19
-- Design Name: 
-- Module Name: Visualizer - Visualizer_Behavior
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Visualizer is
  Port ( clk_100      : in    STD_LOGIC;                      -- 100 mhz input clock from top level logic
           AC_MCLK      : out   STD_LOGIC;                      -- 24 Mhz for ADAU1761

		   AC_ADR0      : out   STD_LOGIC;                      -- I2C contol signals to ADAU1761, for configuration
           AC_ADR1      : out   STD_LOGIC;
		   AC_SCK       : out   STD_LOGIC;
           AC_SDA       : inout STD_LOGIC;
          
		   AC_GPIO0     : out   STD_LOGIC;                      -- I2S MISO
           AC_GPIO1     : in    STD_LOGIC;                      -- I2S MOSI
           AC_GPIO2     : in    STD_LOGIC;                      -- I2S_bclk
           AC_GPIO3     : in    STD_LOGIC                      -- I2S_LR
           );
end Visualizer;

architecture Visualizer_Behavior of Visualizer is

component DFT_TOP
 port
    (
    left_channel_in: in std_logic_vector (17 downto 0);
    right_channel_in: in std_logic_vector (17 downto 0);
    clk_100: in std_logic;
    magn_out_highest: out std_logic_vector (4 downto 0);
    MAGNITUDE_VALID : inout std_logic;
    XK_RE_Probe: out signed (17 downto 0);
    ADDR_dft: inout integer
    );
END component;
COMPONENT Wave_32_as4
    PORT
    (
          Clk : in std_logic;
         Reset : in std_logic;
          Selected_BTN : in STD_LOGIC_VECTOR(3 downto 0);
          --Div_value : in std_logic_vector(3 downto 0);
          DATA : out std_logic_vector(23 downto 0);
          Strobe : out std_logic;
          count_reader : out std_logic_vector (9 downto 0)
    );
END COMPONENT;
component AUDIO_TOP
    Port ( clk_100      : in    STD_LOGIC;                      -- 100 mhz input clock from top level logic
           AC_MCLK      : out   STD_LOGIC;                      -- 24 Mhz for ADAU1761

		   AC_ADR0      : out   STD_LOGIC;                      -- I2C contol signals to ADAU1761, for configuration
           AC_ADR1      : out   STD_LOGIC;
		   AC_SCK       : out   STD_LOGIC;
           AC_SDA       : inout STD_LOGIC;
          
		   AC_GPIO0     : out   STD_LOGIC;                      -- I2S MISO
           AC_GPIO1     : in    STD_LOGIC;                      -- I2S MOSI
           AC_GPIO2     : in    STD_LOGIC;                      -- I2S_bclk
           AC_GPIO3     : in    STD_LOGIC;                      -- I2S_LR
           
           
           hphone_l             : in STD_LOGIC_VECTOR(23 downto 0);     -- samples to head phone jack
           hphone_l_valid       : in std_logic;
           
           hphone_r             : in STD_LOGIC_VECTOR(23 downto 0);
           hphone_r_valid_dummy : in std_logic;                         -- dummy valid signal to create AXIS interface in Vivado (r and l channel synchronous to hphone_l_valid
           
           line_in_l            : out STD_LOGIC_VECTOR(23 downto 0);    -- samples from "line in" jack    
           line_in_r            : out STD_LOGIC_VECTOR(23 downto 0);
           
           new_sample     : out STD_LOGIC;                      -- active for 1 clk cycle if new "line in" sample is tranmitted/received
           sample_clk_48k : out std_logic                       -- sample clock (new sample at rising edge)
           );
END component;

    signal clk_100_buffered: std_logic;
    signal counter : unsigned (5 downto 0);
    signal hphone_l, hphone_r : std_logic_vector (23 downto 0);
    signal hphone_valid: std_logic;
    signal new_sample : std_logic;
    signal sample_clk_48k: std_logic;
    signal line_in_l, line_in_r : std_logic_vector (23 downto 0);
    signal Clk : std_logic := '0';
    signal Selected_BTN : STD_LOGIC_VECTOR(3 downto 0);
    --signal Div_value : std_logic_vector(3 downto 0):= "0001";
    signal DATA :  std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal DATA_INV: std_logic_vector(7 downto 0) := "00000000";
    signal Strobe :  std_logic;
    signal count_reader : std_logic_vector(9 downto 0);
    signal reset: std_logic:='0';
    signal finished: std_logic;
    signal magn_out: std_logic_vector (4 downto 0);
    signal XK_RE_Probe: signed (17 downto 0);
    signal MAGNITUDE_VALID : std_logic;
    signal addr_dft: integer := 0;
           

    -- keep signals for tracking them with the Logic Analyzer
    attribute keep : string;
    attribute keep of sample_clk_48k : signal is "true";
    attribute keep of hphone_l : signal is "true";
    attribute keep of hphone_r : signal is "true";
    
    attribute keep of line_in_l : signal is "true";
    attribute keep of line_in_r : signal is "true";


    --18bit signal for a FFT block
    signal audio18_l, audio18_r : std_logic_vector (17 downto 0);
begin

Audio : audio_top port map (
      clk_100  => clk_100_buffered, 
      AC_ADR0  => AC_ADR0,
      AC_ADR1  => AC_ADR1,
      AC_GPIO0 => AC_GPIO0,
      AC_GPIO1 => AC_GPIO1,
      AC_GPIO2 => AC_GPIO2,
      AC_GPIO3 => AC_GPIO3,
      AC_MCLK  => AC_MCLK,
      AC_SCK   => AC_SCK,
      AC_SDA   => AC_SDA,
      
      hphone_l  => hphone_l,
      hphone_l_valid => hphone_valid,
      hphone_r  => hphone_r,
      hphone_r_valid_dummy => hphone_valid,   --  this valid will be discarded later
      
      line_in_l => line_in_l,  
      line_in_r => line_in_r,

      new_sample => new_sample,
      sample_clk_48k => sample_clk_48k
     
   );

DFT: DFT_top port map (left_channel_in => audio18_l, right_channel_in => audio18_r, clk_100 => clk, magn_out_highest => magn_out, magnitude_valid => magnitude_valid, XK_RE_PROBE => XK_RE_PROBE, addr_dft => addr_dft );
SINE: Wave_32_as4 Port Map (clk => clk, reset => reset, selected_btn => selected_btn, DATA => DATA, strobe => strobe, count_reader => count_reader);
clk <= not clk after 5 ns when finished /= '1' else '0';
selected_btn <= "0001";
--line_in_l (23 downto 0) <= Data;
--line_in_r (23 downto 0) <= Data;

audio18_l (17 downto 0) <= DATA(23 downto 6);
audio18_r (17 downto 0) <= DATA(23 downto 6);
stim_proc: Process
begin
wait for 100 ms;

finished <= '1';
wait; 
end process;

end Visualizer_Behavior;
