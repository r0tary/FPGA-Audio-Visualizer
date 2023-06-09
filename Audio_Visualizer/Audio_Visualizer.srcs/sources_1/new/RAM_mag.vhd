----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2023 04:49:42 PM
-- Design Name: 
-- Module Name: RAM_mag - Behavioral
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
use ieee.numeric_std.all;

entity RAM_mag is
    Port ( clk, reset : in STD_LOGIC;
           we : in STD_LOGIC;
           addr_r : in integer range 0 to 15;
           addr_w : in integer range 0 to 15;
           din : in std_logic_vector(4 downto 0);
           dout : out std_logic_vector(4 downto 0);
           line_in_l: in std_logic_vector(23 downto 0));
end RAM_mag;

architecture Behavioral of RAM_mag is
    type ram_type is array (0 to 15) of std_logic_vector (4 downto 0);
    signal ram_single_port : ram_type := ("00000","00000","00000","00000","00000",
                                            "00000","00000","00000","00000","00000",
                                            "00000","00000","00000","00000","00000","00000");
begin
  ram_write:process(clk)
  begin 
    if (clk'event and clk='1') then
      --if (we='1') then -- write data to address 'addr'
        --convert 'addr' type to integer from std_logic_vector
        ram_single_port(addr_w) <= din;
      --end if;
  end if;
  end process;
  
  --process(we)
    --variable toggle: std_logic := '0'; 
  --begin
  
  --if (we'event and we = '0') then
    --toggle := '1';
  --end if;
   
  --if (we'event and we = '1') then
    --toggle := '0';
  --end if;
  --end process;

  -- read data from address 'addr'
  -- convert 'addr' type to integer from std_logic_vector
  process(clk)
  begin 
  
    if (clk'event and clk='1') then
        if (not(line_in_l) > "000000000001000000000000")then
            dout<=ram_single_port(addr_r);
        else
            dout<="00000";
        end if;
  end if;
  end process;


end Behavioral;
