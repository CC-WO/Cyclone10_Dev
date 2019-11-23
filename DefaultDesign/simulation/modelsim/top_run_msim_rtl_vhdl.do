transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/top.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/clock_divider.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/chatter.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/LED_KEY1.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/LED_KEY2.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/LED_KEY3.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/Cyclone10_dev/DefaultDesign/src/vhdl/LED_KEY4.vhd}

