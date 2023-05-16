--
-- Written by : Jonas Andresen
-- Inspired by: Amir Kasibovic
-- Description: Implements a simple MOD 6 counter.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
    port( count_enable : in std_logic;
          divider: in std_logic_vector (4 downto 0);
          clk : in std_logic;
          reset_count : in std_logic;
          terminal_count : out std_logic;
          counter_value : out unsigned(4 downto 0));
end counter;

architecture Behavioral of counter is
    signal counter_value_temp : unsigned(4 downto 0) := "00000";
    signal divider_temp : unsigned(4 downto 0) := "00000";
begin    
     
    divider_temp (4 downto 0) <= unsigned(divider (4 downto 0));
     process (clk) is
     begin
         if (rising_edge(clk)) then
             if (reset_count = '1') then 
                 counter_value_temp <= "00000";
             else
                 if (counter_value_temp = divider_temp) then
                    if (reset_count = '0') then
                        terminal_count <= '1';
                    else
                        terminal_count <= '0';
                    end if;
                 else
                    terminal_count <= '0';
                 end if;
                 if (count_enable = '1') then
                     if (counter_value_temp = divider_temp) then
                         counter_value_temp <= "00000";
                     else
                         counter_value_temp <= counter_value_temp +1;
                     end if;
                 end if;
            end if;
        end if;
    end process;
    
     counter_value <= counter_value_temp;
    
end Behavioral;
