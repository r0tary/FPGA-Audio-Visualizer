----------------------------------------------------------------------------------
-- Testbench for Audiointerface for Zedboard
--
-- Stefan Scholl, DC9ST
-- Microelectronic Systems Design Research Group
-- TU Kaiserslautern
-- 2014
----------------------------------------------------------------------------------
----- UPDATE 2023 - Pitch correcton -----
-- A test file performing a simple Pitch Correction for input
-- and plays it on output
-- 2023 Szymon Sokolowski, SDU student

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
Port ( clk_100  : in    STD_LOGIC; -- 100 mhz master takt 
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
Port ( clk_100  : in    STD_LOGIC; -- 100 mhz input clock 
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
    
    -- Declare additional signals for the pitch correction algorithm
signal prev_sample_l: std_logic_vector(23 downto 0);
signal prev_sample_r: std_logic_vector(23 downto 0);
signal diff_l: integer;
signal diff_r: integer;
signal pitch_shift_l: integer;
signal pitch_shift_r: integer;
signal pitch_shift_direction_l: integer;
signal pitch_shift_direction_r: integer;
signal pitch_threshold: integer := 1000; -- threshold value to determine whether pitch correction should be applied or not


    -- keep signals for tracking them with the Logic Analyzer
    attribute keep : string;
    attribute keep of sample_clk_48k : signal is "true";
    attribute keep of hphone_l : signal is "true";
    attribute keep of hphone_r : signal is "true";
    
    attribute keep of line_in_l : signal is "true";
    attribute keep of line_in_r : signal is "true";

begin

i_audio : audio_top port map (
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

    
   
   
    --TEST Pitch correction 
-- process the audio samples
process (clk_100)
begin
    if (clk_100'event and clk_100 = '1') then
        
        -- reset the output signals
        hphone_valid <= '0';
        hphone_l <= (others => '0');
        hphone_r <= (others => '0');
        
        -- check if there is a new audio sample
        if new_sample = '1' then
            
            -- increment the sample counter
            counter <= counter + 1;
            
            -- perform pitch correction on the left channel
            prev_sample_l <= line_in_l;
            diff_l <= to_integer(signed(line_in_l) - signed(prev_sample_l));
            pitch_shift_direction_l <= 1;
            if diff_l < -pitch_threshold then
                pitch_shift_direction_l <= -1;
            end if;
            pitch_shift_l <= pitch_shift_direction_l * (abs(diff_l) / 1000);

            hphone_l <= std_logic_vector(signed(line_in_l) + to_signed(pitch_shift_l, hphone_l'length));
            
            -- perform pitch correction on the right channel
            prev_sample_r <= line_in_r;
            diff_r <= to_integer(signed(line_in_r) - signed(prev_sample_r));
            pitch_shift_direction_r <= 1;
            if diff_r < -pitch_threshold then
                pitch_shift_direction_r <= -1;
            end if;
            pitch_shift_r <= pitch_shift_direction_r * (abs(diff_r) / 1000);
            hphone_r <= std_logic_vector(signed(line_in_r) + to_signed(pitch_shift_r, hphone_r'length));
            
            -- set the output valid signal
            hphone_valid <= '1';
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
