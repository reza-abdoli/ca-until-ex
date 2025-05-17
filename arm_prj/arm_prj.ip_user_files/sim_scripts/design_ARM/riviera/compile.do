vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_ARM/ip/design_ARM_ARM_0_0/sim/design_ARM_ARM_0_0.v" \
"../../../bd/design_ARM/sim/design_ARM.v" \


vlog -work xil_defaultlib \
"glbl.v"

