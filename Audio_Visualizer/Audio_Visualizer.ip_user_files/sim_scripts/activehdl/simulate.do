onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ -L xil_defaultlib -L xbip_utils_v3_0_10 -L dft_v4_1_1 -L secureip -O5 xil_defaultlib.

do {wave.do}

view wave
view structure

do {.udo}

run -all

endsim

quit -force
