----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2023 04:54:58 PM
-- Design Name: 
-- Module Name: clock_div_TB - Behavioral
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


entity clock_div_TB is
end clock_div_TB;

architecture Behavioral of clock_div_TB is
    component clk_div
        port(
        Clk_in: std_logic;
        reset: in std_logic;
        CLK_out: out std_logic);
    end component;
    
    --Inputs
    signal Clk_in: std_logic := '0';
    signal reset: std_logic := '0';
    --Outputs
    signal CLK_out: std_logic;
    
    --Clock
    constant clock_period :time := 10ns;
    
begin
 
    uut: clk_div PORT MAP(
        Clk_in => Clk_in, reset => reset, Clk_out => Clk_out);
    
    clock_process: process
    begin
        Clk_in <= '0';
        wait for clock_period/2;
        Clk_in <= '1';
        wait for clock_period/2;
    end process;
    
    stim_proc: process
    begin
        wait for 100ns;
        reset <= '1';
        wait for 100ns;
        reset <= '0';
    wait;
    end process;
end Behavioral;
