vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_MEM/ip/design_MEM_MEM_Stage_0_0/sim/design_MEM_MEM_Stage_0_0.v" \
"../../../bd/design_MEM/sim/design_MEM.v" \
"../../../bd/design_MEM/ip/design_MEM_EXE_Stage_0_1/sim/design_MEM_EXE_Stage_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_EXE_Stage_Reg_0_1/sim/design_MEM_EXE_Stage_Reg_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_ID_Stage_0_1/sim/design_MEM_ID_Stage_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_ID_Stage_Reg_0_1/sim/design_MEM_ID_Stage_Reg_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_IF_0_1/sim/design_MEM_IF_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_RegsIfId_0_1/sim/design_MEM_RegsIfId_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_StatusRegister_0_1/sim/design_MEM_StatusRegister_0_1.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../arm_prj.srcs/sources_1/bd/design_MEM/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_0_1/sim/design_MEM_xlconstant_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_1_0/sim/design_MEM_xlconstant_1_0.v" \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_2_0/sim/design_MEM_xlconstant_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

