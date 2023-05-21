----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/18/2023 07:07:58 PM
-- Design Name: 
-- Module Name: Visualizer_TB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Visualizer_TB is
--  Port ( );
end Visualizer_TB;

architecture Behavioral of Visualizer_TB is
    component Visualizer
        port(
            --universal ports
            clk_100, reset      : in    STD_LOGIC;                      -- 100 mhz input clock from top level logic
            --Ports used for Video
            R_switch, G_switch, B_switch: in std_logic;
            Hsync: inout std_logic; 
            Vsync: out std_logic;                       -- Horizontal and Vertical sync
            RGB : out std_logic_vector(23 downto 0);
            --Ports used for audio   
            AC_MCLK      : out   STD_LOGIC;                      -- 24 Mhz for ADAU1761
            AC_ADR0      : out   STD_LOGIC;                      -- I2C contol signals to ADAU1761, for configuration
            AC_ADR1      : out   STD_LOGIC;
            AC_SCK       : out   STD_LOGIC;
            AC_SDA       : inout STD_LOGIC;
              
            AC_GPIO0     : out   STD_LOGIC;                      -- I2S MISO
            AC_GPIO1     : in    STD_LOGIC;                      -- I2S MOSI
            AC_GPIO2     : in    STD_LOGIC;                      -- I2S_bclk
            AC_GPIO3     : in    STD_LOGIC                       -- I2S_LR
        );
    end component;
    
    component DFT_TOP
        port(
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

    component Video_top
        generic(
            RES_X: natural := 640;
            RES_Y: natural := 480
        );
        port(
            --inputs
            clk: in std_logic;                          -- 100MHz clock
            RST: in std_logic;                          -- Universal reset
            R_switch, G_switch, B_switch: in std_logic;
            mag_in: in std_logic_vector(4 downto 0);
            --outputs
            bar_index: inout integer; 
            we: out std_logic;
            Hsync: inout std_logic; 
            Vsync: out std_logic;                       -- Horizontal and Vertical sync
            RGB : out std_logic_vector(23 downto 0)
        );
    end component;
    
    component RAM_mag is
        Port ( clk, reset : in STD_LOGIC;
           we : in STD_LOGIC;
           addr_r : in integer range 0 to 15;
           addr_w: in integer range 0 to 15;
           din : in std_logic_vector(4 downto 0);
           dout : out std_logic_vector(4 downto 0));
    end component;
    
    --reset
    signal reset: std_logic := '0';
    
    --clock signals
    signal clk_100: std_logic := '0';
    --signal clk_25: std_logic := '1';
    constant clock_period: time := 10ns;
    
    --for VGA entity
    signal Hsync, Vsync: std_logic := '0';
    signal RGB: std_logic_vector(23 downto 0);
    --signal video_active: std_logic;
    --signal x_cord: integer range 0 to 640-1;
    --signal y_cord: integer range 0 to 480-1;
    signal we: std_logic;
    
    --for pattern genrator
    signal R_switch: std_logic := '1';
    signal G_switch: std_logic := '0';
    signal B_switch: std_logic := '1';
    
    --for DFT
    signal clk_100_buffered: std_logic;
    signal counter : unsigned (5 downto 0);
    signal hphone_l, hphone_r : std_logic_vector (23 downto 0);
    signal hphone_valid: std_logic;
    signal new_sample : std_logic;
    signal sample_clk_48k: std_logic;
    signal line_in_l, line_in_r : std_logic_vector (23 downto 0);
    
    --for sine wave generator  
    --signal Div_value : std_logic_vector(3 downto 0):= "0001";
    signal DATA :  std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal DATA_INV: std_logic_vector(7 downto 0) := "00000000";
    signal Strobe :  std_logic;
    signal count_reader : std_logic_vector(9 downto 0);
    signal finished: std_logic;
    signal magn_out: std_logic_vector (4 downto 0);
    signal XK_RE_Probe: signed (17 downto 0);
    signal MAGNITUDE_VALID : std_logic;
    --signal addr_dft: integer := 0;
    
    --for audio       
    signal AC_MCLK: STD_LOGIC := '0' ;                      -- 24 Mhz for ADAU1761
    signal AC_ADR0: STD_LOGIC := '0';                      -- I2C contol signals to ADAU1761, for configuration
    signal AC_ADR1: STD_LOGIC := '0';
    signal AC_SCK: STD_LOGIC := '0';
    signal AC_SDA: STD_LOGIC := '0';
      
    signal AC_GPIO0: STD_LOGIC := '0';                      -- I2S MISO
    signal AC_GPIO1: STD_LOGIC := '0';                      -- I2S MOSI
    signal AC_GPIO2: STD_LOGIC := '0';                      -- I2S_bclk
    signal AC_GPIO3: STD_LOGIC := '0';                       -- I2S_LR
    
    -- keep signals for tracking them with the Logic Analyzer
    --attribute keep : string;
    --attribute keep of sample_clk_48k : signal is "true";
    --attribute keep of hphone_l : signal is "true";
    --attribute keep of hphone_r : signal is "true";
    
    --attribute keep of line_in_l : signal is "true";
    --attribute keep of line_in_r : signal is "true";

    --18bit signal for a FFT block
    signal audio18_l, audio18_r : std_logic_vector (17 downto 0);
    
    --signals for RAM
    signal din, dout: std_logic_vector(4 downto 0);
    signal addr_r: integer range 0 to 15 := 0;
    signal addr_w: integer range 0 to 15 := 0;
    
begin
    DFT: DFT_top port map (left_channel_in => audio18_l, right_channel_in => audio18_r, clk_100 => clk_100,
                        magn_out_highest => din, magnitude_valid => magnitude_valid,
                        XK_RE_PROBE => XK_RE_PROBE, addr_dft => addr_w );
                        
    Video: Video_top port map(clk => clk_100, RST => reset, mag_in => dout, we => we,
                             R_switch => R_switch, G_switch => G_switch, B_switch => B_switch,
                             Hsync => Hsync, Vsync => Vsync, RGB => RGB); 

    SINE: Wave_32_as4 Port Map (clk => clk_100, reset => reset, selected_btn => "0001", DATA => DATA,
                            strobe => strobe, count_reader => count_reader);

    RAM_DFT_mag: RAM_mag port map(clk => clk_100, reset => reset, we => we, addr_r => addr_r, addr_w => addr_w, din => din, dout => dout);
    
    uut: Visualizer port map(clk_100 => clk_100, reset => reset, 
                                R_switch => R_switch, G_switch => G_switch, B_switch => B_switch,
                                Hsync => Hsync, Vsync => Vsync, RGB => RGB,
                                AC_MCLK => AC_MCLK, AC_ADR0 => AC_ADR0, AC_ADR1 => AC_ADR1, AC_SCK => AC_SCK, AC_SDA => AC_SDA,
                                AC_GPIO0 => AC_GPIO0, AC_GPIO1 => AC_GPIO1, AC_GPIO2 => AC_GPIO2, AC_GPIO3 => AC_GPIO3);

    --Simulate a 100MHz clock
    clock_process: process
    begin
        clk_100 <= '0';
        wait for clock_period/2;
        clk_100 <= '1';
        wait for clock_period/2;
    end process;

end Behavioral;
