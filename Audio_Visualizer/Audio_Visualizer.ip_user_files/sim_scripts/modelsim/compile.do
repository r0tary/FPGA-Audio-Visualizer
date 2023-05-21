vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/dft_v4_1_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap dft_v4_1_1 modelsim_lib/msim/dft_v4_1_1

vcom -work xil_defaultlib -64 -93 \
"../../../../Visualizer beta/new/DFT_CLK_DIV.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work dft_v4_1_1 -64 -93 \
"../../ipstatic/hdl/dft_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../Visualizer beta/ip/DFT/sim/DFT.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/ADAU1761_interface.vhd" \
"../../../../Visualizer beta/new/Testbench.vhd" \
"../../../../Video/Design_TB_Sources/VGA.vhd" \
"../../../../Video/Design_TB_Sources/Video_top.vhd" \
"../../../../Visualizer beta/new/Visualizer_top.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/adau1761_configuraiton_data.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/adau1761_izedboard.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/audio_top.vhd" \
"../../../../Video/Design_TB_Sources/clock_div.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/clocking.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/i2c.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/i2s_data_interface.vhd" \
"../../../../Visualizer beta/adau1761 driver vhdl/i3c2.vhd" \
"../../../../Video/Design_TB_Sources/pattern_generator.vhd" \

