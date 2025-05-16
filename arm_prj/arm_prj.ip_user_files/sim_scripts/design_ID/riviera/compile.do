vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_ID/ip/design_ID_IF_0_0/sim/design_ID_IF_0_0.v" \
"../../../bd/design_ID/ip/design_ID_RegsIfId_0_0/sim/design_ID_RegsIfId_0_0.v" \
"../../../bd/design_ID/ip/design_ID_ID_Stage_0_0/sim/design_ID_ID_Stage_0_0.v" \
"../../../bd/design_ID/ip/design_ID_ID_Stage_Reg_0_0/sim/design_ID_ID_Stage_Reg_0_0.v" \
"../../../bd/design_ID/sim/design_ID.v" \


vlog -work xil_defaultlib \
"glbl.v"

