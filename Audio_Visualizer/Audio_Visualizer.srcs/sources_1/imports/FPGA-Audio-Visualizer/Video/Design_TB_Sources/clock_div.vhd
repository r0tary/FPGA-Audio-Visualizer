----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2023 12:31:04 PM
-- Design Name: 
-- Module Name: clock_div_100_25 - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

 entity clk_div is
    port(
        CLK_in: in std_logic;
        reset: in std_logic;
        divider_coef: in integer;
        CLK_out: out std_logic);
 end entity;

 architecture Behavioral of clk_div is
    signal div_count: integer := 1;
    signal tmp_clk: std_logic := '0';         --intermediate signal
    
begin
    clock_divider:process(CLK_in, reset) 
        
        begin
        if reset = '1' then
            div_count <= 1;
            tmp_clk <= '0';
            
        elsif (rising_edge(CLK_in)) then
            if (div_count = divider_coef) then
                tmp_clk <= not tmp_clk;
                div_count <= 1;
            else
                div_count <= div_count + 1;
            end if;
        end if;
          CLK_out <= tmp_clk; 
    end process clock_divider;
    
  
end Behavioral;