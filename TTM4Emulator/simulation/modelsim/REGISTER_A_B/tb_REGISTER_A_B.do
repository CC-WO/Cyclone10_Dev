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
vlog -work rtl_work {../../../src/verilog/REGISTER_B.v}
vlog -work rtl_work {tb_REGISTER_A_B.v}

# Invoke VSIM Simulator
vsim -t 1ps -lib rtl_work tb_REGISTER_A_B

# Prepare Wave Display
add wave -position end  sim:/tb_REGISTER_A_B/tb_RST
add wave -position end  sim:/tb_REGISTER_A_B/tb_CLK
add wave -position end  sim:/tb_REGISTER_A_B/tb_nB_ST
add wave -position end  sim:/tb_REGISTER_A_B/tb_nB_OUT
add wave -position end  sim:/tb_REGISTER_A_B/tb_STOREBUS
add wave -position end  sim:/tb_REGISTER_A_B/tb_LOADBUS
add wave -position end  sim:/tb_REGISTER_A_B/tb_COUNTER

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
