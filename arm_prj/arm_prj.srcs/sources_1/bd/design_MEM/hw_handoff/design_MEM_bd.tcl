
################################################################
# This is a generated script based on design: design_MEM
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_MEM_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# EXE_Stage, EXE_Stage_Reg, ID_Stage, ID_Stage_Reg, IF, MEM_Stage, MEM_Stage_Reg, RegsIfId, StatusRegister

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_MEM

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set DataMemoryOut_0 [ create_bd_port -dir O -from 31 -to 0 DataMemoryOut_0 ]
  set MEM_ReadyOut_0 [ create_bd_port -dir O -from 0 -to 0 MEM_ReadyOut_0 ]
  set SRAM_ADDROut_0 [ create_bd_port -dir O -from 17 -to 0 SRAM_ADDROut_0 ]
  set SRAM_CE_NOut_0 [ create_bd_port -dir O -from 17 -to 0 SRAM_CE_NOut_0 ]
  set SRAM_DQInOut_0 [ create_bd_port -dir IO -from 15 -to 0 SRAM_DQInOut_0 ]
  set SRAM_LB_NOut_0 [ create_bd_port -dir O -from 17 -to 0 SRAM_LB_NOut_0 ]
  set SRAM_OE_NOut_0 [ create_bd_port -dir O -from 17 -to 0 SRAM_OE_NOut_0 ]
  set SRAM_UB_NOut_0 [ create_bd_port -dir O -from 17 -to 0 SRAM_UB_NOut_0 ]
  set SRAM_WE_NOut_0 [ create_bd_port -dir O -from 17 -to 0 SRAM_WE_NOut_0 ]
  set branchAddress_0 [ create_bd_port -dir I -from 31 -to 0 branchAddress_0 ]
  set branchTaken_0 [ create_bd_port -dir I branchTaken_0 ]
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set freeze_0 [ create_bd_port -dir I freeze_0 ]
  set freeze_1 [ create_bd_port -dir I freeze_1 ]
  set rst_0 [ create_bd_port -dir I -type rst rst_0 ]

  # Create instance: EXE_Stage_0, and set properties
  set block_name EXE_Stage
  set block_cell_name EXE_Stage_0
  if { [catch {set EXE_Stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EXE_Stage_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: EXE_Stage_Reg_0, and set properties
  set block_name EXE_Stage_Reg
  set block_cell_name EXE_Stage_Reg_0
  if { [catch {set EXE_Stage_Reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EXE_Stage_Reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ID_Stage_0, and set properties
  set block_name ID_Stage
  set block_cell_name ID_Stage_0
  if { [catch {set ID_Stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ID_Stage_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ID_Stage_Reg_0, and set properties
  set block_name ID_Stage_Reg
  set block_cell_name ID_Stage_Reg_0
  if { [catch {set ID_Stage_Reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ID_Stage_Reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: IF_0, and set properties
  set block_name IF
  set block_cell_name IF_0
  if { [catch {set IF_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IF_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MEM_Stage_0, and set properties
  set block_name MEM_Stage
  set block_cell_name MEM_Stage_0
  if { [catch {set MEM_Stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MEM_Stage_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MEM_Stage_Reg_0, and set properties
  set block_name MEM_Stage_Reg
  set block_cell_name MEM_Stage_Reg_0
  if { [catch {set MEM_Stage_Reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MEM_Stage_Reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RegsIfId_0, and set properties
  set block_name RegsIfId
  set block_cell_name RegsIfId_0
  if { [catch {set RegsIfId_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RegsIfId_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: StatusRegister_0, and set properties
  set block_name StatusRegister
  set block_cell_name StatusRegister_0
  if { [catch {set StatusRegister_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $StatusRegister_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net EXE_Stage_0_ALU_ResOut [get_bd_pins EXE_Stage_0/ALU_ResOut] [get_bd_pins EXE_Stage_Reg_0/ALU_ResIn]
  connect_bd_net -net EXE_Stage_0_statusOut [get_bd_pins EXE_Stage_0/statusOut] [get_bd_pins StatusRegister_0/statIn]
  connect_bd_net -net EXE_Stage_Reg_0_ALU_ResOut [get_bd_pins EXE_Stage_Reg_0/ALU_ResOut] [get_bd_pins MEM_Stage_0/ALU_ResIn] [get_bd_pins MEM_Stage_Reg_0/ALU_ResIn]
  connect_bd_net -net EXE_Stage_Reg_0_DestOut [get_bd_pins EXE_Stage_Reg_0/DestOut] [get_bd_pins MEM_Stage_Reg_0/DestIn]
  connect_bd_net -net EXE_Stage_Reg_0_MEM_R_ENOut [get_bd_pins EXE_Stage_Reg_0/MEM_R_ENOut] [get_bd_pins MEM_Stage_0/MEM_R_ENIn] [get_bd_pins MEM_Stage_Reg_0/MEM_R_ENIn]
  connect_bd_net -net EXE_Stage_Reg_0_MEM_W_ENOut [get_bd_pins EXE_Stage_Reg_0/MEM_W_ENOut] [get_bd_pins MEM_Stage_0/MEM_W_ENIn]
  connect_bd_net -net EXE_Stage_Reg_0_Val_RmOut [get_bd_pins EXE_Stage_Reg_0/Val_RmOut] [get_bd_pins MEM_Stage_0/Value_RmIn]
  connect_bd_net -net EXE_Stage_Reg_0_WB_ENOut [get_bd_pins EXE_Stage_Reg_0/WB_ENOut] [get_bd_pins MEM_Stage_Reg_0/WB_ENIn]
  connect_bd_net -net ID_Stage_0_BOut [get_bd_pins ID_Stage_0/BOut] [get_bd_pins ID_Stage_Reg_0/BIn]
  connect_bd_net -net ID_Stage_0_DestOut [get_bd_pins ID_Stage_0/DestOut] [get_bd_pins ID_Stage_Reg_0/DestIn]
  connect_bd_net -net ID_Stage_0_EXE_CMDOut [get_bd_pins ID_Stage_0/EXE_CMDOut] [get_bd_pins ID_Stage_Reg_0/EXE_CMDIn]
  connect_bd_net -net ID_Stage_0_IOut [get_bd_pins ID_Stage_0/IOut] [get_bd_pins ID_Stage_Reg_0/IIn]
  connect_bd_net -net ID_Stage_0_Imm24Out [get_bd_pins ID_Stage_0/Imm24Out] [get_bd_pins ID_Stage_Reg_0/Imm24In]
  connect_bd_net -net ID_Stage_0_MEM_R_ENOut [get_bd_pins ID_Stage_0/MEM_R_ENOut] [get_bd_pins ID_Stage_Reg_0/MEM_R_ENIn]
  connect_bd_net -net ID_Stage_0_MEM_W_ENOut [get_bd_pins ID_Stage_0/MEM_W_ENOut] [get_bd_pins ID_Stage_Reg_0/MEM_W_ENIn]
  connect_bd_net -net ID_Stage_0_SOut [get_bd_pins ID_Stage_0/SOut] [get_bd_pins ID_Stage_Reg_0/SIn]
  connect_bd_net -net ID_Stage_0_Val_RmOut [get_bd_pins ID_Stage_0/Val_RmOut] [get_bd_pins ID_Stage_Reg_0/Val_RmIn]
  connect_bd_net -net ID_Stage_0_Val_RnOut [get_bd_pins ID_Stage_0/Val_RnOut] [get_bd_pins ID_Stage_Reg_0/Val_RnIn]
  connect_bd_net -net ID_Stage_0_WB_ENOut [get_bd_pins ID_Stage_0/WB_ENOut] [get_bd_pins ID_Stage_Reg_0/WB_ENIn]
  connect_bd_net -net ID_Stage_0_shiftOperandOut [get_bd_pins ID_Stage_0/shiftOperandOut] [get_bd_pins ID_Stage_Reg_0/shiftOperandIn]
  connect_bd_net -net ID_Stage_0_src1Out [get_bd_pins ID_Stage_0/src1Out] [get_bd_pins ID_Stage_Reg_0/src1In]
  connect_bd_net -net ID_Stage_0_src2Out [get_bd_pins ID_Stage_0/src2Out] [get_bd_pins ID_Stage_Reg_0/src2In]
  connect_bd_net -net ID_Stage_Reg_0_DestOut [get_bd_pins EXE_Stage_Reg_0/DestIn] [get_bd_pins ID_Stage_Reg_0/DestOut]
  connect_bd_net -net ID_Stage_Reg_0_EXE_CMDOut [get_bd_pins EXE_Stage_0/EXE_CMDIn] [get_bd_pins ID_Stage_Reg_0/EXE_CMDOut]
  connect_bd_net -net ID_Stage_Reg_0_IOut [get_bd_pins EXE_Stage_0/IIn] [get_bd_pins ID_Stage_Reg_0/IOut]
  connect_bd_net -net ID_Stage_Reg_0_Imm24Out [get_bd_pins EXE_Stage_0/Imm24In] [get_bd_pins ID_Stage_Reg_0/Imm24Out]
  connect_bd_net -net ID_Stage_Reg_0_MEM_R_ENOut [get_bd_pins EXE_Stage_0/MEM_R_ENIn] [get_bd_pins EXE_Stage_Reg_0/MEM_R_ENIn] [get_bd_pins ID_Stage_Reg_0/MEM_R_ENOut]
  connect_bd_net -net ID_Stage_Reg_0_MEM_W_ENOut [get_bd_pins EXE_Stage_0/MEM_W_ENIn] [get_bd_pins EXE_Stage_Reg_0/MEM_W_ENIn] [get_bd_pins ID_Stage_Reg_0/MEM_W_ENOut]
  connect_bd_net -net ID_Stage_Reg_0_PCOut [get_bd_pins EXE_Stage_0/PCIn] [get_bd_pins ID_Stage_Reg_0/PCOut]
  connect_bd_net -net ID_Stage_Reg_0_SOut [get_bd_pins ID_Stage_Reg_0/SOut] [get_bd_pins StatusRegister_0/en]
  connect_bd_net -net ID_Stage_Reg_0_Val_RmOut [get_bd_pins EXE_Stage_0/Val_RmIn] [get_bd_pins ID_Stage_Reg_0/Val_RmOut]
  connect_bd_net -net ID_Stage_Reg_0_Val_RnOut [get_bd_pins EXE_Stage_0/Val_RnIn] [get_bd_pins ID_Stage_Reg_0/Val_RnOut]
  connect_bd_net -net ID_Stage_Reg_0_WB_ENOut [get_bd_pins EXE_Stage_Reg_0/WB_ENIn] [get_bd_pins ID_Stage_Reg_0/WB_ENOut]
  connect_bd_net -net ID_Stage_Reg_0_shiftOperandOut [get_bd_pins EXE_Stage_0/shiftOperandIn] [get_bd_pins ID_Stage_Reg_0/shiftOperandOut]
  connect_bd_net -net ID_Stage_Reg_0_src1Out [get_bd_pins EXE_Stage_0/selSrc1In] [get_bd_pins ID_Stage_Reg_0/src1Out]
  connect_bd_net -net ID_Stage_Reg_0_src2Out [get_bd_pins EXE_Stage_0/selSrc2In] [get_bd_pins ID_Stage_Reg_0/src2Out]
  connect_bd_net -net ID_Stage_Reg_0_statusOut [get_bd_pins EXE_Stage_0/statusIn] [get_bd_pins ID_Stage_Reg_0/statusOut]
  connect_bd_net -net IF_0_PC [get_bd_pins IF_0/PC] [get_bd_pins RegsIfId_0/pcIn]
  connect_bd_net -net IF_0_instruction [get_bd_pins IF_0/instruction] [get_bd_pins RegsIfId_0/instructionIn]
  connect_bd_net -net MEM_Stage_0_DataMemoryOut [get_bd_pins MEM_Stage_0/DataMemoryOut] [get_bd_pins MEM_Stage_Reg_0/DataMemoryIn]
  connect_bd_net -net MEM_Stage_0_MEM_ReadyOut [get_bd_ports MEM_ReadyOut_0] [get_bd_pins MEM_Stage_0/MEM_ReadyOut]
  connect_bd_net -net MEM_Stage_0_SRAM_ADDROut [get_bd_ports SRAM_ADDROut_0] [get_bd_pins MEM_Stage_0/SRAM_ADDROut]
  connect_bd_net -net MEM_Stage_0_SRAM_CE_NOut [get_bd_ports SRAM_CE_NOut_0] [get_bd_pins MEM_Stage_0/SRAM_CE_NOut]
  connect_bd_net -net MEM_Stage_0_SRAM_LB_NOut [get_bd_ports SRAM_LB_NOut_0] [get_bd_pins MEM_Stage_0/SRAM_LB_NOut]
  connect_bd_net -net MEM_Stage_0_SRAM_OE_NOut [get_bd_ports SRAM_OE_NOut_0] [get_bd_pins MEM_Stage_0/SRAM_OE_NOut]
  connect_bd_net -net MEM_Stage_0_SRAM_UB_NOut [get_bd_ports SRAM_UB_NOut_0] [get_bd_pins MEM_Stage_0/SRAM_UB_NOut]
  connect_bd_net -net MEM_Stage_0_SRAM_WE_NOut [get_bd_ports SRAM_WE_NOut_0] [get_bd_pins MEM_Stage_0/SRAM_WE_NOut]
  connect_bd_net -net MEM_Stage_Reg_0_DataMemoryOut [get_bd_ports DataMemoryOut_0] [get_bd_pins MEM_Stage_Reg_0/DataMemoryOut]
  connect_bd_net -net Net [get_bd_ports SRAM_DQInOut_0] [get_bd_pins MEM_Stage_0/SRAM_DQInOut]
  connect_bd_net -net RegsIfId_0_instructionOut [get_bd_pins ID_Stage_0/instructionIn] [get_bd_pins RegsIfId_0/instructionOut]
  connect_bd_net -net RegsIfId_0_pcOut [get_bd_pins ID_Stage_Reg_0/PCIn] [get_bd_pins RegsIfId_0/pcOut]
  connect_bd_net -net branchAddress_0_1 [get_bd_ports branchAddress_0] [get_bd_pins IF_0/branchAddress]
  connect_bd_net -net branchTaken_0_1 [get_bd_ports branchTaken_0] [get_bd_pins EXE_Stage_Reg_0/clr] [get_bd_pins ID_Stage_Reg_0/clr] [get_bd_pins IF_0/branchTaken] [get_bd_pins MEM_Stage_Reg_0/clr] [get_bd_pins RegsIfId_0/flush]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins EXE_Stage_0/clk] [get_bd_pins EXE_Stage_Reg_0/clk] [get_bd_pins ID_Stage_0/clk] [get_bd_pins ID_Stage_Reg_0/clk] [get_bd_pins IF_0/clk] [get_bd_pins MEM_Stage_0/clk] [get_bd_pins MEM_Stage_Reg_0/clk] [get_bd_pins RegsIfId_0/clk] [get_bd_pins StatusRegister_0/clk]
  connect_bd_net -net freeze_1_1 [get_bd_ports freeze_1] [get_bd_pins EXE_Stage_Reg_0/en] [get_bd_pins ID_Stage_Reg_0/en] [get_bd_pins IF_0/freeze] [get_bd_pins MEM_Stage_Reg_0/en] [get_bd_pins RegsIfId_0/freeze]
  connect_bd_net -net rst_0_1 [get_bd_ports rst_0] [get_bd_pins EXE_Stage_0/rst] [get_bd_pins EXE_Stage_Reg_0/rst] [get_bd_pins ID_Stage_0/rst] [get_bd_pins ID_Stage_Reg_0/rst] [get_bd_pins IF_0/rst] [get_bd_pins MEM_Stage_0/rst] [get_bd_pins MEM_Stage_Reg_0/rst] [get_bd_pins RegsIfId_0/rst] [get_bd_pins StatusRegister_0/rst]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins EXE_Stage_0/ALU_ResIn] [get_bd_pins EXE_Stage_0/WB_ValueIn] [get_bd_pins EXE_Stage_Reg_0/Val_RmIn] [get_bd_pins ID_Stage_0/HazardIn] [get_bd_pins ID_Stage_0/WB_DestIn] [get_bd_pins ID_Stage_0/WB_ENIn] [get_bd_pins ID_Stage_0/WB_ValueIn] [get_bd_pins ID_Stage_0/statusIn] [get_bd_pins ID_Stage_Reg_0/statusIn] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


