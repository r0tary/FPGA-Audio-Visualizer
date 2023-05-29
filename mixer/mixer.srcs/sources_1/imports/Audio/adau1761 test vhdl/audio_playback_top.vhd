----------------------------------------------------------------------------------
-- Testbench for Audiointerface for Zedboard
--
-- Stefan Scholl, DC9ST
-- Microelectronic Systems Design Research Group
-- TU Kaiserslautern
-- 2014
----------------------------------------------------------------------------------
-- loopback mode: line in signals are routed to the headphone output 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity audio_testbench is
Generic (                       -- ADDED generic
        CLKP:   time := 10 ns;
        DEBT:   time := 6.5 ms      -- debounce time supports different 
        );
Port ( 
       btnU : in std_logic;
       btnD : in std_logic;
       volume : inout integer; 
       clk_100  : in    STD_LOGIC; -- 100 mhz master takt 
       AC_ADR0  : out   STD_LOGIC;  -- control signals to ADAU chip
       AC_ADR1  : out   STD_LOGIC;
       AC_GPIO0 : out   STD_LOGIC;  -- I2S MISO
       AC_GPIO1 : in    STD_LOGIC;  -- I2S MOSI
       AC_GPIO2 : in    STD_LOGIC;  -- I2S_bclk
       AC_GPIO3 : in    STD_LOGIC;  -- I2S_LR
       AC_MCLK  : out   STD_LOGIC;
       AC_SCK   : out   STD_LOGIC;
       AC_SDA   : inout STD_LOGIC
     
       );
end audio_testbench;



architecture Behavioral of audio_testbench is


COMPONENT audio_top
Generic (                       -- ADDED generic
        CLKP:   time := 10 ns;
        DEBT:   time := 6.5 ms      -- debounce time supports different 
        );
Port ( 
       btnU : in std_logic;
       btnD : in std_logic;
       volume : inout integer; 
       clk_100  : in    STD_LOGIC; -- 100 mhz input clock 
       AC_ADR0  : out   STD_LOGIC; -- contol signals to audio chip
       AC_ADR1  : out   STD_LOGIC;
       AC_GPIO0 : out   STD_LOGIC;  -- I2S MISO
       AC_GPIO1 : in    STD_LOGIC;  -- I2S MOSI
       AC_GPIO2 : in    STD_LOGIC;  -- I2S_bclk
       AC_GPIO3 : in    STD_LOGIC;  -- I2S_LR
       AC_MCLK  : out   STD_LOGIC;
       AC_SCK   : out   STD_LOGIC;
       AC_SDA   : inout STD_LOGIC;

       hphone_l  : in STD_LOGIC_VECTOR(23 downto 0);
       hphone_l_valid : in std_logic;
       hphone_r  : in STD_LOGIC_VECTOR(23 downto 0);
       hphone_r_valid_dummy : in std_logic;
       
       line_in_l    : out STD_LOGIC_VECTOR(23 downto 0);
       line_in_r    : out STD_LOGIC_VECTOR(23 downto 0);
       
       new_sample : out STD_LOGIC;     -- goes up for 1 clk cycle if new sample is transmitted received
       sample_clk_48k : out std_logic  -- sample clock 
       );
END COMPONENT;
   
    signal clk_100_buffered: std_logic;

    signal counter : unsigned (5 downto 0);
    signal hphone_l, hphone_r : std_logic_vector (23 downto 0);
    signal hphone_valid: std_logic;
    signal new_sample : std_logic;
    signal sample_clk_48k: std_logic;
    signal line_in_l, line_in_r : std_logic_vector (23 downto 0);

    -- keep signals for tracking them with the Logic Analyzer
    attribute keep : string;
    attribute keep of sample_clk_48k : signal is "true";
    attribute keep of hphone_l : signal is "true";
    attribute keep of hphone_r : signal is "true";
    
    attribute keep of line_in_l : signal is "true";
    attribute keep of line_in_r : signal is "true";

begin

i_audio : audio_top 
      generic map(
	   CLKP => CLKP,
	   DEBT => DEBT)
      port map (
	  btnU => btnU,
	  btnD => btnD,
	  volume => volume, 
      clk_100  => clk_100_buffered, 
      AC_ADR0  => AC_ADR0,
      AC_ADR1  => AC_ADR1,
      AC_GPIO0 => AC_GPIO0,
      AC_GPIO1 => AC_GPIO1,
      AC_GPIO2 => AC_GPIO2,
      AC_GPIO3 => AC_GPIO3,
      AC_MCLK  => AC_MCLK,
      AC_SCK   => AC_SCK,
      AC_SDA   => AC_SDA,
      
      hphone_l  => hphone_l,
      hphone_l_valid => hphone_valid,
      hphone_r  => hphone_r,
      hphone_r_valid_dummy => hphone_valid,   --  this valid will be discarded later
      
      line_in_l => line_in_l,  
      line_in_r => line_in_r,

      new_sample => new_sample,
      sample_clk_48k => sample_clk_48k
     
    );
    -----------------------------------------------------
    --loopback "line in" data to headphone output
    process (clk_100)
    begin
        if (clk_100'event and clk_100 = '1') then
            
            hphone_valid <= '0';
            hphone_l <= (others => '0');
            hphone_r <= (others => '0');
            
            if new_sample = '1' then
                counter <= counter + 1;
                
                hphone_valid <= '1';
                if volume = 10 then
                    hphone_l(22 downto 0) <= line_in_l(23 downto 1); --this is what goes to output left and right
                    hphone_r(22 downto 0) <= line_in_r(23 downto 1);
                end if;
                if volume = 9 then
                    hphone_l(19 downto 0) <= line_in_l(23 downto 4); --this is what goes to output left and right
                    hphone_r(19 downto 0) <= line_in_r(23 downto 4);
                end if;
                if volume = 8 then
                    hphone_l(17 downto 0) <= line_in_l(23 downto 6); --this is what goes to output left and right
                    hphone_r(17 downto 0) <= line_in_r(23 downto 6);
                end if;
                if volume = 7 then
                    hphone_l(15 downto 0) <= line_in_l(23 downto 8); --this is what goes to output left and right
                    hphone_r(15 downto 0) <= line_in_r(23 downto 8);
                end if;
                if volume = 6 then
                    hphone_l(13 downto 0) <= line_in_l(23 downto 10); --this is what goes to output left and right
                    hphone_r(13 downto 0) <= line_in_r(23 downto 10);
                end if;
                if volume = 5 then
                    hphone_l(11 downto 0) <= line_in_l(23 downto 12); --this is what goes to output left and right
                    hphone_r(11 downto 0) <= line_in_r(23 downto 12);
                end if;
                if volume = 4 then
                    hphone_l(9 downto 0) <= line_in_l(23 downto 14); --this is what goes to output left and right
                    hphone_r(9 downto 0) <= line_in_r(23 downto 14);
                end if;
                if volume = 3 then
                    hphone_l(7 downto 0) <= line_in_l(23 downto 16); --this is what goes to output left and right
                    hphone_r(7 downto 0) <= line_in_r(23 downto 16);
                end if;
                if volume = 2 then
                    hphone_l(5 downto 0) <= line_in_l(23 downto 18); --this is what goes to output left and right
                    hphone_r(5 downto 0) <= line_in_r(23 downto 18);
                end if;
                if volume = 1 then
                    hphone_l(3 downto 0) <= line_in_l(23 downto 20); --this is what goes to output left and right
                    hphone_r(3 downto 0) <= line_in_r(23 downto 20);
                end if;
                if volume = 0 then
                    hphone_l(1 downto 0) <= line_in_l(23 downto 22); --this is what goes to output left and right
                    hphone_r(1 downto 0) <= line_in_r(23 downto 22);
                end if;
            end if;
            
        end if;
    end process;


    -- global clock buffer for the clock signal
    BUFG_inst : BUFG
    port map (
       O => clk_100_buffered,   -- 1-bit output: Clock output
       I => clk_100             -- 1-bit input: Clock input
    );  

end Behavioral;
