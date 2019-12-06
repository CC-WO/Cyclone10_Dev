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
vlog -work rtl_work {../../../src/verilog/logic/4030.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC08.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC32.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC125.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC161.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC257.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC259.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC283.v}
vlog -work rtl_work {../../../src/verilog/ALU.v}
vlog -work rtl_work {tb_ALU.v}

# Invoke VSIM Simulator
vsim -t 1ps -lib rtl_work tb_ALU

# Prepare Wave Display
add wave -position end  sim:/tb_ALU/tb_RST
add wave -position end  sim:/tb_ALU/tb_CLK
add wave -position end  sim:/tb_ALU/tb_SEL
add wave -position end  sim:/tb_ALU/tb_X
add wave -position end  sim:/tb_ALU/tb_Y
add wave -position end  sim:/tb_ALU/tb_IM
add wave -position end  sim:/tb_ALU/U_ALU/m_Y
add wave -position end  sim:/tb_ALU/tb_nFA_EN
add wave -position end  sim:/tb_ALU/tb_nAND_EN
add wave -position end  sim:/tb_ALU/tb_nOR_EN
add wave -position end  sim:/tb_ALU/tb_nXOR_EN
add wave -position end  sim:/tb_ALU/tb_Z_FLAG
add wave -position end  sim:/tb_ALU/tb_C_FLAG
add wave -position end  sim:/tb_ALU/tb_STOREDATA
add wave -position end  sim:/tb_ALU/U_ALU/m_LOADDATA
add wave -position end  sim:/tb_ALU/U_ALU/m_REGDATA
add wave -position end  sim:/tb_ALU/U_ALU/m_ADDEROUT
add wave -position end  sim:/tb_ALU/U_ALU/m_ANDOUT
add wave -position end  sim:/tb_ALU/U_ALU/m_OROUT
add wave -position end  sim:/tb_ALU/U_ALU/m_XOROUT
add wave -position end  sim:/tb_ALU/U_ALU/m_DECODEROUT
add wave -position end  sim:/tb_ALU/U_ALU/m_COUNTEROUT

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
