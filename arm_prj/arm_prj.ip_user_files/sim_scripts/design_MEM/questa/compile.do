vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 \
"../../../bd/design_MEM/ip/design_MEM_MEM_Stage_Reg_0_0/sim/design_MEM_MEM_Stage_Reg_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_EXE_Stage_0_0/sim/design_MEM_EXE_Stage_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_EXE_Stage_Reg_0_0/sim/design_MEM_EXE_Stage_Reg_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_ID_Stage_0_0/sim/design_MEM_ID_Stage_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_ID_Stage_Reg_0_0/sim/design_MEM_ID_Stage_Reg_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_IF_0_0/sim/design_MEM_IF_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_RegsIfId_0_0/sim/design_MEM_RegsIfId_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_StatusRegister_0_0/sim/design_MEM_StatusRegister_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../arm_prj.srcs/sources_1/bd/design_MEM/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_0_0/sim/design_MEM_xlconstant_0_0.v" \
"../../../bd/design_MEM/ip/design_MEM_MEM_Stage_0_0/sim/design_MEM_MEM_Stage_0_0.v" \
"../../../bd/design_MEM/sim/design_MEM.v" \

vlog -work xil_defaultlib \
"glbl.v"

