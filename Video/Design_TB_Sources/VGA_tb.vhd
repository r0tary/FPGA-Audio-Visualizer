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
    component VGA
        port(
            clk: in std_logic;                          -- 100MHz clock
            RST: in std_logic;                          -- Universal reset
            R_switch, G_switch, B_switch: in std_logic;
        
            Hsync: out std_logic;                       -- Horizontal sync
            Vsync: out std_logic;                       -- Vertical sync
            RGB: out std_logic_vector(23 downto 0);
            videoOn: out std_logic);                       
    end component;
    
    component clk_div
        port(
            Clk_in: std_logic;
            reset: in std_logic;
            CLK_out: out std_logic);
    end component;
    
    --Inputs for VGA entity
    signal clk: std_logic := '0';
    signal RST: std_logic := '0';
    signal R_switch: std_logic := '1';
    signal G_switch: std_logic := '0';
    signal B_switch: std_logic := '1';                    
    
    --Outputs for VGA entity
    signal Hsync, Vsync: std_logic := '0';
    signal RGB: std_logic_vector(23 downto 0);
    signal videoOn: std_logic;
    
    --25MHz clock
    signal clk_25: std_logic := '1'; 
    
    --100MHz clock period
    constant clock_period: time := 10ns;           
    
begin
    
    clock_100_25: clk_div PORT MAP(
        Clk_in => clk, reset => RST, CLK_out => clk_25);
    
    uut: VGA PORT MAP(
        clk => clk, RST => RST, R_switch => R_switch, G_switch => G_switch, B_switch => B_switch,
        Hsync => Hsync, Vsync => Vsync, videoOn => videoOn, RGB => RGB);
    
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
            if videoOn = '1' then
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
