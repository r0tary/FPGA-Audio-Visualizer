----------------------------------------------------------------------------------
-- Company: SDU SEM 4 Group 1 
-- Engineer: G.R
-- 
-- Create Date: 03/28/2023 09:48:15 AM
-- Design Name: VGA Driver 
-- Module Name: VGA - Behavioral
-- Project Name: VGA driver and image generation for Zedboard 
-- Target Devices: Zedboard
-- Tool Versions: 1.0
-- Description: VGA video driver for a Zedboard FPGA board. Resolution is 640x480x60Hz
--  Uses the 100MHz clock source and converts it to 25MHz to drive the resolution to the display

-- Dependencies: Clock divider - from 100MHz to 25 MHz
-- 
-- Revision 0.03 - Change colors using switches, RGB signals now have 4 bits per analog signal
-- Revision 0.02 - More Extensively commented 
-- Revision 0.01 - File Created, output is a square in the up left corner
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity VGA is
    port(clk: in std_logic;                         -- 100MHz clock
        RST: in std_logic;                          -- Universal reset
        R_switch, G_switch, B_switch: in std_logic;
        
        Hsync: out std_logic;                       -- Horizontal sync
        Vsync: out std_logic;                       -- Vertical sync
        R,G,B: out std_logic_vector(3 downto 0));   -- Red, Green, Blue analog signals
end VGA;

architecture Behavioral of VGA is
    component clk_div                           
        port(Clk_in, reset: in std_logic;
            Clk_out: out std_logic);
    end component;
    
    signal clk_25: std_logic;                       -- 25 MHz clock
    signal hPos: integer := 0;                      -- Horizontal position
    signal vPos: integer := 0;                      -- Vertical position
    
    --Horizontal
    constant HD: integer := 639;                    -- 639 Horizontal Display (640)
    constant HFP: integer := 16;                    -- 16 Right border (front porch)
    constant HSP: integer := 96;                    -- 96 Sync pulse (Retrace)
    constant HBP: integer := 48;                    -- 48 Left border (back porch)
    
    --Vertical
    constant VD: integer := 479;                    -- 479 Vertical Display (480)
    constant VFP: integer := 10;                    -- 10 Right border (front porch)
    constant VSP: integer := 2;                     -- 2 Sync pulse (Retrace)
    constant VBP: integer := 33;                    -- 33 Left border (back porch)
    
    signal videoOn : std_logic := '0';              -- Can draw or not - 0 = cant draw, 1 = can draw
    
begin
    --Converting the 100MHz clock to a 25MHz clock
    clk_div_100_25: clk_div port map(clk, RST, clk_25);-- Clock division from 100Mhz to 25 MHz 
    
    --Horizontal position counter
        --Increments and goes through a horizontal line 
    hor_pos_c: process(clk_25, RST)
    begin
        if (RST = '1')then
            hPos <= 0;
        elsif (clk_25'event and clk_25 = '1') then
            if (hPos = (HD + HFP + HSP + HBP)) then
                hPos <= 0;
            else
                hPos <= hPos + 1;    
            end if;
        end if;
    end process;
        
    --Vertical position counter
        --Increments and goes through every vertical line
    ver_pos_c: process(clk_25, RST)
    begin
        if (RST = '1')then
            vPos <= 0;
        elsif (clk_25'event and clk_25 = '1') then
            if (hPos = (HD + HFP + HSP + HBP)) then --in order to keep it synchronized,
                        --will only increment vertical lines when the horizontal line is done
                if (vPos = (VD + VFP + VSP + VBP)) then
                    VPos <= 0;
                else
                    vPos <= vPos + 1;    
                end if;
            end if;
        end if;  
    end process;

    Horizontal_sync: process(clk_25, RST, hPos)
    begin
        if (RST = '1')then
            Hsync <= '0'; 
        elsif (clk_25'event and clk_25 = '1') then
            if((hPos <= (HD + HFP)) OR (hPos > HD + HFP + HSP)) then
                Hsync <= '1';
            else
                Hsync <= '0';
            end if;
        end if;
    end process;

    Vertical_sync: process(clk_25, RST, vPos)
    begin
        if (RST = '1')then
            Vsync <= '0';
        elsif (clk_25'event and clk_25 = '1') then
            if((vPos <= (VD + VFP)) OR (vPos > VD + VFP + VSP)) then
                Vsync <= '1';
            else
                Vsync <= '0';
            end if;
        end if;
    end process;
    
    Video_ON: process(clk_25, RST, hPos, vPos)
    begin
        if (RST = '1')then
            videoOn <= '0';
        elsif (clk_25'event and clk_25 = '1') then
            if(hPos <= HD and vPos <= VD) then
                videoOn <= '1';
            else
                videoOn <= '0';
            end if;
        end if;
    end process;
    
    --Output image on the screen
    image_generator: process(clk_25, RST, hPos, vPos, videoOn)
    begin
        if (RST = '1')then 
            R <= (others => '0');
            G <= (others => '0');
            B <= (others => '0');
        elsif (clk_25'event and clk_25 = '1') then
            if(videoOn = '1') then
                -- draw square in specified area 
                if((hPos >= 10 and hPos <= 60) AND (vPos >= 10 and vPos <= 60))then
                    -- which color is enabled depends on dip switch status
                    R <= (others => R_switch);
                    G <= (others => G_switch);
                    B <= (others => B_switch);
                else
                -- rest of the screen is black
                    R <= (others => '0');
                    G <= (others => '0');
                    B <= (others => '0');     
                end if;
            else
                R <= (others => '0');
                G <= (others => '0');
                B <= (others => '0');
            end if;
        end if;
    end process;
    
end Behavioral;
