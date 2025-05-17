vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 \
"../../../bd/design_WB/ip/design_WB_EXE_Stage_0_0/sim/design_WB_EXE_Stage_0_0.v" \
"../../../bd/design_WB/ip/design_WB_EXE_Stage_Reg_0_0/sim/design_WB_EXE_Stage_Reg_0_0.v" \
"../../../bd/design_WB/ip/design_WB_ID_Stage_0_0/sim/design_WB_ID_Stage_0_0.v" \
"../../../bd/design_WB/ip/design_WB_ID_Stage_Reg_0_0/sim/design_WB_ID_Stage_Reg_0_0.v" \
"../../../bd/design_WB/ip/design_WB_IF_0_0/sim/design_WB_IF_0_0.v" \
"../../../bd/design_WB/ip/design_WB_MEM_Stage_0_0/sim/design_WB_MEM_Stage_0_0.v" \
"../../../bd/design_WB/ip/design_WB_MEM_Stage_Reg_0_0/sim/design_WB_MEM_Stage_Reg_0_0.v" \
"../../../bd/design_WB/ip/design_WB_RegsIfId_0_0/sim/design_WB_RegsIfId_0_0.v" \
"../../../bd/design_WB/ip/design_WB_StatusRegister_0_0/sim/design_WB_StatusRegister_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../arm_prj.srcs/sources_1/bd/design_WB/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_WB/ip/design_WB_xlconstant_0_0/sim/design_WB_xlconstant_0_0.v" \
"../../../bd/design_WB/ip/design_WB_WB_Stage_0_0/sim/design_WB_WB_Stage_0_0.v" \
"../../../bd/design_WB/sim/design_WB.v" \

vlog -work xil_defaultlib \
"glbl.v"

