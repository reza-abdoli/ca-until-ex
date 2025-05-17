vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_ARM/ip/design_ARM_ARM_0_0/sim/design_ARM_ARM_0_0.v" \
"../../../bd/design_ARM/sim/design_ARM.v" \


vlog -work xil_defaultlib \
"glbl.v"

