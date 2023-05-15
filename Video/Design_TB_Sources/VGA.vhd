----------------------------------------------------------------------------------
-- Company: SDU SEM 4 Group 1 
-- Engineer: G.R
-- 
-- Create Date: 03/28/2023 09:48:15 AM
-- Design Name: VGA Driver 
-- Module Name: VGA - Behavioral
-- Project Name: VGA video output for Zedboard 
-- Target Devices: Zedboard
-- Tool Versions: 2.0
-- Description: VGA video driver for a Zedboard FPGA board. Resolution is 640x480x60Hz
--  Uses the 100MHz clock source and converts it to 25MHz to drive the resolution to the display

-- Dependencies: Clock divider - from 100MHz to 25 MHz
-- 
-- Revision 0.07 - Pattern generator now taken out and is its own seperate design, with Xpos and Ypos being outputs sent to it
-- Revision 0.06 - Hactive and Vactive now implemented 
-- Revision 0.05 - Positional Counter and synchronization for H and V are now put in one process together
-- Revision 0.04 - Changed to single 24 bit RGB stream, changed videoOn as a port
-- Revision 0.03 - Change colors using switches, RGB signals now have 4 bits per analog signal
-- Revision 0.02 - More Extensively commented 
-- Revision 0.01 - File Created, output is a square in the up left corner
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity VGA is
    generic(
        RES_X: natural := 640;
        RES_Y: natural := 480
    );
    port(
        --inputs
        clk: in std_logic;                         -- 100MHz clock
        RST: in std_logic;                         -- Universal reset
        --outputs
        Xpos: out integer range 0 to 640-1;
        Ypos: out integer range 0 to 480-1;
        Hsync: inout std_logic; 
        Vsync: out std_logic;                       -- Horizontal and Vertical sync
        videoOn: out std_logic                      -- Indicates if hPos and vPos are in drawable area
    );                    
end VGA;

architecture Behavioral of VGA is
    
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
    
    signal Hactive, Vactive: std_logic;
                                       --
begin
    
    --Horizontal position counter
        --Increments and goes through a horizontal line 
    hor_pos_c: process(clk, RST)
    begin
        if (RST = '1')then
            hPos <= 0;
            Hsync <= '0';
        elsif rising_edge(clk) then
            hPos <= hPos + 1;
            if (hPos = HSP) then
                Hsync <= '1';
            elsif (hPos = (HSP + HBP)) then
                Hactive <= '1';
            elsif (hPos = (HSP + HBP + HD)) then
                Hactive <= '0';
            elsif (hPos = (HSP + HBP + HD + HFP)) then
                Hsync <= '0';
                hPos <= 0;
            end if;
        end if;
    end process;
        
    --Vertical position counter
        --Increments and goes through every vertical line
    ver_pos_c: process(Hsync, RST)
    begin
        if (RST = '1')then
            vPos <= 0;
        elsif rising_edge(Hsync) then
                vPos <= vPos + 1; 
                if (vPos = VSP) then
                    Vsync <= '1';
                    Vactive <= '0';
                elsif (vPos = (VSP + VBP)) then
                    Vactive <= '1';
                elsif (vPos = (VSP + VBP + VD)) then
                    Vactive <= '0';
                elsif (vPos = (VSP + VBP + VD + VFP)) then
                    Vsync <= '0';
                    vPos <= 0;
                end if;    
            end if; 
    end process;
    
    videoOn <= Hactive AND Vactive;
    
    X_Y_pos: process(RST, hPos,vPos)
    begin
        if (RST = '1') then
            Xpos <= 0;
            Ypos <= 0;
        elsif (videoOn = '1') then
            Xpos <= hPos - (HSP + HBP);
            Ypos <= vPos - (VSP + VBP);
        end if;
    end process;
    
end Behavioral;
