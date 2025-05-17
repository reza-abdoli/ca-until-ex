vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_MEM/ip/design_MEM_MEM_Stage_0_0/sim/design_MEM_MEM_Stage_0_0.v" \
"../../../bd/design_MEM/sim/design_MEM.v" \
"../../../bd/design_MEM/ip/design_MEM_EXE_Stage_0_1/sim/design_MEM_EXE_Stage_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_EXE_Stage_Reg_0_1/sim/design_MEM_EXE_Stage_Reg_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_ID_Stage_0_1/sim/design_MEM_ID_Stage_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_ID_Stage_Reg_0_1/sim/design_MEM_ID_Stage_Reg_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_IF_0_1/sim/design_MEM_IF_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_RegsIfId_0_1/sim/design_MEM_RegsIfId_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_StatusRegister_0_1/sim/design_MEM_StatusRegister_0_1.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../arm_prj.srcs/sources_1/bd/design_MEM/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_0_1/sim/design_MEM_xlconstant_0_1.v" \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_1_0/sim/design_MEM_xlconstant_1_0.v" \
"../../../bd/design_MEM/ip/design_MEM_xlconstant_2_0/sim/design_MEM_xlconstant_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

