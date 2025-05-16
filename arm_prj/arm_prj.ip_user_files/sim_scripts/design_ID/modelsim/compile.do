vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_ID/ip/design_ID_IF_0_0/sim/design_ID_IF_0_0.v" \
"../../../bd/design_ID/ip/design_ID_RegsIfId_0_0/sim/design_ID_RegsIfId_0_0.v" \
"../../../bd/design_ID/ip/design_ID_ID_Stage_0_0/sim/design_ID_ID_Stage_0_0.v" \
"../../../bd/design_ID/ip/design_ID_ID_Stage_Reg_0_0/sim/design_ID_ID_Stage_Reg_0_0.v" \
"../../../bd/design_ID/sim/design_ID.v" \


vlog -work xil_defaultlib \
"glbl.v"

