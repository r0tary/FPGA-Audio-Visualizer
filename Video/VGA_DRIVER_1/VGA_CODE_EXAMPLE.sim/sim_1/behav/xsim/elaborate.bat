@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1.3 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri May 12 13:42:36 +0200 2023
REM SW Build 2644227 on Wed Sep  4 09:45:24 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 0a99be6d4e8f4f0f8829c90c3f150508 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot VGA_tb_behav xil_defaultlib.VGA_tb -log elaborate.log"
call xelab  -wto 0a99be6d4e8f4f0f8829c90c3f150508 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot VGA_tb_behav xil_defaultlib.VGA_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
