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
vlog -work rtl_work {../../../src/verilog/logic/74HC08.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC32.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC125.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC138.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC161.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC191.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC221.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC245.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC257.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC259.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC283.v}
vlog -work rtl_work {../../../src/verilog/logic/74HC373.v}
vlog -work rtl_work {../../../src/verilog/logic/4030.v}
vlog -work rtl_work {../../../src/verilog/logic/4053.v}
vlog -work rtl_work {../../../src/verilog/logic/SRM2B256SLMX.v}
vlog -work rtl_work {../../../src/verilog/ALU.v}
vlog -work rtl_work {../../../src/verilog/INSTRUCTION_DECODER.v}
vlog -work rtl_work {../../../src/verilog/MEMORY.v}
vlog -work rtl_work {../../../src/verilog/PC.v}
vlog -work rtl_work {../../../src/verilog/REGISTERS.v}
vlog -work rtl_work {../../../src/verilog/REGISTER_A.v}
vlog -work rtl_work {../../../src/verilog/REGISTER_B.v}
vlog -work rtl_work {../../../src/verilog/SP.v}
vlog -work rtl_work {../../../src/verilog/TTM4.v}
vlog -work rtl_work {tb_sample.v}

# Invoke VSIM Simulator
vsim -t 1ps -L altera_mf_ver -lib rtl_work tb_sample

# Prepare Wave Display
add wave -position end  sim:/tb_sample/tb_RST
add wave -position end  sim:/tb_sample/tb_CLK

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
