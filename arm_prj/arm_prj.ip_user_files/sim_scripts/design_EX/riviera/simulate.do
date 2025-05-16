onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_EX -L xil_defaultlib -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_EX xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_EX.udo}

run -all

endsim

quit -force
