vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/design_IF/ip/design_IF_IF_0_0/sim/design_IF_IF_0_0.v" \
"../../../bd/design_IF/sim/design_IF.v" \
"../../../bd/design_IF/ip/design_IF_RegsIfId_0_0/sim/design_IF_RegsIfId_0_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

