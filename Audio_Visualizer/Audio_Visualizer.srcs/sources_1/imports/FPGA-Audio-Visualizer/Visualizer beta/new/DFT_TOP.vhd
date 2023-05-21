library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity DFT_top is
    port
    (
    left_channel_in: in std_logic_vector (17 downto 0);
    right_channel_in: in std_logic_vector (17 downto 0);
    clk_100: in std_logic;
    magn_out_highest: out std_logic_vector (4 downto 0);
    MAGNITUDE_VALID : inout std_logic;
    XK_RE_Probe: out signed (17 downto 0);
    ADDR_dft: inout integer range 0 to 15 := 0
    
    );
end DFT_top;

architecture DFT_top_Behaviour of DFT_top is
 
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
            XK_IM : out std_logic_vector ( 17 downto 0 );
            XK_RE : out std_logic_vector ( 17 downto 0 );
            XN_IM : in std_logic_vector ( 17 downto 0 );
            XN_RE : in std_logic_vector ( 17 downto 0 )
    );
END COMPONENT;

COMPONENT clk_div
    port(
        CLK_in: in std_logic;
        reset: in std_logic;
        divider_coef: in integer;
        CLK_out: out std_logic);
 end COMPONENT;

COMPONENT Magnitude_Calculator
port
(          real_in : in signed(17 downto 0);                  -- sign + mantissa
           imag_in : in signed(17 downto 0);                  -- sign + mantissa
           magn_out : out std_logic_vector (4 downto 0)         -- magnitude output value from 0 to 31   
);
END COMPONENT;

COMPONENT counter 
    port( count_enable : in std_logic;
          divider: in std_logic_vector (4 downto 0);
          clk : in std_logic;
          reset_count : in std_logic;
          terminal_count : out std_logic;
          counter_value : out unsigned(4 downto 0));
END COMPONENT;

         --signal Clk : std_logic := '0';
         --signal Selected_BTN : STD_LOGIC_VECTOR(3 downto 0);
         --signal Div_value : std_logic_vector(3 downto 0);
         --signal DATA :  std_logic_vector(15 downto 0) := "0000000000000000";
         --signal DATA_INV: std_logic_vector(7 downto 0) := "00000000";
         --signal Strobe :  std_logic;
         --signal count_reader : std_logic_vector(9 downto 0);
         signal reset: std_logic;
         signal dft_clk: std_logic;
         signal BLK_EXP : std_logic_vector ( 3 downto 0 );
         signal CE : std_logic := '1';
         signal DATA_VALID : std_logic;
         signal FD_IN : std_logic := '1';
         signal FD_OUT : std_logic;
         signal FWD_INV : std_logic := '1';
         signal RFFD : std_logic;
         signal SIZE : std_logic_vector ( 5 downto 0 ) := "001111";
         signal XK_IM : signed ( 17 downto 0 );
         signal XK_RE : signed ( 17 downto 0 ):= "000000000000000000";
         signal XN_IM : STD_LOGIC_VECTOR ( 17 downto 0 ):= "000000000000000000";
         signal XN_RE : std_logic_vector ( 17 downto 0 );
         signal imag_in: signed (17 downto 0);
         signal real_in: signed (17 downto 0);
         signal finished: std_logic := '0';
         --signal magn_out: std_logic_vector (4 downto 0);
         signal left_channel_temp: unsigned (17 downto 0);
         signal right_channel_temp: unsigned (17 downto 0);
         signal count_enable :  std_logic;
         signal divider: std_logic_vector (4 downto 0);
         --signal clk_100 :  std_logic;
         signal reset_count : std_logic;
         signal terminal_count : std_logic;
         signal counter_value : unsigned(4 downto 0);
         signal highest_magnitude_temp : unsigned(4 downto 0) := "00000";
         signal magn_temp: std_logic_vector(4 downto 0) := "00000";
         -- state declarations
         type states is (Idle, 
                    LockDelay1,
                    LockDelay2,
                    LockDelay3,
                    ResetHighest,
                    ReadData);
         signal current_state, next_state : states;

begin
DFT_block: DFT 
    Port Map (
        clk => dft_clk, 
        SCLR => reset, 
        BLK_EXP => BLK_EXP, 
        DATA_VALID => DATA_VALID, 
        FD_IN => FD_IN, 
        FD_OUT => FD_OUT, 
        FWD_INV => FWD_INV, 
        RFFD => RFFD, 
        SIZE => SIZE, 
        STD_LOGIC_VECTOR (XK_IM) => XK_IM, 
        STD_LOGIC_VECTOR (XK_RE) => XK_RE, 
        XN_IM => XN_IM, 
        XN_RE => XN_RE, 
        CE => CE);
Magnitude_block: Magnitude_Calculator 
    port map (
        magn_out => magn_temp, 
        imag_in => imag_in, 
        real_in => real_in);
        
counter_block: component counter
    port map (
        clk => dft_clk,
        count_enable => count_enable,
        reset_count => reset_count,
        terminal_count => terminal_count,
        counter_value => counter_value,
        divider => divider);
        
clk_100_100k: component clk_div
    port map(
        CLK_in => clk_100, 
        reset => reset,
        CLK_out => dft_clk,
        divider_coef => 500);
            
--DATA_INV <= not DATA;
--XN_IM <= DATA_INV;
right_channel_temp <= unsigned(right_channel_in);
left_channel_temp <= unsigned(left_channel_in);
XN_RE <= STD_LOGIC_VECTOR((unsigned(left_channel_temp)/2)+(unsigned(right_channel_temp)/2)); 
imag_in (16 downto 0) <= XK_IM (17 downto 1);
imag_in (17 downto 17) <= (others => '0');
real_in (16 downto 0) <= XK_RE (17 downto 1);
real_in (17 downto 17) <= (others => '0');
XK_RE_PROBE (17 downto 0) <= XK_RE (17 downto 0);

divider <= "10111";
stato_presente: process(dft_clk) is
    begin
        if rising_edge(dft_clk) then   
            current_state <= next_state;
        end if;
    end process;
    
    stato_futuro: process(current_state, fd_out, data_valid) is
    begin
        next_state <= Idle;
        case current_state is
            when Idle =>
                if (fd_out = '1') then
                    next_state <= LockDelay1;
                end if;
            when LockDelay1 =>
                next_state <= LockDelay2;
            when LockDelay2 =>
                next_state <= LockDelay3;
            when LockDelay3 =>
                next_state <= ReadData;
            when ReadData =>  
                if (terminal_count = '1') then
                    if (data_valid = '1') then
                        next_state <= ResetHighest;
                    end if;
                else
                    next_state <= LockDelay1;
                end if;
            when ResetHighest =>
                next_state <= LockDelay1;
        end case;
    end process;
    
    uscite: process(current_state) is
    begin
        magnitude_valid <= '0';
        reset_count <= '0';
        count_enable <= '0';
        case (current_state) is
            when Idle =>
                ce <= '1';
            when LockDelay1 =>      -- Delay needed for the calculations that the magnitude calculator has to perform.
                ce <= '0';
            when LockDelay2 =>
                ce <= '0';
            when LockDelay3 =>
                ce <= '0';
                if (unsigned(magn_temp) > highest_magnitude_temp) then
                    highest_magnitude_temp <= unsigned(magn_temp);
                end if;
            when ReadData =>
                ce <= '1';
                if (terminal_count = '1') then
                    magnitude_valid <= '1';
                    reset_count <= '1';
                else
                    count_enable <= '1';
                end if;
            when ResetHighest =>
                ce <= '0';
                highest_magnitude_temp <= "00000";
        end case;
    end process;

data_read: process(magnitude_valid) is
    begin
        if rising_edge(magnitude_valid) then
            magn_out_highest <= std_logic_vector(highest_magnitude_temp);
            addr_dft <= addr_dft + 1;
            
        elsif (addr_dft >= 13) then
            addr_dft <= 0;
        end if;
        
 end process;       

end DFT_top_Behaviour;
