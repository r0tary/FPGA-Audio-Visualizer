---------------------------------------------------------------------------------
-- Company: SDU SEM 4 Group 1
-- Engineer: G.R
-- 
-- Create Date: 05/10/2023 02:10:31 PM
-- Design Name: Image output generator
-- Module Name: pattern_generator - Behavioral
-- Project Name: VGA Driver and image generator for Zedboard
-- Target Devices: Zedboard
-- Tool Versions: 1.0
-- Description: Generates an output image
-- Current image: 12 vertical bars with varying heights 
-- 
-- Revision:0.02 - Outputs 12 bars with varying heights, values taken from ROM
-- Revision 0.01 - File Created
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith;
library UNISIM;
use UNISIM.VComponents.all;

entity pattern_generator is
    generic(
        RES_X : integer := 640;
        RES_Y : integer := 480;
        
        depth: integer := 12;  --store X elements
        addr_bits: integer := 4;    --required bits to store X elements
        width: integer := 10    --each element has Y bits
    );
    port( 
        clk, reset : in std_logic;
        video_active : in std_logic;
        x_cord : in integer range 0 to 640-1;
        y_cord : in integer range 0 to 480-1;
        R_switch, G_switch, B_switch: in std_logic;
        
        RGB : out std_logic_vector(23 downto 0)
    );
end pattern_generator;

architecture Behavioral of pattern_generator is
    type rom_type_8 is array (0 to 15) of std_logic_vector(7 downto 0);
    type rom_type_16 is array (0 to 15) of std_logic_vector(11 downto 0);
    
    signal R, G,B : unsigned(7 downto 0) := (others => '0'); --Red, Green and Blue seperated into three signals
    
    signal test_bars: rom_type_8 := (x"64", x"5A", x"50", x"46", x"3C", x"32", x"28", x"32", x"64", x"5A", x"50", x"46", x"3C", x"32", x"28", x"32"); 
    signal bar_location: rom_type_16 := (X"08C", X"0AC", X"0CC", X"0EC", X"10C", X"12C", X"14C", X"16C", X"18C", X"1AC", X"1CC", X"1EC", x"000", x"000", x"000", x"000");
    signal bar_start_height: rom_type_8 := (x"F0",x"F0",x"F0",x"F0",x"F0",x"F0",x"F0",x"F0",x"F0",x"F0",x"F0",x"F0", x"00", x"00", x"00", x"00");
    
    constant BAR_width: integer := 20;
    constant BAR_space: integer := 12;
    constant start_height_offset: integer := 0; --remember that Y0 is from the top
    signal bar_index: integer range 0 to 15 := 0;
    
    
begin
    RGB <= STD_LOGIC_VECTOR(R & G & B);
    
image_generator:process(clk,reset,x_cord,y_cord)
    begin
        if (reset = '1')then 
            R <= (others => '0');
            G <= (others => '0');
            B <= (others => '0');
        elsif rising_edge(clk) then
            if (video_active = '1') then
                if ((x_cord > (bar_location(bar_index) + Bar_width + 1)) and (bar_index >= 11)) then
                    bar_index <= 0;
                elsif (x_cord > (bar_location(bar_index) + Bar_width)) then
                    bar_index <= bar_index + 1;
                end if;
                
                if (((x_cord >= bar_location(bar_index)) and (x_cord < (bar_location(bar_index) + Bar_width))) and
                    ((y_cord <= bar_start_height(bar_index)) and 
                    y_cord >= (bar_start_height(bar_index) - test_bars(bar_index))))then 
                    -- which color is enabled depends on dip switch status
                    R <= (others => R_switch);
                    G <= (others => G_switch);
                    B <= (others => B_switch);
                else
                    R <= (others => '0');
                    G <= (others => '0');
                    B <= (others => '0');
                end if;
            else
                bar_index <= 0;
                R <= (others => '0');
                G <= (others => '0');
                B <= (others => '0');
            end if;
        end if;
    end process;
    
end Behavioral;
