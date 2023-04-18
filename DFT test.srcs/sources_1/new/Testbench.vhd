library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFT_tester is
end DFT_tester;

architecture DFT_tester_Behaviour of DFT_tester is

COMPONENT Wave_32_as4
    PORT
    (
          Clk : in std_logic;
          Reset : in std_logic;
          Selected_BTN : in STD_LOGIC_VECTOR(3 downto 0);
          --Div_value : in std_logic_vector(3 downto 0);
          DATA : out std_logic_vector(7 downto 0);
          Strobe : out std_logic;
          count_reader : out std_logic_vector (9 downto 0)
    );
END COMPONENT;

COMPONENT DFT
    PORT
    (
            BLK_EXP : out std_logic_vector ( 3 downto 0 );
            CLK : in std_logic;
            CE : in std_logic;
            DATA_VALID : out std_logic;
            FD_IN : in std_logic;
            FD_OUT : out std_logic;
            FWD_INV : in std_logic;
            RFFD : out std_logic;
            SCLR : in std_logic;
            SIZE : in std_logic_vector ( 5 downto 0 );
            XK_IM : out std_logic_vector ( 7 downto 0 );
            XK_RE : out std_logic_vector ( 7 downto 0 );
            XN_IM : in std_logic_vector ( 7 downto 0 );
            XN_RE : in std_logic_vector ( 7 downto 0 )
    );
END COMPONENT;

         signal Clk : std_logic := '0';
         signal Selected_BTN : STD_LOGIC_VECTOR(3 downto 0);
         --signal Div_value : std_logic_vector(3 downto 0);
         signal DATA :  std_logic_vector(7 downto 0) := "00000000";
         signal Strobe :  std_logic;
         signal count_reader : std_logic_vector(9 downto 0);
         signal reset: std_logic;
         signal BLK_EXP : std_logic_vector ( 3 downto 0 );
         signal CE : std_logic := '1';
         signal DATA_VALID : std_logic;
         signal FD_IN : std_logic := '0';
         signal FD_OUT : std_logic;
         signal FWD_INV : std_logic := '1';
         signal RFFD : std_logic;
         signal SIZE : std_logic_vector ( 5 downto 0 ) := "000100";
         signal XK_IM : std_logic_vector ( 7 downto 0 );
         signal XK_RE : std_logic_vector ( 7 downto 0 ):= "00000000";
         signal XN_IM : std_logic_vector ( 7 downto 0 ):= "00000000";
         signal XN_RE : std_logic_vector ( 7 downto 0 );
         signal finished: std_logic := '0';

begin

WUT: Wave_32_as4 Port Map (clk => clk, reset => reset, selected_btn => selected_btn, DATA => DATA, strobe => strobe, count_reader => count_reader);
DUT: DFT Port Map (clk => clk, SCLR => reset, BLK_EXP => BLK_EXP, DATA_VALID => DATA_VALID, FD_IN => FD_IN, FD_OUT => FD_OUT, FWD_INV => FWD_INV, RFFD => RFFD, SIZE => SIZE, XK_IM => XK_IM, XK_RE => XK_RE, XN_IM => XN_IM, XN_RE => XN_RE, CE => CE);

XN_RE <= Data;
clk <= not clk after 5 ns when finished /= '1' else '0';


Data_flag: Process
--variable count : std_logic_vector (7 downto 0) := "00000000";
begin
wait for 30 ns;
    --if  (count < "00110011") then
        --f (rising_edge(clk)) then
            --if (RFFD = '1') then
                FD_IN <= '1';
            --else 
                --FD_IN <= '0';
            --end if;
        --count := count +1;
        --else
        wait;
        --end if;    
    --else
        --wait;
    --end if;
end process;

stim_proc: Process
begin
reset <= '1';
wait for 10ns;
reset <= '0';
wait for 10ns;
selected_btn <= "0001";
--div_value <= "0001";
wait for 1000 ns;

finished <= '1';
wait;
end process;

end DFT_tester_Behaviour;
