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
vlog -work rtl_work {../../../src/verilog/MEMORY.v}
vlog -work rtl_work {tb_MEMORY.v}

# Invoke VSIM Simulator
vsim -t 1ps -L altera_mf_ver -lib rtl_work tb_MEMORY

# Prepare Wave Display
add wave -position end  sim:/tb_MEMORY/tb_RST
add wave -position end  sim:/tb_MEMORY/tb_CLK
add wave -position end  sim:/tb_MEMORY/tb_nOE
add wave -position end  sim:/tb_MEMORY/tb_nWE
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM1/sramclk
add wave -position end  sim:/tb_MEMORY/tb_ADD
add wave -position end  sim:/tb_MEMORY/U_MEMORY/m_MEM1_A
add wave -position end  sim:/tb_MEMORY/U_MEMORY/m_MEM2_A
add wave -position end  sim:/tb_MEMORY/U_MEMORY/m_MEM1_A
add wave -position end  sim:/tb_MEMORY/U_MEMORY/m_MEM2_A
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM1/A
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM2/A
add wave -position end  sim:/tb_MEMORY/tb_IO
add wave -position end  sim:/tb_MEMORY/tb_IM
add wave -position end  sim:/tb_MEMORY/tb_LR
add wave -position end  sim:/tb_MEMORY/tb_SR
add wave -position end  sim:/tb_MEMORY/tb_OP
add wave -position end  sim:/tb_MEMORY/U_MEMORY/m_MEM1_IO
add wave -position end  sim:/tb_MEMORY/U_MEMORY/m_MEM2_IO
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM1/IO
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM2/IO
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM1/m_io_in
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM2/m_io_in
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM1/m_io_out
add wave -position end  sim:/tb_MEMORY/U_MEMORY/U_SRAM2/m_io_out

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
