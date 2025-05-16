vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_IF/ip/design_IF_IF_0_0/sim/design_IF_IF_0_0.v" \
"../../../bd/design_IF/sim/design_IF.v" \
"../../../bd/design_IF/ip/design_IF_RegsIfId_0_0/sim/design_IF_RegsIfId_0_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

