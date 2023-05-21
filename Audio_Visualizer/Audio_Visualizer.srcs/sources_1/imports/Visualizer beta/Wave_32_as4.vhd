
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity Wave_32_as4 is
    Port (Clk : in std_logic;
          Reset : in std_logic;
          Selected_BTN : in STD_LOGIC_VECTOR(3 downto 0):="0001";
          --Div_value : in std_logic_vector(3 downto 0);
          DATA : out std_logic_vector(23 downto 0);
          Strobe : out std_logic;
          count_reader : out std_logic_vector (9 downto 0));
end Wave_32_as4;

architecture Behavioral of Wave_32_as4 is
type rom_type is array (0 to 31) of std_logic_vector (23 downto 0); 
                
signal SineWave : rom_type := (
    X"800000",X"98f8b8",X"b0fbc5",X"c71cec",
X"da8279",X"ea6d98",X"f641ae",X"fd8a5e",
X"ffffff",X"fd8a5e",X"f641ae",X"ea6d98",
X"da8279",X"c71cec",X"b0fbc5",X"98f8b8",
X"800000",X"670747",X"4f043a",X"08e313",
X"257d86",X"159267",X"09be51",X"0275a1",
X"000000",X"0275a1",X"09be51",X"159267",
X"257d86",X"38e313",X"4f043a",X"670747"
); 
							 
--signal SquareWave : rom_type:= (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
--                               X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
--                                X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF",
--                                X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF");                           

--signal SinoWave : rom_type:= (X"90", X"87", X"C1", X"B5", X"EA", X"D8", X"FF", X"EB",
--                              X"FF", X"FC", X"F9", X"D8", X"EA", X"B5", X"CE", X"7A", 
--                              X"A7", X"3E", X"7B", X"0B", X"2F", X"0B", X"0E", X"02", 
--                              X"00", X"06", X"00", X"1F", X"19", X"4E", X"37", X"6D");  
                              
--signal TriaWave : rom_type:= (X"00", X"10", X"20", X"30", X"40", X"50", X"60", X"70",
--                              X"80", X"90", X"A0", X"B0", X"C0", X"D0", X"E0", X"F0", 
--                              X"FF", X"F0", X"E0", X"D0", X"C0", X"B0", X"A0", X"90", 
--                              X"80", X"70", X"60", X"50", X"40", X"30", X"20", X"10");  



begin
 process (Clk, Reset)
  variable clk_count : std_logic_vector(9 downto 0):=(others => '0') ;
  variable ADDR : std_logic_vector(4 downto 0):= (others => '0');
  variable divider : std_logic_vector(9 downto 0);
 
  Begin
  divider(9 downto 0) := "0000000000";
  if (Reset = '1') then
       Clk_count := (others => '0');
       ADDR := (others => '0');
  else
       if (Rising_edge(Clk)) then
          if (Clk_count = Divider) then
                case Selected_BTN is
                when "0001" => 
                       DATA <= SineWave(conv_integer(ADDR));
                --when "0010" =>
                --       DATA <= SquareWave(conv_integer(ADDR));
                -- when "0100" =>
                --       DATA <= SinoWave(conv_integer(ADDR));    
                -- when "1000" =>
                --       DATA <= TriaWave(conv_integer(ADDR));    
                 when others => NULL;
                end case;
               Strobe <= '1';
               ADDR := ADDR +1;
               Clk_count := (others => '0');
              else 
                clk_count := clk_count +1;
                Strobe <= '0';
           end if;
           count_reader <= clk_count;
       end if;
   end if;   
   end process;

end Behavioral;
