# Echoing of Commands Executed in a Macro File
transcript on

# if Design Unit Exists, Delete the Design Unit from a Specified Library.
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}

# Create a Design Library
vlib rtl_work

# Define a Mapping between a Logical Library Name and a Directory
vmap work rtl_work

# Compile HDL Source
# Define Path Specification
# Relative Path Specification
vlog -work rtl_work {../../../src/verilog/logic/4053.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC221.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC138.v}
vlog -work rtl_work {../../../src/verilog/INSTRUCTION_DECODER.v}
vlog -work rtl_work {tb_INSTRUCTION_DECODER.v}

# Invoke VSIM Simulator
vsim -t 1ps -lib rtl_work tb_INSTRUCTION_DECODER

# Prepare Wave Display
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_RST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_CLK
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_Z_FLAG
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_C_FLAG
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_LR
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_SR
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_OP
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nA_OUT
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nB_OUT
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nIRU_OUT
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nIRD_OUT
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nJRU_OUT
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nJRD_OUT
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nA_ST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nB_ST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nORU_ST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nORD_ST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nJRU_ST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nJRD_ST
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_SEL
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nFA_EN
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nAND_EN
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nOR_EN
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nXOR_EN
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nSK_EN
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_SP_D_nU
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_nPC_LD
add wave -position end  sim:/tb_INSTRUCTION_DECODER/tb_SPC

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
