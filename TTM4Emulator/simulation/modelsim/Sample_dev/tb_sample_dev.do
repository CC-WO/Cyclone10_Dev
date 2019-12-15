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
vlog -work rtl_work {tb_sample_dev.v}

# Invoke VSIM Simulator
vsim -t 1ps -L altera_mf_ver -lib rtl_work tb_sample_dev

# Prepare Wave Display
add wave -position end  sim:/tb_sample_dev/tb_RST
add wave -position end  sim:/tb_sample_dev/tb_CLK
add wave -position end  sim:/tb_sample_dev/tb_PA
add wave -position end  sim:/tb_sample_dev/tb_LOADBUS
add wave -position end  sim:/tb_sample_dev/tb_STOREBUS
add wave -position end  sim:/tb_sample_dev/tb_nOE
add wave -position end  sim:/tb_sample_dev/tb_nWE
add wave -position end  sim:/tb_sample_dev/IO
add wave -position end  sim:/tb_sample_dev/tb_IM
add wave -position end  sim:/tb_sample_dev/tb_LR
add wave -position end  sim:/tb_sample_dev/tb_SR
add wave -position end  sim:/tb_sample_dev/tb_OP
add wave -position end  sim:/tb_sample_dev/tb_nA_OUT
add wave -position end  sim:/tb_sample_dev/tb_nB_OUT
add wave -position end  sim:/tb_sample_dev/tb_nIRU_OUT
add wave -position end  sim:/tb_sample_dev/tb_nIRD_OUT
add wave -position end  sim:/tb_sample_dev/tb_nJRU_OUT
add wave -position end  sim:/tb_sample_dev/tb_nJRD_OUT
add wave -position end  sim:/tb_sample_dev/tb_nA_ST
add wave -position end  sim:/tb_sample_dev/tb_nB_ST
add wave -position end  sim:/tb_sample_dev/tb_nORU_ST
add wave -position end  sim:/tb_sample_dev/tb_nORD_ST
add wave -position end  sim:/tb_sample_dev/tb_nJRU_ST
add wave -position end  sim:/tb_sample_dev/tb_nJRD_ST
add wave -position end  sim:/tb_sample_dev/tb_SEL
add wave -position end  sim:/tb_sample_dev/U_INSTRUCTION_DECODER/m_ST_EN
add wave -position end  sim:/tb_sample_dev/tb_nFA_EN
add wave -position end  sim:/tb_sample_dev/tb_nAND_EN
add wave -position end  sim:/tb_sample_dev/tb_nOR_EN
add wave -position end  sim:/tb_sample_dev/tb_nXOR_EN
add wave -position end  sim:/tb_sample_dev/tb_nSK_EN
add wave -position end  sim:/tb_sample_dev/tb_SP_D_nU
add wave -position end  sim:/tb_sample_dev/tb_PC_nLD
add wave -position end  sim:/tb_sample_dev/tb_SPC
## Temp

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
