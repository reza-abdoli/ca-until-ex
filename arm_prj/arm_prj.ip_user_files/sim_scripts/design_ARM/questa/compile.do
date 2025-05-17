vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/design_ARM/ip/design_ARM_ARM_0_0/sim/design_ARM_ARM_0_0.v" \
"../../../bd/design_ARM/sim/design_ARM.v" \


vlog -work xil_defaultlib \
"glbl.v"

