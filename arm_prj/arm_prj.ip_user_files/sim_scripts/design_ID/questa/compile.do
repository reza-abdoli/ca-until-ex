vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/design_ID/ip/design_ID_IF_0_0/sim/design_ID_IF_0_0.v" \
"../../../bd/design_ID/ip/design_ID_RegsIfId_0_0/sim/design_ID_RegsIfId_0_0.v" \
"../../../bd/design_ID/ip/design_ID_ID_Stage_0_0/sim/design_ID_ID_Stage_0_0.v" \
"../../../bd/design_ID/ip/design_ID_ID_Stage_Reg_0_0/sim/design_ID_ID_Stage_Reg_0_0.v" \
"../../../bd/design_ID/sim/design_ID.v" \


vlog -work xil_defaultlib \
"glbl.v"

