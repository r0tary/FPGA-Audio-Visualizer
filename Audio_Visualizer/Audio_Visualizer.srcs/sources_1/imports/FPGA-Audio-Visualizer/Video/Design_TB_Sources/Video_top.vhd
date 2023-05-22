---------------------------------------------------------------------------------
-- Company: SDU Group 1
-- Engineer: G.R
-- 
-- Create Date: 05/11/2023 10:11:42 AM
-- Design Name: VGA video for FPGAs
-- Module Name: Video_top - Behavioral
-- Project Name: VGA video output for Zedboard
-- Target Devices: Zedboard
-- Tool Versions: 1.0
-- Description: Top module for a VGA video output.
-- Dependencies: 
    -- clock divider - 100 MHz to 25 MHz
    -- VGA timings - generates tiomings for a VGA signal
    --Pattern generator - generates the RGB outoput image
-- Revision: 0.02 - Interfaced with avbove mentioned modules modules
-- Revision: 0.01 - File Created
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Video_top is
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
        magnitude_valid: in std_logic;
        --outputs
        we: out std_logic;
        bar_index: inout integer range 0 to 15;
        Hsync: inout std_logic; 
        Vsync: out std_logic;                       -- Horizontal and Vertical sync
        RGB : out std_logic_vector(23 downto 0)
    );
end Video_top;

architecture Behavioral of Video_top is
    component clk_div                           
        port(
            --inputs
            Clk_in, reset: in std_logic;
            divider_coef: in integer;
            --outputs
            Clk_out: out std_logic);
    end component;
    
    component VGA
        port(
            --inputs
            clk: in std_logic;                         
            RST: in std_logic;                         
            --outputs
            Xpos: out integer;
            Ypos: out integer;
            Hsync: inout std_logic; 
            Vsync: out std_logic;                     
            videoOn: inout std_logic                     
        );
    end component;
    
    component pattern_generator
        port(
            --Inputs
            clk, reset : in std_logic;
            video_active : in std_logic;
            x_cord : in integer range 0 to RES_X-1;
            y_cord : in integer range 0 to RES_Y-1;
            R_switch, G_switch, B_switch: in std_logic;
            bar_mag: in std_logic_vector (4 downto 0);
            magnitude_valid: in std_logic;
            --Outputs
            we: out std_logic;
            RGB : out std_logic_vector(23 downto 0);
            bar_index: inout integer
            );
    end component;
    
    signal clk_25: std_logic;
    signal x_cord: integer := 0;
    signal y_cord: integer := 0; 
    signal video_active : std_logic;  
begin

    --Converting the 100MHz clock to a 25MHz clock
    clk_div_100_25: clk_div port map(Clk_in => clk,reset => RST,CLK_out => clk_25,
                                     divider_coef => 2);-- Clock division from 100Mhz to 25 MHz
    
    VGA_timings: VGA port map(clk => clk_25, RST => RST, Xpos => x_cord, Ypos => y_cord,
                                Hsync => Hsync, Vsync => Vsync, videoOn => video_active);
    
    Video_output: pattern_generator port map(clk => clk_25, reset => RST, video_active => video_active, we => we, bar_mag => mag_in,
                                             x_cord => x_cord, y_cord => y_cord, RGB => RGB, bar_index => bar_index, magnitude_valid => magnitude_valid,
                                             R_switch => R_switch, G_switch => G_switch, B_switch => B_switch); 

end Behavioral;
