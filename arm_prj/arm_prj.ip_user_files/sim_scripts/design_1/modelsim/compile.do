vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_ProgramCounter_0_1/sim/design_1_ProgramCounter_0_1.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../arm_prj.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
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

