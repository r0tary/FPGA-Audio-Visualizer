onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xbip_utils_v3_0_10 -L dft_v4_1_1 -L secureip -lib xil_defaultlib xil_defaultlib.

do {wave.do}

view wave
view structure
view signals

do {.udo}

run -all

quit -force
