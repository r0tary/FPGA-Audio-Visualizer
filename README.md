# FPGA-Audio-Visualizer

An audio visualizer implemented on a Zedboard FPGA, that takes in an audio signal, does a DFT over it and outputs vertical moving bars on a monitor driven by a VGA module. This project was initially made for a Zedboard FPGA, for a semster project in electronics, but most design sources can be used on other boards without modifications. 

For audio and interfacing with the **ADAU1761** on the Zedboard, this project uses [zedboard_audio]() by [ems-kl]()

For the VGA video interface this project makes use of [VHDL-VGA-MODULE]() written by [r0tary](), one of the contributors of this project.

The DFT block is taken from the IP catalog in Vivado.

## Project Description
[Audio_Visualizer]() contains the main Vivado folder for this project. 

### Design File Hierarchy
Below is the design file hierarchy in Vivado.

```
+- Design Sources/ 
| -- Audio Visualizer
  | -- audio_top.vhd
    | -- i_clocking.vhd           : Generate 48 MHz clock from the 100MHz internal clock
    | -- adau1761_izedboard.vhd   : Audio Interface for the Zedboard
  | -- DFT_top.vhd
    | -- DFT.xci                  : DFT ip core
    | -- magnitude_calculator.vhd : DFT Magnitude calculator
    | -- counter.vhd              : Counter
    | -- clk_div.vhd              : Clock divider, from 100MHz to 100kHz
  | -- Video_Top.vhd              : Top File
    | -- clock_div.vhd            : Clock divider, from 100MHz to 25MHz
    | -- VGA_timing.vhd           : Timing genration
    | -- pattern_genrator.vhd     : Output image generation
 | -- RAM_mag.vhd                 : Has RAM array for keeping magnitude values
+- Simulation Sources
| -- VGA_Module_tb.vhd            : Main simulation/testbench file, tests above 3 entitys
+- Constraints
| -- Zedbaord_master.xdc          : Constraints file for the Zedboard
```
*NOTE: There are more components under "adau1761_izedboard.vhd" which include things like i2s interfacing. There also is a sinewave generator in the vivado project that was used for simulation purposes for DFT testing*

### Contributors
|Contributor| Main Contribution to the project |
|--         |--                           | 
|[r0tary]() |Implemented the video interface and RAM design |
|[Azerio102]()|Implemented the DFT block into the project and its connection to the RAM|
|[szymons1009]()|Implemented and connected the audio interface|
|[InclinedFR]()|Worked on a volume incremneter for the audio out|

