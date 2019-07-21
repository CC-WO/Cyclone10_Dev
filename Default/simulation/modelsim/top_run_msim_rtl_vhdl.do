transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/Default/src/vhdl/top.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/Default/src/vhdl/clock_divider.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/Default/src/vhdl/chatter.vhd}

