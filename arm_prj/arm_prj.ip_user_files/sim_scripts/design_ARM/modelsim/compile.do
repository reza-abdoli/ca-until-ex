vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_ARM/ip/design_ARM_ARM_0_0/sim/design_ARM_ARM_0_0.v" \
"../../../bd/design_ARM/sim/design_ARM.v" \


vlog -work xil_defaultlib \
"glbl.v"

