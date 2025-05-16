vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_ProgramCounter_0_1/sim/design_1_ProgramCounter_0_1.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../arm_prj.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_Adder_0_2/sim/design_1_Adder_0_2.v" \
"../../../bd/design_1/ip/design_1_register_0_0/sim/design_1_register_0_0.v" \
"../../../bd/design_1/ip/design_1_register_0_1/sim/design_1_register_0_1.v" \
"../../../bd/design_1/ip/design_1_register_0_2/sim/design_1_register_0_2.v" \
"../../../bd/design_1/ip/design_1_register_0_3/sim/design_1_register_0_3.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_InstructionMemory_0_0/sim/design_1_InstructionMemory_0_0.v" \
"../../../bd/design_1/ip/design_1_Mux2to1_0_0/sim/design_1_Mux2to1_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

