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
vcom -93 -work rtl_work {../../../../src/vhdl/chatter.vhd}
vcom -93 -work rtl_work {../../../../src/vhdl/clock_divider.vhd}
vcom -93 -work rtl_work {../../../../src/vhdl/top.vhd}
vcom -93 -work rtl_work {tb_top.vhd}

# Invoke VSIM Simulator
vsim -t 1ps -lib rtl_work tb_top

# Prepare Wave Display
add wave -position end  sim:/tb_top/U_TOP/rst
add wave -position end  sim:/tb_top/U_TOP/clk
add wave -position end  sim:/tb_top/U_TOP/clk_1ms
add wave -position end  sim:/tb_top/U_TOP/KEY
add wave -position end  sim:/tb_top/U_TOP/m_key
add wave -position end  sim:/tb_top/U_TOP/sw
add wave -position end  sim:/tb_top/U_TOP/sele
add wave -position end  sim:/tb_top/U_TOP/m_led1
add wave -position end  sim:/tb_top/U_TOP/m_led2
add wave -position end  sim:/tb_top/U_TOP/m_led3
add wave -position end  sim:/tb_top/U_TOP/m_led4
add wave -position end  sim:/tb_top/U_TOP/LED

# quit -force

# Loading all Signals in WLF file
log -r *

# Run Simulation until $stop or $finish
run -all
