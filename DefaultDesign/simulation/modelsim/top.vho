-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/23/2019 14:51:05"

-- 
-- Device: Altera 10CL006YU256I7G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LED_BO : BUFFER std_logic;
	LED : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- LED_BO	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED_BO : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLOCK_1ms|clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_BO~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~1\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~2_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~3\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~4_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~5\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~6_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~5_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~7\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~8_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~9\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~10_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~4_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~11\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~12_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~13\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~14_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~3_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~15\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~16_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~2_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~17\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~18_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~19\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~20_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~21\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~22_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~23\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~24_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~25\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~26_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~1_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~27\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~28_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~0_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~29\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~30_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Equal0~3_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Equal0~2_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Equal0~4_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|clk_tmp~0_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|clk_tmp~feeder_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|clk_tmp~q\ : std_logic;
SIGNAL \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \U_KEY1|chatt1[0]~0_combout\ : std_logic;
SIGNAL \U_KEY1|chatt1[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt1[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt1[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt2~0_combout\ : std_logic;
SIGNAL \U_KEY1|chatt3[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt3[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt3[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|Equal0~0_combout\ : std_logic;
SIGNAL \U_KEY1|sw_ena~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \U_KEY4|chatt1[0]~0_combout\ : std_logic;
SIGNAL \U_KEY4|chatt1[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY4|chatt1[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY4|chatt1[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY4|chatt2~0_combout\ : std_logic;
SIGNAL \U_KEY4|chatt3[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY4|chatt3[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY4|chatt3[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY4|Equal0~0_combout\ : std_logic;
SIGNAL \U_KEY4|sw_ena~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \U_KEY2|chatt1[0]~0_combout\ : std_logic;
SIGNAL \U_KEY2|chatt1[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY2|chatt1[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY2|chatt1[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY2|chatt2~0_combout\ : std_logic;
SIGNAL \U_KEY2|chatt3[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY2|chatt3[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY2|chatt3[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY2|Equal0~0_combout\ : std_logic;
SIGNAL \U_KEY2|sw_ena~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \U_KEY3|chatt1[0]~0_combout\ : std_logic;
SIGNAL \U_KEY3|chatt1[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY3|chatt1[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY3|chatt1[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY3|chatt2~0_combout\ : std_logic;
SIGNAL \U_KEY3|chatt3[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY3|chatt3[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY3|chatt3[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY3|Equal0~0_combout\ : std_logic;
SIGNAL \U_KEY3|sw_ena~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \m_sele~1_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~5\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~6_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_cnt~2_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~7\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~8_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~9\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~10_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~11\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~12_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_cnt~1_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~13\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~14_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_cnt~0_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Equal0~0_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~0_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_cnt~3_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~1\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~2_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~3\ : std_logic;
SIGNAL \U_LED_KEY3|Add1~4_combout\ : std_logic;
SIGNAL \U_LED_KEY3|Equal0~1_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led~0_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led~q\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~0_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~1\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~2_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~3\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~4_combout\ : std_logic;
SIGNAL \U_LED_KEY1|led_cnt~2_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~5\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~6_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~7\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~8_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~9\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~10_combout\ : std_logic;
SIGNAL \U_LED_KEY1|led_cnt~1_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~11\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~12_combout\ : std_logic;
SIGNAL \U_LED_KEY1|led_cnt~0_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~13\ : std_logic;
SIGNAL \U_LED_KEY1|Add0~14_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Equal0~0_combout\ : std_logic;
SIGNAL \U_LED_KEY1|led_cnt~3_combout\ : std_logic;
SIGNAL \U_LED_KEY1|Equal0~1_combout\ : std_logic;
SIGNAL \U_LED_KEY1|led~0_combout\ : std_logic;
SIGNAL \U_LED_KEY1|led~q\ : std_logic;
SIGNAL \m_sele~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_reg[0]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \U_LED_KEY2|led_cnt[1]~2_combout\ : std_logic;
SIGNAL \U_LED_KEY2|led_cnt~0_combout\ : std_logic;
SIGNAL \U_LED_KEY2|led_cnt[3]~1_combout\ : std_logic;
SIGNAL \U_LED_KEY2|led_cnt~3_combout\ : std_logic;
SIGNAL \U_LED_KEY2|Equal0~0_combout\ : std_logic;
SIGNAL \U_LED_KEY2|led_refresh~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_reg[1]~1_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_reg[2]~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_reg[3]~3_combout\ : std_logic;
SIGNAL \U_LED_KEY3|led_reg[3]~4_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \U_LED_KEY2|led_sftreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL m_sele : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY2|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_LED_KEY3|led_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_LED_KEY3|led_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_KEY4|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_LED_KEY1|led_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CLOCK_1ms|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_KEY4|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY3|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY3|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY1|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_LED_KEY2|led_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY2|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY1|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_KEY <= KEY;
LED_BO <= ww_LED_BO;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_CLOCK_1ms|clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLOCK_1ms|clk_tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N23
\LED_BO~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~1_combout\,
	devoe => ww_devoe,
	o => \LED_BO~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\LED[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~1_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\LED[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\LED[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\LED[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~4_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y15_N0
\U_CLOCK_1ms|Add1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~0_combout\ = \U_CLOCK_1ms|cnt\(0) $ (VCC)
-- \U_CLOCK_1ms|Add1~1\ = CARRY(\U_CLOCK_1ms|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(0),
	datad => VCC,
	combout => \U_CLOCK_1ms|Add1~0_combout\,
	cout => \U_CLOCK_1ms|Add1~1\);

-- Location: IOIBUF_X34_Y12_N15
\KEY[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G9
\KEY[0]~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: FF_X25_Y15_N1
\U_CLOCK_1ms|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(0));

-- Location: LCCOMB_X25_Y15_N2
\U_CLOCK_1ms|Add1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~2_combout\ = (\U_CLOCK_1ms|cnt\(1) & (!\U_CLOCK_1ms|Add1~1\)) # (!\U_CLOCK_1ms|cnt\(1) & ((\U_CLOCK_1ms|Add1~1\) # (GND)))
-- \U_CLOCK_1ms|Add1~3\ = CARRY((!\U_CLOCK_1ms|Add1~1\) # (!\U_CLOCK_1ms|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(1),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~1\,
	combout => \U_CLOCK_1ms|Add1~2_combout\,
	cout => \U_CLOCK_1ms|Add1~3\);

-- Location: FF_X25_Y15_N3
\U_CLOCK_1ms|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(1));

-- Location: LCCOMB_X25_Y15_N4
\U_CLOCK_1ms|Add1~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~4_combout\ = (\U_CLOCK_1ms|cnt\(2) & (\U_CLOCK_1ms|Add1~3\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(2) & (!\U_CLOCK_1ms|Add1~3\ & VCC))
-- \U_CLOCK_1ms|Add1~5\ = CARRY((\U_CLOCK_1ms|cnt\(2) & !\U_CLOCK_1ms|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(2),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~3\,
	combout => \U_CLOCK_1ms|Add1~4_combout\,
	cout => \U_CLOCK_1ms|Add1~5\);

-- Location: FF_X25_Y15_N5
\U_CLOCK_1ms|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(2));

-- Location: LCCOMB_X25_Y15_N6
\U_CLOCK_1ms|Add1~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~6_combout\ = (\U_CLOCK_1ms|cnt\(3) & (!\U_CLOCK_1ms|Add1~5\)) # (!\U_CLOCK_1ms|cnt\(3) & ((\U_CLOCK_1ms|Add1~5\) # (GND)))
-- \U_CLOCK_1ms|Add1~7\ = CARRY((!\U_CLOCK_1ms|Add1~5\) # (!\U_CLOCK_1ms|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(3),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~5\,
	combout => \U_CLOCK_1ms|Add1~6_combout\,
	cout => \U_CLOCK_1ms|Add1~7\);

-- Location: LCCOMB_X26_Y15_N10
\U_CLOCK_1ms|cnt~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~5_combout\ = (\U_CLOCK_1ms|Add1~6_combout\ & !\U_CLOCK_1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|Add1~6_combout\,
	datad => \U_CLOCK_1ms|Equal0~4_combout\,
	combout => \U_CLOCK_1ms|cnt~5_combout\);

-- Location: FF_X25_Y15_N29
\U_CLOCK_1ms|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CLOCK_1ms|cnt~5_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(3));

-- Location: LCCOMB_X25_Y15_N8
\U_CLOCK_1ms|Add1~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~8_combout\ = (\U_CLOCK_1ms|cnt\(4) & (\U_CLOCK_1ms|Add1~7\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(4) & (!\U_CLOCK_1ms|Add1~7\ & VCC))
-- \U_CLOCK_1ms|Add1~9\ = CARRY((\U_CLOCK_1ms|cnt\(4) & !\U_CLOCK_1ms|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(4),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~7\,
	combout => \U_CLOCK_1ms|Add1~8_combout\,
	cout => \U_CLOCK_1ms|Add1~9\);

-- Location: FF_X25_Y15_N9
\U_CLOCK_1ms|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(4));

-- Location: LCCOMB_X25_Y15_N10
\U_CLOCK_1ms|Add1~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~10_combout\ = (\U_CLOCK_1ms|cnt\(5) & (!\U_CLOCK_1ms|Add1~9\)) # (!\U_CLOCK_1ms|cnt\(5) & ((\U_CLOCK_1ms|Add1~9\) # (GND)))
-- \U_CLOCK_1ms|Add1~11\ = CARRY((!\U_CLOCK_1ms|Add1~9\) # (!\U_CLOCK_1ms|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(5),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~9\,
	combout => \U_CLOCK_1ms|Add1~10_combout\,
	cout => \U_CLOCK_1ms|Add1~11\);

-- Location: LCCOMB_X26_Y15_N16
\U_CLOCK_1ms|cnt~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~4_combout\ = (!\U_CLOCK_1ms|Equal0~4_combout\ & \U_CLOCK_1ms|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|Equal0~4_combout\,
	datad => \U_CLOCK_1ms|Add1~10_combout\,
	combout => \U_CLOCK_1ms|cnt~4_combout\);

-- Location: FF_X26_Y15_N17
\U_CLOCK_1ms|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|cnt~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(5));

-- Location: LCCOMB_X25_Y15_N12
\U_CLOCK_1ms|Add1~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~12_combout\ = (\U_CLOCK_1ms|cnt\(6) & (\U_CLOCK_1ms|Add1~11\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(6) & (!\U_CLOCK_1ms|Add1~11\ & VCC))
-- \U_CLOCK_1ms|Add1~13\ = CARRY((\U_CLOCK_1ms|cnt\(6) & !\U_CLOCK_1ms|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(6),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~11\,
	combout => \U_CLOCK_1ms|Add1~12_combout\,
	cout => \U_CLOCK_1ms|Add1~13\);

-- Location: FF_X25_Y15_N13
\U_CLOCK_1ms|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~12_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(6));

-- Location: LCCOMB_X25_Y15_N14
\U_CLOCK_1ms|Add1~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~14_combout\ = (\U_CLOCK_1ms|cnt\(7) & (!\U_CLOCK_1ms|Add1~13\)) # (!\U_CLOCK_1ms|cnt\(7) & ((\U_CLOCK_1ms|Add1~13\) # (GND)))
-- \U_CLOCK_1ms|Add1~15\ = CARRY((!\U_CLOCK_1ms|Add1~13\) # (!\U_CLOCK_1ms|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(7),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~13\,
	combout => \U_CLOCK_1ms|Add1~14_combout\,
	cout => \U_CLOCK_1ms|Add1~15\);

-- Location: LCCOMB_X26_Y15_N8
\U_CLOCK_1ms|cnt~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~3_combout\ = (!\U_CLOCK_1ms|Equal0~4_combout\ & \U_CLOCK_1ms|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|Equal0~4_combout\,
	datad => \U_CLOCK_1ms|Add1~14_combout\,
	combout => \U_CLOCK_1ms|cnt~3_combout\);

-- Location: FF_X26_Y15_N9
\U_CLOCK_1ms|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|cnt~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(7));

-- Location: LCCOMB_X25_Y15_N16
\U_CLOCK_1ms|Add1~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~16_combout\ = (\U_CLOCK_1ms|cnt\(8) & (\U_CLOCK_1ms|Add1~15\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(8) & (!\U_CLOCK_1ms|Add1~15\ & VCC))
-- \U_CLOCK_1ms|Add1~17\ = CARRY((\U_CLOCK_1ms|cnt\(8) & !\U_CLOCK_1ms|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(8),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~15\,
	combout => \U_CLOCK_1ms|Add1~16_combout\,
	cout => \U_CLOCK_1ms|Add1~17\);

-- Location: LCCOMB_X26_Y15_N30
\U_CLOCK_1ms|cnt~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~2_combout\ = (!\U_CLOCK_1ms|Equal0~4_combout\ & \U_CLOCK_1ms|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|Equal0~4_combout\,
	datac => \U_CLOCK_1ms|Add1~16_combout\,
	combout => \U_CLOCK_1ms|cnt~2_combout\);

-- Location: FF_X26_Y15_N31
\U_CLOCK_1ms|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|cnt~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(8));

-- Location: LCCOMB_X25_Y15_N18
\U_CLOCK_1ms|Add1~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~18_combout\ = (\U_CLOCK_1ms|cnt\(9) & (!\U_CLOCK_1ms|Add1~17\)) # (!\U_CLOCK_1ms|cnt\(9) & ((\U_CLOCK_1ms|Add1~17\) # (GND)))
-- \U_CLOCK_1ms|Add1~19\ = CARRY((!\U_CLOCK_1ms|Add1~17\) # (!\U_CLOCK_1ms|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(9),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~17\,
	combout => \U_CLOCK_1ms|Add1~18_combout\,
	cout => \U_CLOCK_1ms|Add1~19\);

-- Location: FF_X25_Y15_N19
\U_CLOCK_1ms|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~18_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(9));

-- Location: LCCOMB_X25_Y15_N20
\U_CLOCK_1ms|Add1~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~20_combout\ = (\U_CLOCK_1ms|cnt\(10) & (\U_CLOCK_1ms|Add1~19\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(10) & (!\U_CLOCK_1ms|Add1~19\ & VCC))
-- \U_CLOCK_1ms|Add1~21\ = CARRY((\U_CLOCK_1ms|cnt\(10) & !\U_CLOCK_1ms|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(10),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~19\,
	combout => \U_CLOCK_1ms|Add1~20_combout\,
	cout => \U_CLOCK_1ms|Add1~21\);

-- Location: FF_X25_Y15_N21
\U_CLOCK_1ms|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~20_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(10));

-- Location: LCCOMB_X25_Y15_N22
\U_CLOCK_1ms|Add1~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~22_combout\ = (\U_CLOCK_1ms|cnt\(11) & (!\U_CLOCK_1ms|Add1~21\)) # (!\U_CLOCK_1ms|cnt\(11) & ((\U_CLOCK_1ms|Add1~21\) # (GND)))
-- \U_CLOCK_1ms|Add1~23\ = CARRY((!\U_CLOCK_1ms|Add1~21\) # (!\U_CLOCK_1ms|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(11),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~21\,
	combout => \U_CLOCK_1ms|Add1~22_combout\,
	cout => \U_CLOCK_1ms|Add1~23\);

-- Location: FF_X25_Y15_N23
\U_CLOCK_1ms|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~22_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(11));

-- Location: LCCOMB_X26_Y15_N22
\U_CLOCK_1ms|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~1_combout\ = (\U_CLOCK_1ms|cnt\(8) & (!\U_CLOCK_1ms|cnt\(10) & (!\U_CLOCK_1ms|cnt\(9) & !\U_CLOCK_1ms|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(8),
	datab => \U_CLOCK_1ms|cnt\(10),
	datac => \U_CLOCK_1ms|cnt\(9),
	datad => \U_CLOCK_1ms|cnt\(11),
	combout => \U_CLOCK_1ms|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y15_N24
\U_CLOCK_1ms|Add1~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~24_combout\ = (\U_CLOCK_1ms|cnt\(12) & (\U_CLOCK_1ms|Add1~23\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(12) & (!\U_CLOCK_1ms|Add1~23\ & VCC))
-- \U_CLOCK_1ms|Add1~25\ = CARRY((\U_CLOCK_1ms|cnt\(12) & !\U_CLOCK_1ms|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(12),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~23\,
	combout => \U_CLOCK_1ms|Add1~24_combout\,
	cout => \U_CLOCK_1ms|Add1~25\);

-- Location: FF_X25_Y15_N25
\U_CLOCK_1ms|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~24_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(12));

-- Location: LCCOMB_X25_Y15_N26
\U_CLOCK_1ms|Add1~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~26_combout\ = (\U_CLOCK_1ms|cnt\(13) & (!\U_CLOCK_1ms|Add1~25\)) # (!\U_CLOCK_1ms|cnt\(13) & ((\U_CLOCK_1ms|Add1~25\) # (GND)))
-- \U_CLOCK_1ms|Add1~27\ = CARRY((!\U_CLOCK_1ms|Add1~25\) # (!\U_CLOCK_1ms|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(13),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~25\,
	combout => \U_CLOCK_1ms|Add1~26_combout\,
	cout => \U_CLOCK_1ms|Add1~27\);

-- Location: LCCOMB_X26_Y15_N6
\U_CLOCK_1ms|cnt~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~1_combout\ = (!\U_CLOCK_1ms|Equal0~4_combout\ & \U_CLOCK_1ms|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|Equal0~4_combout\,
	datac => \U_CLOCK_1ms|Add1~26_combout\,
	combout => \U_CLOCK_1ms|cnt~1_combout\);

-- Location: FF_X26_Y15_N7
\U_CLOCK_1ms|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|cnt~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(13));

-- Location: LCCOMB_X25_Y15_N28
\U_CLOCK_1ms|Add1~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~28_combout\ = (\U_CLOCK_1ms|cnt\(14) & (\U_CLOCK_1ms|Add1~27\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(14) & (!\U_CLOCK_1ms|Add1~27\ & VCC))
-- \U_CLOCK_1ms|Add1~29\ = CARRY((\U_CLOCK_1ms|cnt\(14) & !\U_CLOCK_1ms|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(14),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~27\,
	combout => \U_CLOCK_1ms|Add1~28_combout\,
	cout => \U_CLOCK_1ms|Add1~29\);

-- Location: LCCOMB_X26_Y15_N14
\U_CLOCK_1ms|cnt~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~0_combout\ = (!\U_CLOCK_1ms|Equal0~4_combout\ & \U_CLOCK_1ms|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|Equal0~4_combout\,
	datad => \U_CLOCK_1ms|Add1~28_combout\,
	combout => \U_CLOCK_1ms|cnt~0_combout\);

-- Location: FF_X26_Y15_N15
\U_CLOCK_1ms|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|cnt~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(14));

-- Location: LCCOMB_X25_Y15_N30
\U_CLOCK_1ms|Add1~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~30_combout\ = \U_CLOCK_1ms|cnt\(15) $ (\U_CLOCK_1ms|Add1~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(15),
	cin => \U_CLOCK_1ms|Add1~29\,
	combout => \U_CLOCK_1ms|Add1~30_combout\);

-- Location: FF_X25_Y15_N31
\U_CLOCK_1ms|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~30_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(15));

-- Location: LCCOMB_X26_Y15_N18
\U_CLOCK_1ms|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~0_combout\ = (\U_CLOCK_1ms|cnt\(13) & (!\U_CLOCK_1ms|cnt\(15) & (\U_CLOCK_1ms|cnt\(14) & !\U_CLOCK_1ms|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(13),
	datab => \U_CLOCK_1ms|cnt\(15),
	datac => \U_CLOCK_1ms|cnt\(14),
	datad => \U_CLOCK_1ms|cnt\(12),
	combout => \U_CLOCK_1ms|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y15_N4
\U_CLOCK_1ms|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~3_combout\ = (\U_CLOCK_1ms|cnt\(1) & (\U_CLOCK_1ms|cnt\(2) & (\U_CLOCK_1ms|cnt\(0) & !\U_CLOCK_1ms|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(1),
	datab => \U_CLOCK_1ms|cnt\(2),
	datac => \U_CLOCK_1ms|cnt\(0),
	datad => \U_CLOCK_1ms|cnt\(3),
	combout => \U_CLOCK_1ms|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y15_N24
\U_CLOCK_1ms|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~2_combout\ = (!\U_CLOCK_1ms|cnt\(6) & (\U_CLOCK_1ms|cnt\(7) & (\U_CLOCK_1ms|cnt\(5) & !\U_CLOCK_1ms|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(6),
	datab => \U_CLOCK_1ms|cnt\(7),
	datac => \U_CLOCK_1ms|cnt\(5),
	datad => \U_CLOCK_1ms|cnt\(4),
	combout => \U_CLOCK_1ms|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y15_N28
\U_CLOCK_1ms|Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~4_combout\ = (\U_CLOCK_1ms|Equal0~1_combout\ & (\U_CLOCK_1ms|Equal0~0_combout\ & (\U_CLOCK_1ms|Equal0~3_combout\ & \U_CLOCK_1ms|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|Equal0~1_combout\,
	datab => \U_CLOCK_1ms|Equal0~0_combout\,
	datac => \U_CLOCK_1ms|Equal0~3_combout\,
	datad => \U_CLOCK_1ms|Equal0~2_combout\,
	combout => \U_CLOCK_1ms|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y15_N12
\U_CLOCK_1ms|clk_tmp~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|clk_tmp~0_combout\ = \U_CLOCK_1ms|clk_tmp~q\ $ (\U_CLOCK_1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|clk_tmp~q\,
	datad => \U_CLOCK_1ms|Equal0~4_combout\,
	combout => \U_CLOCK_1ms|clk_tmp~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\U_CLOCK_1ms|clk_tmp~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|clk_tmp~feeder_combout\ = \U_CLOCK_1ms|clk_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|clk_tmp~0_combout\,
	combout => \U_CLOCK_1ms|clk_tmp~feeder_combout\);

-- Location: FF_X26_Y15_N21
\U_CLOCK_1ms|clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|clk_tmp~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|clk_tmp~q\);

-- Location: CLKCTRL_G5
\U_CLOCK_1ms|clk_tmp~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLOCK_1ms|clk_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N26
\U_KEY1|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt1[0]~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \U_KEY1|chatt1[0]~0_combout\);

-- Location: FF_X33_Y11_N27
\U_KEY1|chatt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(0));

-- Location: LCCOMB_X32_Y11_N24
\U_KEY1|chatt1[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt1[1]~feeder_combout\ = \U_KEY1|chatt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY1|chatt1\(0),
	combout => \U_KEY1|chatt1[1]~feeder_combout\);

-- Location: FF_X32_Y11_N25
\U_KEY1|chatt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(1));

-- Location: LCCOMB_X32_Y11_N14
\U_KEY1|chatt1[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt1[2]~feeder_combout\ = \U_KEY1|chatt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY1|chatt1\(1),
	combout => \U_KEY1|chatt1[2]~feeder_combout\);

-- Location: FF_X32_Y11_N15
\U_KEY1|chatt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(2));

-- Location: LCCOMB_X32_Y11_N4
\U_KEY1|chatt1[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt1[3]~feeder_combout\ = \U_KEY1|chatt1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY1|chatt1\(2),
	combout => \U_KEY1|chatt1[3]~feeder_combout\);

-- Location: FF_X32_Y11_N5
\U_KEY1|chatt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(3));

-- Location: LCCOMB_X32_Y11_N20
\U_KEY1|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt2~0_combout\ = (\U_KEY1|chatt1\(3) & (\U_KEY1|chatt1\(1) & (\U_KEY1|chatt1\(2) & \U_KEY1|chatt1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|chatt1\(3),
	datab => \U_KEY1|chatt1\(1),
	datac => \U_KEY1|chatt1\(2),
	datad => \U_KEY1|chatt1\(0),
	combout => \U_KEY1|chatt2~0_combout\);

-- Location: FF_X32_Y11_N21
\U_KEY1|chatt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt3\(0));

-- Location: LCCOMB_X32_Y11_N26
\U_KEY1|chatt3[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt3[1]~feeder_combout\ = \U_KEY1|chatt3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY1|chatt3\(0),
	combout => \U_KEY1|chatt3[1]~feeder_combout\);

-- Location: FF_X32_Y11_N27
\U_KEY1|chatt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt3\(1));

-- Location: LCCOMB_X32_Y11_N8
\U_KEY1|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt3[2]~feeder_combout\ = \U_KEY1|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY1|chatt3\(1),
	combout => \U_KEY1|chatt3[2]~feeder_combout\);

-- Location: FF_X32_Y11_N9
\U_KEY1|chatt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt3\(2));

-- Location: LCCOMB_X32_Y11_N30
\U_KEY1|chatt3[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt3[3]~feeder_combout\ = \U_KEY1|chatt3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY1|chatt3\(2),
	combout => \U_KEY1|chatt3[3]~feeder_combout\);

-- Location: FF_X32_Y11_N31
\U_KEY1|chatt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt3\(3));

-- Location: LCCOMB_X31_Y11_N2
\U_KEY1|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|Equal0~0_combout\ = (!\U_KEY1|chatt3\(0) & (\U_KEY1|chatt3\(2) & (\U_KEY1|chatt3\(3) & \U_KEY1|chatt3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|chatt3\(0),
	datab => \U_KEY1|chatt3\(2),
	datac => \U_KEY1|chatt3\(3),
	datad => \U_KEY1|chatt3\(1),
	combout => \U_KEY1|Equal0~0_combout\);

-- Location: FF_X31_Y11_N3
\U_KEY1|sw_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|sw_ena~q\);

-- Location: IOIBUF_X34_Y12_N1
\KEY[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X33_Y11_N4
\U_KEY4|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt1[0]~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \U_KEY4|chatt1[0]~0_combout\);

-- Location: FF_X33_Y11_N5
\U_KEY4|chatt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt1\(0));

-- Location: LCCOMB_X32_Y11_N18
\U_KEY4|chatt1[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt1[1]~feeder_combout\ = \U_KEY4|chatt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY4|chatt1\(0),
	combout => \U_KEY4|chatt1[1]~feeder_combout\);

-- Location: FF_X32_Y11_N19
\U_KEY4|chatt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt1\(1));

-- Location: LCCOMB_X32_Y11_N28
\U_KEY4|chatt1[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt1[2]~feeder_combout\ = \U_KEY4|chatt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY4|chatt1\(1),
	combout => \U_KEY4|chatt1[2]~feeder_combout\);

-- Location: FF_X32_Y11_N29
\U_KEY4|chatt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt1\(2));

-- Location: LCCOMB_X32_Y11_N22
\U_KEY4|chatt1[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt1[3]~feeder_combout\ = \U_KEY4|chatt1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY4|chatt1\(2),
	combout => \U_KEY4|chatt1[3]~feeder_combout\);

-- Location: FF_X32_Y11_N23
\U_KEY4|chatt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt1\(3));

-- Location: LCCOMB_X32_Y11_N16
\U_KEY4|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt2~0_combout\ = (\U_KEY4|chatt1\(0) & (\U_KEY4|chatt1\(2) & (\U_KEY4|chatt1\(3) & \U_KEY4|chatt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY4|chatt1\(0),
	datab => \U_KEY4|chatt1\(2),
	datac => \U_KEY4|chatt1\(3),
	datad => \U_KEY4|chatt1\(1),
	combout => \U_KEY4|chatt2~0_combout\);

-- Location: FF_X32_Y11_N17
\U_KEY4|chatt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt3\(0));

-- Location: LCCOMB_X31_Y11_N24
\U_KEY4|chatt3[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt3[1]~feeder_combout\ = \U_KEY4|chatt3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY4|chatt3\(0),
	combout => \U_KEY4|chatt3[1]~feeder_combout\);

-- Location: FF_X31_Y11_N25
\U_KEY4|chatt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt3\(1));

-- Location: LCCOMB_X30_Y11_N12
\U_KEY4|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt3[2]~feeder_combout\ = \U_KEY4|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY4|chatt3\(1),
	combout => \U_KEY4|chatt3[2]~feeder_combout\);

-- Location: FF_X30_Y11_N13
\U_KEY4|chatt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt3\(2));

-- Location: LCCOMB_X30_Y11_N6
\U_KEY4|chatt3[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|chatt3[3]~feeder_combout\ = \U_KEY4|chatt3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY4|chatt3\(2),
	combout => \U_KEY4|chatt3[3]~feeder_combout\);

-- Location: FF_X30_Y11_N7
\U_KEY4|chatt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|chatt3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|chatt3\(3));

-- Location: LCCOMB_X31_Y11_N4
\U_KEY4|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY4|Equal0~0_combout\ = (\U_KEY4|chatt3\(2) & (\U_KEY4|chatt3\(1) & (\U_KEY4|chatt3\(3) & !\U_KEY4|chatt3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY4|chatt3\(2),
	datab => \U_KEY4|chatt3\(1),
	datac => \U_KEY4|chatt3\(3),
	datad => \U_KEY4|chatt3\(0),
	combout => \U_KEY4|Equal0~0_combout\);

-- Location: FF_X31_Y11_N5
\U_KEY4|sw_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY4|sw_ena~q\);

-- Location: IOIBUF_X34_Y12_N22
\KEY[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X30_Y11_N18
\U_KEY2|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt1[0]~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \U_KEY2|chatt1[0]~0_combout\);

-- Location: FF_X30_Y11_N19
\U_KEY2|chatt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt1\(0));

-- Location: LCCOMB_X29_Y11_N24
\U_KEY2|chatt1[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt1[1]~feeder_combout\ = \U_KEY2|chatt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY2|chatt1\(0),
	combout => \U_KEY2|chatt1[1]~feeder_combout\);

-- Location: FF_X29_Y11_N25
\U_KEY2|chatt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt1\(1));

-- Location: LCCOMB_X30_Y11_N20
\U_KEY2|chatt1[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt1[2]~feeder_combout\ = \U_KEY2|chatt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY2|chatt1\(1),
	combout => \U_KEY2|chatt1[2]~feeder_combout\);

-- Location: FF_X30_Y11_N21
\U_KEY2|chatt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt1\(2));

-- Location: LCCOMB_X30_Y11_N22
\U_KEY2|chatt1[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt1[3]~feeder_combout\ = \U_KEY2|chatt1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY2|chatt1\(2),
	combout => \U_KEY2|chatt1[3]~feeder_combout\);

-- Location: FF_X30_Y11_N23
\U_KEY2|chatt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt1\(3));

-- Location: LCCOMB_X30_Y11_N0
\U_KEY2|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt2~0_combout\ = (\U_KEY2|chatt1\(0) & (\U_KEY2|chatt1\(1) & (\U_KEY2|chatt1\(3) & \U_KEY2|chatt1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|chatt1\(0),
	datab => \U_KEY2|chatt1\(1),
	datac => \U_KEY2|chatt1\(3),
	datad => \U_KEY2|chatt1\(2),
	combout => \U_KEY2|chatt2~0_combout\);

-- Location: FF_X30_Y11_N1
\U_KEY2|chatt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt3\(0));

-- Location: LCCOMB_X30_Y11_N24
\U_KEY2|chatt3[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt3[1]~feeder_combout\ = \U_KEY2|chatt3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY2|chatt3\(0),
	combout => \U_KEY2|chatt3[1]~feeder_combout\);

-- Location: FF_X30_Y11_N25
\U_KEY2|chatt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt3\(1));

-- Location: LCCOMB_X30_Y11_N10
\U_KEY2|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt3[2]~feeder_combout\ = \U_KEY2|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY2|chatt3\(1),
	combout => \U_KEY2|chatt3[2]~feeder_combout\);

-- Location: FF_X30_Y11_N11
\U_KEY2|chatt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt3\(2));

-- Location: LCCOMB_X31_Y11_N6
\U_KEY2|chatt3[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt3[3]~feeder_combout\ = \U_KEY2|chatt3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY2|chatt3\(2),
	combout => \U_KEY2|chatt3[3]~feeder_combout\);

-- Location: FF_X31_Y11_N7
\U_KEY2|chatt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|chatt3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|chatt3\(3));

-- Location: LCCOMB_X31_Y11_N26
\U_KEY2|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|Equal0~0_combout\ = (\U_KEY2|chatt3\(3) & (\U_KEY2|chatt3\(1) & (!\U_KEY2|chatt3\(0) & \U_KEY2|chatt3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|chatt3\(3),
	datab => \U_KEY2|chatt3\(1),
	datac => \U_KEY2|chatt3\(0),
	datad => \U_KEY2|chatt3\(2),
	combout => \U_KEY2|Equal0~0_combout\);

-- Location: FF_X31_Y11_N27
\U_KEY2|sw_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY2|sw_ena~q\);

-- Location: IOIBUF_X34_Y12_N8
\KEY[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X30_Y11_N28
\U_KEY3|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt1[0]~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \U_KEY3|chatt1[0]~0_combout\);

-- Location: FF_X30_Y11_N29
\U_KEY3|chatt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt1\(0));

-- Location: LCCOMB_X30_Y11_N30
\U_KEY3|chatt1[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt1[1]~feeder_combout\ = \U_KEY3|chatt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY3|chatt1\(0),
	combout => \U_KEY3|chatt1[1]~feeder_combout\);

-- Location: FF_X30_Y11_N31
\U_KEY3|chatt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt1\(1));

-- Location: LCCOMB_X30_Y11_N16
\U_KEY3|chatt1[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt1[2]~feeder_combout\ = \U_KEY3|chatt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY3|chatt1\(1),
	combout => \U_KEY3|chatt1[2]~feeder_combout\);

-- Location: FF_X30_Y11_N17
\U_KEY3|chatt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt1\(2));

-- Location: LCCOMB_X30_Y11_N2
\U_KEY3|chatt1[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt1[3]~feeder_combout\ = \U_KEY3|chatt1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY3|chatt1\(2),
	combout => \U_KEY3|chatt1[3]~feeder_combout\);

-- Location: FF_X30_Y11_N3
\U_KEY3|chatt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt1\(3));

-- Location: LCCOMB_X30_Y11_N4
\U_KEY3|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt2~0_combout\ = (\U_KEY3|chatt1\(3) & (\U_KEY3|chatt1\(0) & (\U_KEY3|chatt1\(1) & \U_KEY3|chatt1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY3|chatt1\(3),
	datab => \U_KEY3|chatt1\(0),
	datac => \U_KEY3|chatt1\(1),
	datad => \U_KEY3|chatt1\(2),
	combout => \U_KEY3|chatt2~0_combout\);

-- Location: FF_X30_Y11_N5
\U_KEY3|chatt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt3\(0));

-- Location: LCCOMB_X30_Y11_N14
\U_KEY3|chatt3[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt3[1]~feeder_combout\ = \U_KEY3|chatt3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY3|chatt3\(0),
	combout => \U_KEY3|chatt3[1]~feeder_combout\);

-- Location: FF_X30_Y11_N15
\U_KEY3|chatt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt3\(1));

-- Location: LCCOMB_X30_Y11_N8
\U_KEY3|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt3[2]~feeder_combout\ = \U_KEY3|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY3|chatt3\(1),
	combout => \U_KEY3|chatt3[2]~feeder_combout\);

-- Location: FF_X30_Y11_N9
\U_KEY3|chatt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt3\(2));

-- Location: LCCOMB_X30_Y11_N26
\U_KEY3|chatt3[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt3[3]~feeder_combout\ = \U_KEY3|chatt3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY3|chatt3\(2),
	combout => \U_KEY3|chatt3[3]~feeder_combout\);

-- Location: FF_X30_Y11_N27
\U_KEY3|chatt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|chatt3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|chatt3\(3));

-- Location: LCCOMB_X31_Y11_N20
\U_KEY3|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|Equal0~0_combout\ = (\U_KEY3|chatt3\(1) & (!\U_KEY3|chatt3\(0) & (\U_KEY3|chatt3\(3) & \U_KEY3|chatt3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY3|chatt3\(1),
	datab => \U_KEY3|chatt3\(0),
	datac => \U_KEY3|chatt3\(3),
	datad => \U_KEY3|chatt3\(2),
	combout => \U_KEY3|Equal0~0_combout\);

-- Location: FF_X31_Y11_N21
\U_KEY3|sw_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY3|sw_ena~q\);

-- Location: LCCOMB_X31_Y11_N30
\Equal2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\U_KEY1|sw_ena~q\ & (!\U_KEY4|sw_ena~q\ & (!\U_KEY2|sw_ena~q\ & \U_KEY3|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|sw_ena~q\,
	datab => \U_KEY4|sw_ena~q\,
	datac => \U_KEY2|sw_ena~q\,
	datad => \U_KEY3|sw_ena~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X31_Y11_N28
\m_sele~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_sele~1_combout\ = (\U_KEY3|sw_ena~q\ & (!\U_KEY4|sw_ena~q\ & (!\U_KEY2|sw_ena~q\ & !\U_KEY1|sw_ena~q\))) # (!\U_KEY3|sw_ena~q\ & ((\U_KEY4|sw_ena~q\ & (!\U_KEY2|sw_ena~q\ & !\U_KEY1|sw_ena~q\)) # (!\U_KEY4|sw_ena~q\ & (\U_KEY2|sw_ena~q\ $ 
-- (\U_KEY1|sw_ena~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY3|sw_ena~q\,
	datab => \U_KEY4|sw_ena~q\,
	datac => \U_KEY2|sw_ena~q\,
	datad => \U_KEY1|sw_ena~q\,
	combout => \m_sele~1_combout\);

-- Location: FF_X31_Y11_N31
\m_sele[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Equal2~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \m_sele~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_sele(2));

-- Location: LCCOMB_X31_Y10_N16
\U_LED_KEY3|Add1~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~4_combout\ = (\U_LED_KEY3|led_cnt\(2) & (\U_LED_KEY3|Add1~3\ $ (GND))) # (!\U_LED_KEY3|led_cnt\(2) & (!\U_LED_KEY3|Add1~3\ & VCC))
-- \U_LED_KEY3|Add1~5\ = CARRY((\U_LED_KEY3|led_cnt\(2) & !\U_LED_KEY3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY3|led_cnt\(2),
	datad => VCC,
	cin => \U_LED_KEY3|Add1~3\,
	combout => \U_LED_KEY3|Add1~4_combout\,
	cout => \U_LED_KEY3|Add1~5\);

-- Location: LCCOMB_X31_Y10_N18
\U_LED_KEY3|Add1~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~6_combout\ = (\U_LED_KEY3|led_cnt\(3) & (!\U_LED_KEY3|Add1~5\)) # (!\U_LED_KEY3|led_cnt\(3) & ((\U_LED_KEY3|Add1~5\) # (GND)))
-- \U_LED_KEY3|Add1~7\ = CARRY((!\U_LED_KEY3|Add1~5\) # (!\U_LED_KEY3|led_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_cnt\(3),
	datad => VCC,
	cin => \U_LED_KEY3|Add1~5\,
	combout => \U_LED_KEY3|Add1~6_combout\,
	cout => \U_LED_KEY3|Add1~7\);

-- Location: LCCOMB_X31_Y10_N30
\U_LED_KEY3|led_cnt~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_cnt~2_combout\ = (\U_LED_KEY3|Add1~6_combout\ & ((!\U_LED_KEY3|Equal0~0_combout\) # (!\U_LED_KEY3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|Equal0~1_combout\,
	datab => \U_LED_KEY3|Equal0~0_combout\,
	datad => \U_LED_KEY3|Add1~6_combout\,
	combout => \U_LED_KEY3|led_cnt~2_combout\);

-- Location: FF_X31_Y10_N31
\U_LED_KEY3|led_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_cnt~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(3));

-- Location: LCCOMB_X31_Y10_N20
\U_LED_KEY3|Add1~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~8_combout\ = (\U_LED_KEY3|led_cnt\(4) & (\U_LED_KEY3|Add1~7\ $ (GND))) # (!\U_LED_KEY3|led_cnt\(4) & (!\U_LED_KEY3|Add1~7\ & VCC))
-- \U_LED_KEY3|Add1~9\ = CARRY((\U_LED_KEY3|led_cnt\(4) & !\U_LED_KEY3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY3|led_cnt\(4),
	datad => VCC,
	cin => \U_LED_KEY3|Add1~7\,
	combout => \U_LED_KEY3|Add1~8_combout\,
	cout => \U_LED_KEY3|Add1~9\);

-- Location: FF_X31_Y10_N21
\U_LED_KEY3|led_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|Add1~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(4));

-- Location: LCCOMB_X31_Y10_N22
\U_LED_KEY3|Add1~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~10_combout\ = (\U_LED_KEY3|led_cnt\(5) & (!\U_LED_KEY3|Add1~9\)) # (!\U_LED_KEY3|led_cnt\(5) & ((\U_LED_KEY3|Add1~9\) # (GND)))
-- \U_LED_KEY3|Add1~11\ = CARRY((!\U_LED_KEY3|Add1~9\) # (!\U_LED_KEY3|led_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_cnt\(5),
	datad => VCC,
	cin => \U_LED_KEY3|Add1~9\,
	combout => \U_LED_KEY3|Add1~10_combout\,
	cout => \U_LED_KEY3|Add1~11\);

-- Location: FF_X31_Y10_N23
\U_LED_KEY3|led_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|Add1~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(5));

-- Location: LCCOMB_X31_Y10_N24
\U_LED_KEY3|Add1~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~12_combout\ = (\U_LED_KEY3|led_cnt\(6) & (\U_LED_KEY3|Add1~11\ $ (GND))) # (!\U_LED_KEY3|led_cnt\(6) & (!\U_LED_KEY3|Add1~11\ & VCC))
-- \U_LED_KEY3|Add1~13\ = CARRY((\U_LED_KEY3|led_cnt\(6) & !\U_LED_KEY3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_cnt\(6),
	datad => VCC,
	cin => \U_LED_KEY3|Add1~11\,
	combout => \U_LED_KEY3|Add1~12_combout\,
	cout => \U_LED_KEY3|Add1~13\);

-- Location: LCCOMB_X31_Y10_N6
\U_LED_KEY3|led_cnt~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_cnt~1_combout\ = (\U_LED_KEY3|Add1~12_combout\ & ((!\U_LED_KEY3|Equal0~0_combout\) # (!\U_LED_KEY3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|Equal0~1_combout\,
	datab => \U_LED_KEY3|Equal0~0_combout\,
	datad => \U_LED_KEY3|Add1~12_combout\,
	combout => \U_LED_KEY3|led_cnt~1_combout\);

-- Location: FF_X31_Y10_N7
\U_LED_KEY3|led_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_cnt~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(6));

-- Location: LCCOMB_X31_Y10_N26
\U_LED_KEY3|Add1~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~14_combout\ = \U_LED_KEY3|led_cnt\(7) $ (\U_LED_KEY3|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY3|led_cnt\(7),
	cin => \U_LED_KEY3|Add1~13\,
	combout => \U_LED_KEY3|Add1~14_combout\);

-- Location: LCCOMB_X31_Y10_N4
\U_LED_KEY3|led_cnt~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_cnt~0_combout\ = (\U_LED_KEY3|Add1~14_combout\ & ((!\U_LED_KEY3|Equal0~0_combout\) # (!\U_LED_KEY3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|Equal0~1_combout\,
	datac => \U_LED_KEY3|Add1~14_combout\,
	datad => \U_LED_KEY3|Equal0~0_combout\,
	combout => \U_LED_KEY3|led_cnt~0_combout\);

-- Location: FF_X31_Y10_N5
\U_LED_KEY3|led_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_cnt~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(7));

-- Location: LCCOMB_X31_Y10_N28
\U_LED_KEY3|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Equal0~0_combout\ = (!\U_LED_KEY3|led_cnt\(5) & (!\U_LED_KEY3|led_cnt\(4) & (\U_LED_KEY3|led_cnt\(7) & \U_LED_KEY3|led_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_cnt\(5),
	datab => \U_LED_KEY3|led_cnt\(4),
	datac => \U_LED_KEY3|led_cnt\(7),
	datad => \U_LED_KEY3|led_cnt\(6),
	combout => \U_LED_KEY3|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y10_N12
\U_LED_KEY3|Add1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~0_combout\ = \U_LED_KEY3|led_cnt\(0) $ (VCC)
-- \U_LED_KEY3|Add1~1\ = CARRY(\U_LED_KEY3|led_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY3|led_cnt\(0),
	datad => VCC,
	combout => \U_LED_KEY3|Add1~0_combout\,
	cout => \U_LED_KEY3|Add1~1\);

-- Location: LCCOMB_X31_Y10_N8
\U_LED_KEY3|led_cnt~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_cnt~3_combout\ = (\U_LED_KEY3|Add1~0_combout\ & ((!\U_LED_KEY3|Equal0~0_combout\) # (!\U_LED_KEY3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|Equal0~1_combout\,
	datab => \U_LED_KEY3|Equal0~0_combout\,
	datac => \U_LED_KEY3|Add1~0_combout\,
	combout => \U_LED_KEY3|led_cnt~3_combout\);

-- Location: FF_X31_Y10_N9
\U_LED_KEY3|led_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_cnt~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(0));

-- Location: LCCOMB_X31_Y10_N14
\U_LED_KEY3|Add1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Add1~2_combout\ = (\U_LED_KEY3|led_cnt\(1) & (!\U_LED_KEY3|Add1~1\)) # (!\U_LED_KEY3|led_cnt\(1) & ((\U_LED_KEY3|Add1~1\) # (GND)))
-- \U_LED_KEY3|Add1~3\ = CARRY((!\U_LED_KEY3|Add1~1\) # (!\U_LED_KEY3|led_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY3|led_cnt\(1),
	datad => VCC,
	cin => \U_LED_KEY3|Add1~1\,
	combout => \U_LED_KEY3|Add1~2_combout\,
	cout => \U_LED_KEY3|Add1~3\);

-- Location: FF_X31_Y10_N15
\U_LED_KEY3|led_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|Add1~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(1));

-- Location: FF_X31_Y10_N17
\U_LED_KEY3|led_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|Add1~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_cnt\(2));

-- Location: LCCOMB_X31_Y10_N10
\U_LED_KEY3|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|Equal0~1_combout\ = (!\U_LED_KEY3|led_cnt\(2) & (!\U_LED_KEY3|led_cnt\(0) & (\U_LED_KEY3|led_cnt\(3) & !\U_LED_KEY3|led_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_cnt\(2),
	datab => \U_LED_KEY3|led_cnt\(0),
	datac => \U_LED_KEY3|led_cnt\(3),
	datad => \U_LED_KEY3|led_cnt\(1),
	combout => \U_LED_KEY3|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y10_N0
\U_LED_KEY3|led~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led~0_combout\ = \U_LED_KEY3|led~q\ $ (((\U_LED_KEY3|Equal0~1_combout\ & \U_LED_KEY3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|Equal0~1_combout\,
	datac => \U_LED_KEY3|led~q\,
	datad => \U_LED_KEY3|Equal0~0_combout\,
	combout => \U_LED_KEY3|led~0_combout\);

-- Location: FF_X31_Y10_N1
\U_LED_KEY3|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led~q\);

-- Location: LCCOMB_X32_Y10_N12
\U_LED_KEY1|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~0_combout\ = \U_LED_KEY1|led_cnt\(0) $ (VCC)
-- \U_LED_KEY1|Add0~1\ = CARRY(\U_LED_KEY1|led_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led_cnt\(0),
	datad => VCC,
	combout => \U_LED_KEY1|Add0~0_combout\,
	cout => \U_LED_KEY1|Add0~1\);

-- Location: LCCOMB_X32_Y10_N14
\U_LED_KEY1|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~2_combout\ = (\U_LED_KEY1|led_cnt\(1) & (!\U_LED_KEY1|Add0~1\)) # (!\U_LED_KEY1|led_cnt\(1) & ((\U_LED_KEY1|Add0~1\) # (GND)))
-- \U_LED_KEY1|Add0~3\ = CARRY((!\U_LED_KEY1|Add0~1\) # (!\U_LED_KEY1|led_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|led_cnt\(1),
	datad => VCC,
	cin => \U_LED_KEY1|Add0~1\,
	combout => \U_LED_KEY1|Add0~2_combout\,
	cout => \U_LED_KEY1|Add0~3\);

-- Location: FF_X32_Y10_N15
\U_LED_KEY1|led_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|Add0~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(1));

-- Location: LCCOMB_X32_Y10_N16
\U_LED_KEY1|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~4_combout\ = (\U_LED_KEY1|led_cnt\(2) & (\U_LED_KEY1|Add0~3\ $ (GND))) # (!\U_LED_KEY1|led_cnt\(2) & (!\U_LED_KEY1|Add0~3\ & VCC))
-- \U_LED_KEY1|Add0~5\ = CARRY((\U_LED_KEY1|led_cnt\(2) & !\U_LED_KEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|led_cnt\(2),
	datad => VCC,
	cin => \U_LED_KEY1|Add0~3\,
	combout => \U_LED_KEY1|Add0~4_combout\,
	cout => \U_LED_KEY1|Add0~5\);

-- Location: LCCOMB_X32_Y10_N4
\U_LED_KEY1|led_cnt~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|led_cnt~2_combout\ = (\U_LED_KEY1|Add0~4_combout\ & ((!\U_LED_KEY1|Equal0~1_combout\) # (!\U_LED_KEY1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|Equal0~0_combout\,
	datab => \U_LED_KEY1|Equal0~1_combout\,
	datad => \U_LED_KEY1|Add0~4_combout\,
	combout => \U_LED_KEY1|led_cnt~2_combout\);

-- Location: FF_X32_Y10_N5
\U_LED_KEY1|led_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|led_cnt~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(2));

-- Location: LCCOMB_X32_Y10_N18
\U_LED_KEY1|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~6_combout\ = (\U_LED_KEY1|led_cnt\(3) & (!\U_LED_KEY1|Add0~5\)) # (!\U_LED_KEY1|led_cnt\(3) & ((\U_LED_KEY1|Add0~5\) # (GND)))
-- \U_LED_KEY1|Add0~7\ = CARRY((!\U_LED_KEY1|Add0~5\) # (!\U_LED_KEY1|led_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|led_cnt\(3),
	datad => VCC,
	cin => \U_LED_KEY1|Add0~5\,
	combout => \U_LED_KEY1|Add0~6_combout\,
	cout => \U_LED_KEY1|Add0~7\);

-- Location: FF_X32_Y10_N19
\U_LED_KEY1|led_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|Add0~6_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(3));

-- Location: LCCOMB_X32_Y10_N20
\U_LED_KEY1|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~8_combout\ = (\U_LED_KEY1|led_cnt\(4) & (\U_LED_KEY1|Add0~7\ $ (GND))) # (!\U_LED_KEY1|led_cnt\(4) & (!\U_LED_KEY1|Add0~7\ & VCC))
-- \U_LED_KEY1|Add0~9\ = CARRY((\U_LED_KEY1|led_cnt\(4) & !\U_LED_KEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|led_cnt\(4),
	datad => VCC,
	cin => \U_LED_KEY1|Add0~7\,
	combout => \U_LED_KEY1|Add0~8_combout\,
	cout => \U_LED_KEY1|Add0~9\);

-- Location: FF_X32_Y10_N21
\U_LED_KEY1|led_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|Add0~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(4));

-- Location: LCCOMB_X32_Y10_N22
\U_LED_KEY1|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~10_combout\ = (\U_LED_KEY1|led_cnt\(5) & (!\U_LED_KEY1|Add0~9\)) # (!\U_LED_KEY1|led_cnt\(5) & ((\U_LED_KEY1|Add0~9\) # (GND)))
-- \U_LED_KEY1|Add0~11\ = CARRY((!\U_LED_KEY1|Add0~9\) # (!\U_LED_KEY1|led_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|led_cnt\(5),
	datad => VCC,
	cin => \U_LED_KEY1|Add0~9\,
	combout => \U_LED_KEY1|Add0~10_combout\,
	cout => \U_LED_KEY1|Add0~11\);

-- Location: LCCOMB_X32_Y10_N8
\U_LED_KEY1|led_cnt~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|led_cnt~1_combout\ = (\U_LED_KEY1|Add0~10_combout\ & ((!\U_LED_KEY1|Equal0~0_combout\) # (!\U_LED_KEY1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|Equal0~1_combout\,
	datac => \U_LED_KEY1|Add0~10_combout\,
	datad => \U_LED_KEY1|Equal0~0_combout\,
	combout => \U_LED_KEY1|led_cnt~1_combout\);

-- Location: FF_X32_Y10_N9
\U_LED_KEY1|led_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|led_cnt~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(5));

-- Location: LCCOMB_X32_Y10_N24
\U_LED_KEY1|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~12_combout\ = (\U_LED_KEY1|led_cnt\(6) & (\U_LED_KEY1|Add0~11\ $ (GND))) # (!\U_LED_KEY1|led_cnt\(6) & (!\U_LED_KEY1|Add0~11\ & VCC))
-- \U_LED_KEY1|Add0~13\ = CARRY((\U_LED_KEY1|led_cnt\(6) & !\U_LED_KEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led_cnt\(6),
	datad => VCC,
	cin => \U_LED_KEY1|Add0~11\,
	combout => \U_LED_KEY1|Add0~12_combout\,
	cout => \U_LED_KEY1|Add0~13\);

-- Location: LCCOMB_X32_Y10_N30
\U_LED_KEY1|led_cnt~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|led_cnt~0_combout\ = (\U_LED_KEY1|Add0~12_combout\ & ((!\U_LED_KEY1|Equal0~1_combout\) # (!\U_LED_KEY1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|Equal0~0_combout\,
	datab => \U_LED_KEY1|Equal0~1_combout\,
	datad => \U_LED_KEY1|Add0~12_combout\,
	combout => \U_LED_KEY1|led_cnt~0_combout\);

-- Location: FF_X32_Y10_N31
\U_LED_KEY1|led_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|led_cnt~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(6));

-- Location: LCCOMB_X32_Y10_N26
\U_LED_KEY1|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Add0~14_combout\ = \U_LED_KEY1|led_cnt\(7) $ (\U_LED_KEY1|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led_cnt\(7),
	cin => \U_LED_KEY1|Add0~13\,
	combout => \U_LED_KEY1|Add0~14_combout\);

-- Location: FF_X32_Y10_N27
\U_LED_KEY1|led_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|Add0~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(7));

-- Location: LCCOMB_X32_Y10_N6
\U_LED_KEY1|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Equal0~0_combout\ = (\U_LED_KEY1|led_cnt\(6) & (\U_LED_KEY1|led_cnt\(5) & (!\U_LED_KEY1|led_cnt\(7) & !\U_LED_KEY1|led_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led_cnt\(6),
	datab => \U_LED_KEY1|led_cnt\(5),
	datac => \U_LED_KEY1|led_cnt\(7),
	datad => \U_LED_KEY1|led_cnt\(4),
	combout => \U_LED_KEY1|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y10_N10
\U_LED_KEY1|led_cnt~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|led_cnt~3_combout\ = (\U_LED_KEY1|Add0~0_combout\ & ((!\U_LED_KEY1|Equal0~0_combout\) # (!\U_LED_KEY1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|Add0~0_combout\,
	datab => \U_LED_KEY1|Equal0~1_combout\,
	datad => \U_LED_KEY1|Equal0~0_combout\,
	combout => \U_LED_KEY1|led_cnt~3_combout\);

-- Location: FF_X32_Y10_N11
\U_LED_KEY1|led_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|led_cnt~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led_cnt\(0));

-- Location: LCCOMB_X32_Y10_N28
\U_LED_KEY1|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|Equal0~1_combout\ = (!\U_LED_KEY1|led_cnt\(0) & (\U_LED_KEY1|led_cnt\(2) & (!\U_LED_KEY1|led_cnt\(1) & !\U_LED_KEY1|led_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led_cnt\(0),
	datab => \U_LED_KEY1|led_cnt\(2),
	datac => \U_LED_KEY1|led_cnt\(1),
	datad => \U_LED_KEY1|led_cnt\(3),
	combout => \U_LED_KEY1|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y10_N0
\U_LED_KEY1|led~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY1|led~0_combout\ = \U_LED_KEY1|led~q\ $ (((\U_LED_KEY1|Equal0~1_combout\ & \U_LED_KEY1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED_KEY1|Equal0~1_combout\,
	datac => \U_LED_KEY1|led~q\,
	datad => \U_LED_KEY1|Equal0~0_combout\,
	combout => \U_LED_KEY1|led~0_combout\);

-- Location: FF_X32_Y10_N1
\U_LED_KEY1|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY1|led~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY1|led~q\);

-- Location: LCCOMB_X31_Y11_N16
\m_sele~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_sele~0_combout\ = (\U_KEY4|sw_ena~q\) # ((\U_KEY1|sw_ena~q\ & ((\U_KEY3|sw_ena~q\) # (\U_KEY2|sw_ena~q\))) # (!\U_KEY1|sw_ena~q\ & (\U_KEY3|sw_ena~q\ $ (!\U_KEY2|sw_ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|sw_ena~q\,
	datab => \U_KEY3|sw_ena~q\,
	datac => \U_KEY2|sw_ena~q\,
	datad => \U_KEY4|sw_ena~q\,
	combout => \m_sele~0_combout\);

-- Location: FF_X31_Y11_N17
\m_sele[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_sele~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \m_sele~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_sele(3));

-- Location: LCCOMB_X31_Y10_N2
\Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (m_sele(2) & (\U_LED_KEY3|led~q\ & ((!m_sele(3))))) # (!m_sele(2) & (((\U_LED_KEY1|led~q\ & m_sele(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_sele(2),
	datab => \U_LED_KEY3|led~q\,
	datac => \U_LED_KEY1|led~q\,
	datad => m_sele(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X31_Y11_N18
\Equal1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\U_KEY1|sw_ena~q\ & (!\U_KEY4|sw_ena~q\ & (\U_KEY2|sw_ena~q\ & !\U_KEY3|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|sw_ena~q\,
	datab => \U_KEY4|sw_ena~q\,
	datac => \U_KEY2|sw_ena~q\,
	datad => \U_KEY3|sw_ena~q\,
	combout => \Equal1~0_combout\);

-- Location: FF_X31_Y11_N19
\m_sele[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Equal1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \m_sele~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_sele(1));

-- Location: LCCOMB_X31_Y11_N0
\Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\U_KEY1|sw_ena~q\ & (!\U_KEY3|sw_ena~q\ & (!\U_KEY2|sw_ena~q\ & !\U_KEY4|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|sw_ena~q\,
	datab => \U_KEY3|sw_ena~q\,
	datac => \U_KEY2|sw_ena~q\,
	datad => \U_KEY4|sw_ena~q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X31_Y11_N1
\m_sele[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Equal0~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \m_sele~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_sele(0));

-- Location: LCCOMB_X30_Y10_N20
\Mux4~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (!m_sele(1) & !m_sele(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => m_sele(1),
	datad => m_sele(0),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X31_Y11_N12
\U_LED_KEY3|led_reg[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_reg[0]~0_combout\ = \U_LED_KEY3|led_reg\(0) $ (\U_KEY3|sw_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_LED_KEY3|led_reg\(0),
	datad => \U_KEY3|sw_ena~q\,
	combout => \U_LED_KEY3|led_reg[0]~0_combout\);

-- Location: FF_X31_Y11_N13
\U_LED_KEY3|led_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_reg[0]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_reg\(0));

-- Location: LCCOMB_X31_Y9_N2
\Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\U_LED_KEY1|led~q\ & ((m_sele(2)) # ((m_sele(1)) # (m_sele(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led~q\,
	datab => m_sele(2),
	datac => m_sele(1),
	datad => m_sele(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y9_N24
\Mux0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (m_sele(3)) # ((m_sele(0)) # (m_sele(2) $ (!m_sele(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_sele(3),
	datab => m_sele(2),
	datac => m_sele(1),
	datad => m_sele(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X31_Y9_N20
\U_LED_KEY2|led_cnt[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY2|led_cnt[1]~2_combout\ = \U_LED_KEY2|led_cnt\(1) $ (\U_LED_KEY2|led_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_LED_KEY2|led_cnt\(1),
	datad => \U_LED_KEY2|led_cnt\(0),
	combout => \U_LED_KEY2|led_cnt[1]~2_combout\);

-- Location: FF_X31_Y9_N21
\U_LED_KEY2|led_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY2|led_cnt[1]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_cnt\(1));

-- Location: LCCOMB_X31_Y9_N16
\U_LED_KEY2|led_cnt~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY2|led_cnt~0_combout\ = (\U_LED_KEY2|led_cnt\(0) & (\U_LED_KEY2|led_cnt\(1) $ ((\U_LED_KEY2|led_cnt\(2))))) # (!\U_LED_KEY2|led_cnt\(0) & (\U_LED_KEY2|led_cnt\(2) & ((\U_LED_KEY2|led_cnt\(1)) # (\U_LED_KEY2|led_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY2|led_cnt\(0),
	datab => \U_LED_KEY2|led_cnt\(1),
	datac => \U_LED_KEY2|led_cnt\(2),
	datad => \U_LED_KEY2|led_cnt\(3),
	combout => \U_LED_KEY2|led_cnt~0_combout\);

-- Location: FF_X31_Y9_N17
\U_LED_KEY2|led_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY2|led_cnt~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_cnt\(2));

-- Location: LCCOMB_X31_Y9_N6
\U_LED_KEY2|led_cnt[3]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY2|led_cnt[3]~1_combout\ = \U_LED_KEY2|led_cnt\(3) $ (((\U_LED_KEY2|led_cnt\(0) & (\U_LED_KEY2|led_cnt\(2) & \U_LED_KEY2|led_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY2|led_cnt\(0),
	datab => \U_LED_KEY2|led_cnt\(2),
	datac => \U_LED_KEY2|led_cnt\(3),
	datad => \U_LED_KEY2|led_cnt\(1),
	combout => \U_LED_KEY2|led_cnt[3]~1_combout\);

-- Location: FF_X31_Y9_N7
\U_LED_KEY2|led_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY2|led_cnt[3]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_cnt\(3));

-- Location: LCCOMB_X31_Y9_N12
\U_LED_KEY2|led_cnt~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY2|led_cnt~3_combout\ = (!\U_LED_KEY2|led_cnt\(0) & ((\U_LED_KEY2|led_cnt\(3)) # ((\U_LED_KEY2|led_cnt\(1)) # (!\U_LED_KEY2|led_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY2|led_cnt\(3),
	datab => \U_LED_KEY2|led_cnt\(1),
	datac => \U_LED_KEY2|led_cnt\(0),
	datad => \U_LED_KEY2|led_cnt\(2),
	combout => \U_LED_KEY2|led_cnt~3_combout\);

-- Location: FF_X31_Y9_N13
\U_LED_KEY2|led_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY2|led_cnt~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_cnt\(0));

-- Location: LCCOMB_X31_Y9_N4
\U_LED_KEY2|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY2|Equal0~0_combout\ = (!\U_LED_KEY2|led_cnt\(0) & (!\U_LED_KEY2|led_cnt\(1) & (\U_LED_KEY2|led_cnt\(2) & !\U_LED_KEY2|led_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY2|led_cnt\(0),
	datab => \U_LED_KEY2|led_cnt\(1),
	datac => \U_LED_KEY2|led_cnt\(2),
	datad => \U_LED_KEY2|led_cnt\(3),
	combout => \U_LED_KEY2|Equal0~0_combout\);

-- Location: FF_X31_Y9_N5
\U_LED_KEY2|led_refresh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY2|Equal0~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_refresh~q\);

-- Location: FF_X31_Y9_N23
\U_LED_KEY2|led_sftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	asdata => \U_LED_KEY2|led_refresh~q\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_sftreg\(0));

-- Location: LCCOMB_X31_Y9_N18
\Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (m_sele(3)) # ((m_sele(2) & (!m_sele(1) & !m_sele(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_sele(3),
	datab => m_sele(2),
	datac => m_sele(1),
	datad => m_sele(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y9_N22
\Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux0~2_combout\ & (\U_LED_KEY1|led~q\ & ((!\Mux0~1_combout\)))) # (!\Mux0~2_combout\ & (((\Mux0~1_combout\) # (!\U_LED_KEY2|led_sftreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led~q\,
	datab => \Mux0~2_combout\,
	datac => \U_LED_KEY2|led_sftreg\(0),
	datad => \Mux0~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X31_Y9_N14
\Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\U_LED_KEY3|led_reg\(0)) # ((!\Mux0~1_combout\)))) # (!\Mux3~0_combout\ & (((\Mux0~0_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_reg\(0),
	datab => \Mux0~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X31_Y9_N30
\Mux0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (m_sele(1)) # ((m_sele(2)) # (m_sele(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_sele(1),
	datac => m_sele(2),
	datad => m_sele(0),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X31_Y9_N10
\Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~2_combout\ & (\U_LED_KEY1|led~q\ & ((\Mux0~3_combout\) # (!\Mux0~1_combout\)))) # (!\Mux0~2_combout\ & (((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \U_LED_KEY1|led~q\,
	datad => \Mux0~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X31_Y9_N9
\U_LED_KEY2|led_sftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	asdata => \U_LED_KEY2|led_sftreg\(0),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_sftreg\(1));

-- Location: LCCOMB_X31_Y11_N14
\U_LED_KEY3|led_reg[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_reg[1]~1_combout\ = \U_LED_KEY3|led_reg\(1) $ (((\U_LED_KEY3|led_reg\(0) & \U_KEY3|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_reg\(0),
	datac => \U_LED_KEY3|led_reg\(1),
	datad => \U_KEY3|sw_ena~q\,
	combout => \U_LED_KEY3|led_reg[1]~1_combout\);

-- Location: FF_X31_Y11_N15
\U_LED_KEY3|led_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_reg[1]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_reg\(1));

-- Location: LCCOMB_X31_Y9_N8
\Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\Mux0~2_combout\) # ((\U_LED_KEY3|led_reg\(1))))) # (!\Mux2~0_combout\ & (!\Mux0~2_combout\ & (!\U_LED_KEY2|led_sftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \U_LED_KEY2|led_sftreg\(1),
	datad => \U_LED_KEY3|led_reg\(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X31_Y11_N8
\U_LED_KEY3|led_reg[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_reg[2]~2_combout\ = \U_LED_KEY3|led_reg\(2) $ (((\U_LED_KEY3|led_reg\(0) & (\U_LED_KEY3|led_reg\(1) & \U_KEY3|sw_ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_reg\(0),
	datab => \U_LED_KEY3|led_reg\(1),
	datac => \U_LED_KEY3|led_reg\(2),
	datad => \U_KEY3|sw_ena~q\,
	combout => \U_LED_KEY3|led_reg[2]~2_combout\);

-- Location: FF_X31_Y11_N9
\U_LED_KEY3|led_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_reg[2]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_reg\(2));

-- Location: FF_X31_Y9_N27
\U_LED_KEY2|led_sftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	asdata => \U_LED_KEY2|led_sftreg\(1),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_sftreg\(2));

-- Location: LCCOMB_X31_Y9_N26
\Mux1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux0~2_combout\ & (\U_LED_KEY1|led~q\ & ((!\Mux0~1_combout\)))) # (!\Mux0~2_combout\ & (((\Mux0~1_combout\) # (!\U_LED_KEY2|led_sftreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY1|led~q\,
	datab => \Mux0~2_combout\,
	datac => \U_LED_KEY2|led_sftreg\(2),
	datad => \Mux0~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X31_Y9_N0
\Mux1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\U_LED_KEY3|led_reg\(2)) # ((!\Mux0~1_combout\)))) # (!\Mux1~0_combout\ & (((\Mux0~0_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_reg\(2),
	datab => \Mux0~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X31_Y9_N29
\U_LED_KEY2|led_sftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	asdata => \U_LED_KEY2|led_sftreg\(2),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY2|led_sftreg\(3));

-- Location: LCCOMB_X31_Y11_N10
\U_LED_KEY3|led_reg[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_reg[3]~3_combout\ = (\U_LED_KEY3|led_reg\(1) & (\U_KEY3|sw_ena~q\ & (\U_LED_KEY3|led_reg\(2) & \U_LED_KEY3|led_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED_KEY3|led_reg\(1),
	datab => \U_KEY3|sw_ena~q\,
	datac => \U_LED_KEY3|led_reg\(2),
	datad => \U_LED_KEY3|led_reg\(0),
	combout => \U_LED_KEY3|led_reg[3]~3_combout\);

-- Location: LCCOMB_X31_Y11_N22
\U_LED_KEY3|led_reg[3]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_LED_KEY3|led_reg[3]~4_combout\ = \U_LED_KEY3|led_reg\(3) $ (\U_LED_KEY3|led_reg[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_LED_KEY3|led_reg\(3),
	datad => \U_LED_KEY3|led_reg[3]~3_combout\,
	combout => \U_LED_KEY3|led_reg[3]~4_combout\);

-- Location: FF_X31_Y11_N23
\U_LED_KEY3|led_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_LED_KEY3|led_reg[3]~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_LED_KEY3|led_reg\(3));

-- Location: LCCOMB_X31_Y9_N28
\Mux0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux2~0_combout\ & ((\Mux0~2_combout\) # ((\U_LED_KEY3|led_reg\(3))))) # (!\Mux2~0_combout\ & (!\Mux0~2_combout\ & (!\U_LED_KEY2|led_sftreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \U_LED_KEY2|led_sftreg\(3),
	datad => \U_LED_KEY3|led_reg\(3),
	combout => \Mux0~4_combout\);

ww_LED_BO <= \LED_BO~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;
END structure;


