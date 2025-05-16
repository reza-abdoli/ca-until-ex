onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_ID -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_ID xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_ID.udo}

run -all

endsim

quit -force
