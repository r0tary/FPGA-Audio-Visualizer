----------------------------------------------------------------------------------
-- Company: SDU Group 1, Eletr 4
-- Engineer: G.R
-- 
-- Create Date: 04/15/2023 04:44:01 PM
-- Design Name: VHDL Display simulator
-- Module Name: VGA_tb - Behavioral
-- Project Name: FPGA Audio Visualizer
-- Target Devices: Zedboard
-- Tool Versions: 1.0
-- Description: Testbench file for a VHDL Display simulator

-- Dependencies: Clock divider 100MHz to 25 MHz

-- Revision 0.02 - Simulation for VGA driver written
-- Revision 0.03 - Process for writing RGB values in text document added
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity VGA_tb is
--  Port ( );
end VGA_tb;

architecture Behavioral of VGA_tb is    
    component Video_top
        port(
        --inputs
        clk: in std_logic;                          -- 100MHz clock
        RST: in std_logic;                          -- Universal reset
        R_switch, G_switch, B_switch: in std_logic;
        --outputs
        Hsync: inout std_logic; 
        Vsync: out std_logic;                       -- Horizontal and Vertical sync
        RGB : out std_logic_vector(23 downto 0)
        );
    end component;
    
    component clk_div
        port(
            Clk_in: std_logic;
            reset: in std_logic;
            CLK_out: out std_logic);
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
            videoOn: out std_logic                     
        );
    end component;
    
    component pattern_generator
        port(
            --Inputs
            clk, reset : in std_logic;
            video_active : in std_logic;
            x_cord : in integer range 0 to 640-1;
            y_cord : in integer range 0 to 480-1;
            R_switch, G_switch, B_switch: in std_logic;
            --Outputs
            RGB : out std_logic_vector(23 downto 0)
            );
    end component;
    
    
    --Inputs for VGA timings entity
    signal clk: std_logic := '0';
    signal RST: std_logic := '0';
    
    --Outputs for VGA entity
    signal Hsync, Vsync: std_logic := '0';
    signal RGB: std_logic_vector(23 downto 0);
    signal video_active: std_logic;
    signal x_cord: integer range 0 to 640-1;
    signal y_cord: integer range 0 to 480-1;
    
    --Inputs for pattern genrator
    signal R_switch: std_logic := '1';
    signal G_switch: std_logic := '0';
    signal B_switch: std_logic := '1';
    
    --25MHz clock
    signal clk_25: std_logic := '1'; 
    
    --100MHz clock period
    constant clock_period: time := 10ns;
        
begin
    
    clock_100_25: clk_div PORT MAP(Clk_in => clk, reset => RST, CLK_out => clk_25);
        
    VGA_timings: VGA port map(clk => clk_25, RST => RST, Xpos => x_cord, Ypos => y_cord,
                                Hsync => Hsync, Vsync => Vsync, videoOn => video_active);
    
    Video_output: pattern_generator port map(clk => clk_25, reset => RST, video_active => video_active,
                                             x_cord => x_cord, y_cord => y_cord, RGB => RGB,
                                             R_switch => R_switch, G_switch => G_switch, B_switch => B_switch);
    
    uut: Video_top PORT MAP(clk => clk, RST => RST, R_switch => R_switch, G_switch => G_switch,
                            B_switch => B_switch, Hsync => Hsync, Vsync => Vsync, RGB => RGB);
    
    --Simulate a 100MHz clock
    clock_process: process
    begin
        clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;
    
 --write RGB values in a text document
    record_values:process(clk_25) is
        file     DISP_FILE : text open write_mode is "rgb.txt";
        variable DISP_LINE : line;
        variable h : std_logic := '0';
    begin
        if rising_edge(clk_25) then
            if video_active = '1' then
                write(DISP_LINE, to_integer(unsigned(RGB)));
                write(DISP_LINE, ',');
                h := '1';
            end if;

            if hsync = '0' and h = '1' then
                h := '0';
                writeline(DISP_FILE, DISP_LINE);
            end if;
            
            if vsync = '0' then
                assert false report "completed...ignore following error messages" severity FAILURE;
            end if;
        end if;
    end process;
   
    
   
end Behavioral;
