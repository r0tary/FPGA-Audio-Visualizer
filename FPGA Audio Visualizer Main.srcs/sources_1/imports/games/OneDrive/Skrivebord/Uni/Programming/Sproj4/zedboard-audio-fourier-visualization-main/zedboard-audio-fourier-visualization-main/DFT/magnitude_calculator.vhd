--
-- Written by : Amar Kasibovic
-- Square root function was written by "vipin" on https://vhdlguru.blogspot.com/2010/03/vhdl-function-for-finding-square-root.html
--
-- Description: combinatorial logic circuit that calculates the magnitude using the real and imaginary part, using the following formula:
--     magnitude = sqrt((imaginary_part)^2 + (real_part)^2).
--      Only the 5 MSBs were given in the output, since not more are needed.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.math_complex;

entity magnitude_calculator is
    port ( real_in : in signed(17 downto 0);                  -- sign + mantissa
           imag_in : in signed(17 downto 0);                  -- sign + mantissa
           magn_out : out std_logic_vector (4 downto 0)    -- magnitude output value from 0 to 31   
    );
end magnitude_calculator;

architecture Behavioral of magnitude_calculator is

    -----------------------------------------------------------------------------------------------------------------------
    -- AK : this functions performs a sqrt. Written by vipin.
    function  sqrt  ( d : UNSIGNED ) return UNSIGNED is
        variable a : unsigned(31 downto 0):=d;  --original input.
        variable q : unsigned(15 downto 0):=(others => '0');  --result.
        variable left,right,r : unsigned(17 downto 0):=(others => '0');  --input to adder/sub.r-remainder.
        variable i : integer:=0;
        begin
            for i in 0 to 15 loop
                right(0):='1';
                right(1):=r(17);
                right(17 downto 2):=q;
                left(1 downto 0):=a(31 downto 30);
                left(17 downto 2):=r(15 downto 0);
                a(31 downto 2):=a(29 downto 0);  --shifting by 2 bit.
                if ( r(17) = '1') then
                    r := left + right;
                else
                    r := left - right;
                end if;
                q(15 downto 1) := q(14 downto 0);
                q(0) := not r(17);
            end loop;
            return q;
    end sqrt;
    -----------------------------------------------------------------------------------------------------------------------
    
    signal real_squared : signed(35 downto 0);
    signal imag_squared : signed(35 downto 0);
    signal modulus_squared : signed (35 downto 0);
    signal modulus : unsigned(15 downto 0);
    
begin
    
    
    
    real_squared <= real_in*real_in;
    imag_squared <= imag_in*imag_in;
     
    modulus_squared <= real_squared + imag_squared;
    
    modulus <= sqrt(unsigned(modulus_squared(35 downto 4)));
    
    magn_out <= std_logic_vector(modulus(15 downto 11));
          
end Behavioral;

