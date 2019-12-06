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
vlog -work rtl_work {../../../src/verilog/logic/74HC125.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC161.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC373.v}
vlog -work rtl_work {../../../src/verilog/PC.v}
vlog -work rtl_work {../../../src/verilog/REGISTERS.v}
vlog -work rtl_work {tb_REGISTERS.v}

# Invoke VSIM Simulator
vsim -t 1ps -lib rtl_work tb_REGISTERS

# Prepare Wave Display
add wave -position end  sim:/tb_REGISTERS/tb_RST
add wave -position end  sim:/tb_REGISTERS/tb_CLK
add wave -position end  sim:/tb_REGISTERS/tb_nPC_OPEN
add wave -position end  sim:/tb_REGISTERS/tb_STOREBUS
add wave -position end  sim:/tb_REGISTERS/tb_nJRD_ST
add wave -position end  sim:/tb_REGISTERS/tb_nJRU_ST
add wave -position end  sim:/tb_REGISTERS/tb_nORD_ST
add wave -position end  sim:/tb_REGISTERS/tb_nORU_ST
add wave -position end  sim:/tb_REGISTERS/tb_OR
add wave -position end  sim:/tb_REGISTERS/U_REGISTERS/m_JP1
add wave -position end  sim:/tb_REGISTERS/U_REGISTERS/m_JP2
add wave -position end  sim:/tb_REGISTERS/tb_nJRD_OUT
add wave -position end  sim:/tb_REGISTERS/tb_nJRU_OUT
add wave -position end  sim:/tb_REGISTERS/tb_nIRD_OUT
add wave -position end  sim:/tb_REGISTERS/tb_nIRU_OUT
add wave -position end  sim:/tb_REGISTERS/U_REGISTERS/LOADBUS
add wave -position end  sim:/tb_REGISTERS/tb_nPC_LD
add wave -position end  sim:/tb_REGISTERS/tb_PA

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
