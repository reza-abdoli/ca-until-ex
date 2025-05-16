vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_EX/ip/design_EX_ID_Stage_0_0/sim/design_EX_ID_Stage_0_0.v" \
"../../../bd/design_EX/ip/design_EX_ID_Stage_Reg_0_0/sim/design_EX_ID_Stage_Reg_0_0.v" \
"../../../bd/design_EX/ip/design_EX_IF_0_0/sim/design_EX_IF_0_0.v" \
"../../../bd/design_EX/ip/design_EX_RegsIfId_0_0/sim/design_EX_RegsIfId_0_0.v" \
"../../../bd/design_EX/ip/design_EX_EXE_Stage_0_0/sim/design_EX_EXE_Stage_0_0.v" \
"../../../bd/design_EX/ip/design_EX_EXE_Stage_Reg_0_0/sim/design_EX_EXE_Stage_Reg_0_0.v" \
"../../../bd/design_EX/ip/design_EX_StatusRegister_0_0/sim/design_EX_StatusRegister_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../arm_prj.srcs/sources_1/bd/design_EX/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_EX/ip/design_EX_xlconstant_0_0/sim/design_EX_xlconstant_0_0.v" \
"../../../bd/design_EX/sim/design_EX.v" \

vlog -work xil_defaultlib \
"glbl.v"

