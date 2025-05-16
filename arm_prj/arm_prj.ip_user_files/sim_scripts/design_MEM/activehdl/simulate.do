onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_MEM -L xil_defaultlib -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_MEM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_MEM.udo}

run -all

endsim

quit -force
