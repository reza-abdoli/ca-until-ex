vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_IF/ip/design_IF_IF_0_0/sim/design_IF_IF_0_0.v" \
"../../../bd/design_IF/sim/design_IF.v" \
"../../../bd/design_IF/ip/design_IF_RegsIfId_0_0/sim/design_IF_RegsIfId_0_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

