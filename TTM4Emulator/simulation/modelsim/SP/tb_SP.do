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
vlog -work rtl_work {../../../src/verilog/ip/SRAM.v}
vlog -work rtl_work {../../../src/verilog/logic/SRM2B256SLMX.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC245.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC221.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC191.v}
vlog -work rtl_work {../../../src/verilog/SP.v}
vlog -work rtl_work {tb_SP.v}

# Invoke VSIM Simulator
vsim -t 1ps -L altera_mf_ver -lib rtl_work tb_SP

# Prepare Wave Display
add wave -position end  sim:/tb_SP/tb_RST
add wave -position end  sim:/tb_SP/tb_CLK
add wave -position end  sim:/tb_SP/STOREBUS
add wave -position end  sim:/tb_SP/tb_STOREBUS
add wave -position end  sim:/tb_SP/U_SP/m_TRI_A
add wave -position end  sim:/tb_SP/U_SP/m_TRI_B
add wave -position end  sim:/tb_SP/U_SP/m_IO
add wave -position end  sim:/tb_SP/tb_SP
add wave -position end  sim:/tb_SP/tb_nSK_EN
add wave -position end  sim:/tb_SP/tb_SP_D_nU
add wave -position end  sim:/tb_SP/tb_SPC
add wave -position end  sim:/tb_SP/U_SP/m_nQ
add wave -position end  sim:/tb_SP/U_SP/m_Q1
add wave -position end  sim:/tb_SP/U_SP/m_Q2
add wave -position end  sim:/tb_SP/U_SP/m_A

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
