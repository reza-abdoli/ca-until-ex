onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_EX xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_EX.udo}

run -all

quit -force
