vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_WB/ip/design_WB_EXE_Stage_0_0/sim/design_WB_EXE_Stage_0_0.v" \
"../../../bd/design_WB/ip/design_WB_EXE_Stage_Reg_0_0/sim/design_WB_EXE_Stage_Reg_0_0.v" \
"../../../bd/design_WB/ip/design_WB_ID_Stage_0_0/sim/design_WB_ID_Stage_0_0.v" \
"../../../bd/design_WB/ip/design_WB_ID_Stage_Reg_0_0/sim/design_WB_ID_Stage_Reg_0_0.v" \
"../../../bd/design_WB/ip/design_WB_IF_0_0/sim/design_WB_IF_0_0.v" \
"../../../bd/design_WB/ip/design_WB_MEM_Stage_0_0/sim/design_WB_MEM_Stage_0_0.v" \
"../../../bd/design_WB/ip/design_WB_MEM_Stage_Reg_0_0/sim/design_WB_MEM_Stage_Reg_0_0.v" \
"../../../bd/design_WB/ip/design_WB_RegsIfId_0_0/sim/design_WB_RegsIfId_0_0.v" \
"../../../bd/design_WB/ip/design_WB_StatusRegister_0_0/sim/design_WB_StatusRegister_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../arm_prj.srcs/sources_1/bd/design_WB/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_WB/ip/design_WB_xlconstant_0_0/sim/design_WB_xlconstant_0_0.v" \
"../../../bd/design_WB/ip/design_WB_WB_Stage_0_0/sim/design_WB_WB_Stage_0_0.v" \
"../../../bd/design_WB/sim/design_WB.v" \

vlog -work xil_defaultlib \
"glbl.v"

