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

-- DATE "07/21/2019 10:30:38"

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
	LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLOCK_1ms|clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~0_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~1\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~2_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~3\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~4_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~5\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~6_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~1_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~7\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~8_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|cnt~0_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~9\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~10_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~11\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~12_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~13\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~14_combout\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~15\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~16_combout\ : std_logic;
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
SIGNAL \U_CLOCK_1ms|Add1~27\ : std_logic;
SIGNAL \U_CLOCK_1ms|Add1~28_combout\ : std_logic;
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
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \U_KEY0|chatt1[0]~0_combout\ : std_logic;
SIGNAL \U_KEY0|chatt1[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY0|chatt1[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY0|chatt1[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY0|chatt2~0_combout\ : std_logic;
SIGNAL \U_KEY0|chatt3[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY0|chatt3[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY0|chatt3[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY0|Equal0~0_combout\ : std_logic;
SIGNAL \U_KEY0|sw_ena~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \U_KEY1|chatt1[0]~0_combout\ : std_logic;
SIGNAL \U_KEY1|chatt1[0]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt1[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt2~0_combout\ : std_logic;
SIGNAL \U_KEY1|chatt3[1]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt3[2]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|chatt3[3]~feeder_combout\ : std_logic;
SIGNAL \U_KEY1|Equal0~0_combout\ : std_logic;
SIGNAL \U_KEY1|sw_ena~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \sele~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \sele~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \m_led2_cnt1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \m_led2_cnt1~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \m_led2_cnt1~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \m_led2_cnt2[0]~1_combout\ : std_logic;
SIGNAL \m_led2_cnt2[1]~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \m_led3_cnt2[2]~0_combout\ : std_logic;
SIGNAL \m_led3_cnt2[2]~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \m_led3_cnt2[3]~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL sele : std_logic_vector(3 DOWNTO 0);
SIGNAL m_led2_cnt2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_KEY2|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL m_led3_cnt2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY0|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL m_led2_cnt1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_KEY1|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY3|chatt3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLOCK_1ms|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_KEY1|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY2|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY0|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_KEY3|chatt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_KEY <= KEY;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_CLOCK_1ms|clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLOCK_1ms|clk_tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y24_N23
\LED[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\LED[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~2_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\LED[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~2_combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\LED[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~2_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X2_Y11_N0
\U_CLOCK_1ms|Add1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~0_combout\ = \U_CLOCK_1ms|cnt\(0) $ (VCC)
-- \U_CLOCK_1ms|Add1~1\ = CARRY(\U_CLOCK_1ms|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(0),
	datad => VCC,
	combout => \U_CLOCK_1ms|Add1~0_combout\,
	cout => \U_CLOCK_1ms|Add1~1\);

-- Location: LCCOMB_X1_Y11_N6
\U_CLOCK_1ms|cnt~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~2_combout\ = (\U_CLOCK_1ms|Add1~0_combout\ & !\U_CLOCK_1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|Add1~0_combout\,
	datad => \U_CLOCK_1ms|Equal0~4_combout\,
	combout => \U_CLOCK_1ms|cnt~2_combout\);

-- Location: IOIBUF_X0_Y11_N8
\KEY[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: FF_X2_Y11_N7
\U_CLOCK_1ms|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CLOCK_1ms|cnt~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(0));

-- Location: LCCOMB_X2_Y11_N2
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

-- Location: FF_X2_Y11_N3
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

-- Location: LCCOMB_X2_Y11_N4
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

-- Location: FF_X2_Y11_N5
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

-- Location: LCCOMB_X2_Y11_N6
\U_CLOCK_1ms|Add1~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~6_combout\ = (\U_CLOCK_1ms|cnt\(3) & (!\U_CLOCK_1ms|Add1~5\)) # (!\U_CLOCK_1ms|cnt\(3) & ((\U_CLOCK_1ms|Add1~5\) # (GND)))
-- \U_CLOCK_1ms|Add1~7\ = CARRY((!\U_CLOCK_1ms|Add1~5\) # (!\U_CLOCK_1ms|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(3),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~5\,
	combout => \U_CLOCK_1ms|Add1~6_combout\,
	cout => \U_CLOCK_1ms|Add1~7\);

-- Location: LCCOMB_X1_Y11_N16
\U_CLOCK_1ms|cnt~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~1_combout\ = (!\U_CLOCK_1ms|Equal0~4_combout\ & \U_CLOCK_1ms|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|Equal0~4_combout\,
	datad => \U_CLOCK_1ms|Add1~6_combout\,
	combout => \U_CLOCK_1ms|cnt~1_combout\);

-- Location: FF_X1_Y11_N17
\U_CLOCK_1ms|cnt[3]\ : dffeas
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
	q => \U_CLOCK_1ms|cnt\(3));

-- Location: LCCOMB_X2_Y11_N8
\U_CLOCK_1ms|Add1~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~8_combout\ = (\U_CLOCK_1ms|cnt\(4) & (\U_CLOCK_1ms|Add1~7\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(4) & (!\U_CLOCK_1ms|Add1~7\ & VCC))
-- \U_CLOCK_1ms|Add1~9\ = CARRY((\U_CLOCK_1ms|cnt\(4) & !\U_CLOCK_1ms|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(4),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~7\,
	combout => \U_CLOCK_1ms|Add1~8_combout\,
	cout => \U_CLOCK_1ms|Add1~9\);

-- Location: LCCOMB_X1_Y11_N14
\U_CLOCK_1ms|cnt~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|cnt~0_combout\ = (\U_CLOCK_1ms|Add1~8_combout\ & !\U_CLOCK_1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|Add1~8_combout\,
	datad => \U_CLOCK_1ms|Equal0~4_combout\,
	combout => \U_CLOCK_1ms|cnt~0_combout\);

-- Location: FF_X1_Y11_N15
\U_CLOCK_1ms|cnt[4]\ : dffeas
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
	q => \U_CLOCK_1ms|cnt\(4));

-- Location: LCCOMB_X2_Y11_N10
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

-- Location: FF_X2_Y11_N11
\U_CLOCK_1ms|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(5));

-- Location: LCCOMB_X2_Y11_N12
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

-- Location: FF_X2_Y11_N13
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

-- Location: LCCOMB_X2_Y11_N14
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

-- Location: FF_X2_Y11_N15
\U_CLOCK_1ms|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(7));

-- Location: LCCOMB_X2_Y11_N16
\U_CLOCK_1ms|Add1~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~16_combout\ = (\U_CLOCK_1ms|cnt\(8) & (\U_CLOCK_1ms|Add1~15\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(8) & (!\U_CLOCK_1ms|Add1~15\ & VCC))
-- \U_CLOCK_1ms|Add1~17\ = CARRY((\U_CLOCK_1ms|cnt\(8) & !\U_CLOCK_1ms|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(8),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~15\,
	combout => \U_CLOCK_1ms|Add1~16_combout\,
	cout => \U_CLOCK_1ms|Add1~17\);

-- Location: FF_X2_Y11_N17
\U_CLOCK_1ms|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~16_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(8));

-- Location: LCCOMB_X2_Y11_N18
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

-- Location: FF_X2_Y11_N19
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

-- Location: LCCOMB_X2_Y11_N20
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

-- Location: FF_X2_Y11_N21
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

-- Location: LCCOMB_X2_Y11_N22
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

-- Location: FF_X2_Y11_N23
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

-- Location: LCCOMB_X1_Y11_N22
\U_CLOCK_1ms|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~1_combout\ = (!\U_CLOCK_1ms|cnt\(10) & (!\U_CLOCK_1ms|cnt\(9) & (!\U_CLOCK_1ms|cnt\(8) & !\U_CLOCK_1ms|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(10),
	datab => \U_CLOCK_1ms|cnt\(9),
	datac => \U_CLOCK_1ms|cnt\(8),
	datad => \U_CLOCK_1ms|cnt\(11),
	combout => \U_CLOCK_1ms|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y11_N24
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

-- Location: FF_X2_Y11_N25
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

-- Location: LCCOMB_X2_Y11_N26
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

-- Location: FF_X2_Y11_N27
\U_CLOCK_1ms|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~26_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(13));

-- Location: LCCOMB_X2_Y11_N28
\U_CLOCK_1ms|Add1~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Add1~28_combout\ = (\U_CLOCK_1ms|cnt\(14) & (\U_CLOCK_1ms|Add1~27\ $ (GND))) # (!\U_CLOCK_1ms|cnt\(14) & (!\U_CLOCK_1ms|Add1~27\ & VCC))
-- \U_CLOCK_1ms|Add1~29\ = CARRY((\U_CLOCK_1ms|cnt\(14) & !\U_CLOCK_1ms|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLOCK_1ms|cnt\(14),
	datad => VCC,
	cin => \U_CLOCK_1ms|Add1~27\,
	combout => \U_CLOCK_1ms|Add1~28_combout\,
	cout => \U_CLOCK_1ms|Add1~29\);

-- Location: FF_X2_Y11_N29
\U_CLOCK_1ms|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLOCK_1ms|Add1~28_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLOCK_1ms|cnt\(14));

-- Location: LCCOMB_X2_Y11_N30
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

-- Location: FF_X2_Y11_N31
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

-- Location: LCCOMB_X1_Y11_N24
\U_CLOCK_1ms|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~0_combout\ = (!\U_CLOCK_1ms|cnt\(15) & (!\U_CLOCK_1ms|cnt\(14) & (!\U_CLOCK_1ms|cnt\(13) & !\U_CLOCK_1ms|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(15),
	datab => \U_CLOCK_1ms|cnt\(14),
	datac => \U_CLOCK_1ms|cnt\(13),
	datad => \U_CLOCK_1ms|cnt\(12),
	combout => \U_CLOCK_1ms|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\U_CLOCK_1ms|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~3_combout\ = (!\U_CLOCK_1ms|cnt\(0) & (\U_CLOCK_1ms|cnt\(3) & (!\U_CLOCK_1ms|cnt\(2) & !\U_CLOCK_1ms|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(0),
	datab => \U_CLOCK_1ms|cnt\(3),
	datac => \U_CLOCK_1ms|cnt\(2),
	datad => \U_CLOCK_1ms|cnt\(1),
	combout => \U_CLOCK_1ms|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y11_N12
\U_CLOCK_1ms|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|Equal0~2_combout\ = (\U_CLOCK_1ms|cnt\(4) & (!\U_CLOCK_1ms|cnt\(6) & (!\U_CLOCK_1ms|cnt\(5) & !\U_CLOCK_1ms|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLOCK_1ms|cnt\(4),
	datab => \U_CLOCK_1ms|cnt\(6),
	datac => \U_CLOCK_1ms|cnt\(5),
	datad => \U_CLOCK_1ms|cnt\(7),
	combout => \U_CLOCK_1ms|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y11_N18
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

-- Location: LCCOMB_X1_Y11_N30
\U_CLOCK_1ms|clk_tmp~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_CLOCK_1ms|clk_tmp~0_combout\ = \U_CLOCK_1ms|clk_tmp~q\ $ (\U_CLOCK_1ms|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLOCK_1ms|clk_tmp~q\,
	datad => \U_CLOCK_1ms|Equal0~4_combout\,
	combout => \U_CLOCK_1ms|clk_tmp~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
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

-- Location: FF_X1_Y11_N21
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

-- Location: CLKCTRL_G1
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

-- Location: IOIBUF_X34_Y18_N1
\KEY[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X31_Y18_N28
\U_KEY2|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt1[0]~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \U_KEY2|chatt1[0]~0_combout\);

-- Location: FF_X31_Y18_N29
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

-- Location: LCCOMB_X31_Y18_N18
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

-- Location: FF_X31_Y18_N19
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

-- Location: LCCOMB_X31_Y18_N12
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

-- Location: FF_X31_Y18_N13
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

-- Location: LCCOMB_X31_Y18_N30
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

-- Location: FF_X31_Y18_N31
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

-- Location: LCCOMB_X31_Y18_N14
\U_KEY2|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt2~0_combout\ = (\U_KEY2|chatt1\(2)) # ((\U_KEY2|chatt1\(1)) # ((\U_KEY2|chatt1\(3)) # (\U_KEY2|chatt1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|chatt1\(2),
	datab => \U_KEY2|chatt1\(1),
	datac => \U_KEY2|chatt1\(3),
	datad => \U_KEY2|chatt1\(0),
	combout => \U_KEY2|chatt2~0_combout\);

-- Location: FF_X31_Y18_N15
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

-- Location: LCCOMB_X32_Y18_N24
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

-- Location: FF_X32_Y18_N25
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

-- Location: LCCOMB_X32_Y18_N26
\U_KEY2|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|chatt3[2]~feeder_combout\ = \U_KEY2|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_KEY2|chatt3\(1),
	combout => \U_KEY2|chatt3[2]~feeder_combout\);

-- Location: FF_X32_Y18_N27
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

-- Location: LCCOMB_X31_Y18_N24
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

-- Location: FF_X31_Y18_N25
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

-- Location: LCCOMB_X32_Y18_N6
\U_KEY2|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY2|Equal0~0_combout\ = (!\U_KEY2|chatt3\(0) & (!\U_KEY2|chatt3\(1) & (\U_KEY2|chatt3\(2) & \U_KEY2|chatt3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|chatt3\(0),
	datab => \U_KEY2|chatt3\(1),
	datac => \U_KEY2|chatt3\(2),
	datad => \U_KEY2|chatt3\(3),
	combout => \U_KEY2|Equal0~0_combout\);

-- Location: FF_X32_Y18_N7
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

-- Location: LCCOMB_X28_Y18_N18
\U_KEY0|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt1[0]~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \U_KEY0|chatt1[0]~0_combout\);

-- Location: FF_X28_Y18_N19
\U_KEY0|chatt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt1\(0));

-- Location: LCCOMB_X28_Y18_N16
\U_KEY0|chatt1[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt1[1]~feeder_combout\ = \U_KEY0|chatt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY0|chatt1\(0),
	combout => \U_KEY0|chatt1[1]~feeder_combout\);

-- Location: FF_X28_Y18_N17
\U_KEY0|chatt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt1\(1));

-- Location: LCCOMB_X28_Y18_N6
\U_KEY0|chatt1[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt1[2]~feeder_combout\ = \U_KEY0|chatt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY0|chatt1\(1),
	combout => \U_KEY0|chatt1[2]~feeder_combout\);

-- Location: FF_X28_Y18_N7
\U_KEY0|chatt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt1\(2));

-- Location: LCCOMB_X28_Y18_N4
\U_KEY0|chatt1[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt1[3]~feeder_combout\ = \U_KEY0|chatt1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY0|chatt1\(2),
	combout => \U_KEY0|chatt1[3]~feeder_combout\);

-- Location: FF_X28_Y18_N5
\U_KEY0|chatt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt1\(3));

-- Location: LCCOMB_X28_Y18_N10
\U_KEY0|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt2~0_combout\ = (\U_KEY0|chatt1\(2)) # ((\U_KEY0|chatt1\(0)) # ((\U_KEY0|chatt1\(3)) # (\U_KEY0|chatt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY0|chatt1\(2),
	datab => \U_KEY0|chatt1\(0),
	datac => \U_KEY0|chatt1\(3),
	datad => \U_KEY0|chatt1\(1),
	combout => \U_KEY0|chatt2~0_combout\);

-- Location: FF_X28_Y18_N11
\U_KEY0|chatt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt3\(0));

-- Location: LCCOMB_X28_Y18_N24
\U_KEY0|chatt3[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt3[1]~feeder_combout\ = \U_KEY0|chatt3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY0|chatt3\(0),
	combout => \U_KEY0|chatt3[1]~feeder_combout\);

-- Location: FF_X28_Y18_N25
\U_KEY0|chatt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt3\(1));

-- Location: LCCOMB_X28_Y18_N12
\U_KEY0|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt3[2]~feeder_combout\ = \U_KEY0|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY0|chatt3\(1),
	combout => \U_KEY0|chatt3[2]~feeder_combout\);

-- Location: FF_X28_Y18_N13
\U_KEY0|chatt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt3\(2));

-- Location: LCCOMB_X32_Y18_N30
\U_KEY0|chatt3[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|chatt3[3]~feeder_combout\ = \U_KEY0|chatt3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY0|chatt3\(2),
	combout => \U_KEY0|chatt3[3]~feeder_combout\);

-- Location: FF_X32_Y18_N31
\U_KEY0|chatt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|chatt3[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|chatt3\(3));

-- Location: LCCOMB_X32_Y18_N12
\U_KEY0|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY0|Equal0~0_combout\ = (!\U_KEY0|chatt3\(0) & (\U_KEY0|chatt3\(3) & (\U_KEY0|chatt3\(2) & !\U_KEY0|chatt3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY0|chatt3\(0),
	datab => \U_KEY0|chatt3\(3),
	datac => \U_KEY0|chatt3\(2),
	datad => \U_KEY0|chatt3\(1),
	combout => \U_KEY0|Equal0~0_combout\);

-- Location: FF_X32_Y18_N13
\U_KEY0|sw_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY0|sw_ena~q\);

-- Location: IOIBUF_X34_Y20_N15
\KEY[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X33_Y20_N4
\U_KEY1|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt1[0]~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \U_KEY1|chatt1[0]~0_combout\);

-- Location: LCCOMB_X32_Y20_N30
\U_KEY1|chatt1[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt1[0]~feeder_combout\ = \U_KEY1|chatt1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY1|chatt1[0]~0_combout\,
	combout => \U_KEY1|chatt1[0]~feeder_combout\);

-- Location: FF_X32_Y20_N31
\U_KEY1|chatt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \U_KEY1|chatt1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(0));

-- Location: FF_X32_Y20_N3
\U_KEY1|chatt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	asdata => \U_KEY1|chatt1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(1));

-- Location: LCCOMB_X32_Y20_N14
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

-- Location: FF_X32_Y20_N15
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

-- Location: FF_X32_Y20_N25
\U_KEY1|chatt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	asdata => \U_KEY1|chatt1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_KEY1|chatt1\(3));

-- Location: LCCOMB_X32_Y20_N12
\U_KEY1|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt2~0_combout\ = (\U_KEY1|chatt1\(0)) # ((\U_KEY1|chatt1\(3)) # ((\U_KEY1|chatt1\(2)) # (\U_KEY1|chatt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|chatt1\(0),
	datab => \U_KEY1|chatt1\(3),
	datac => \U_KEY1|chatt1\(2),
	datad => \U_KEY1|chatt1\(1),
	combout => \U_KEY1|chatt2~0_combout\);

-- Location: FF_X32_Y20_N13
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

-- Location: LCCOMB_X32_Y18_N20
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

-- Location: FF_X32_Y18_N21
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

-- Location: LCCOMB_X33_Y18_N24
\U_KEY1|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt3[2]~feeder_combout\ = \U_KEY1|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY1|chatt3\(1),
	combout => \U_KEY1|chatt3[2]~feeder_combout\);

-- Location: FF_X33_Y18_N25
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

-- Location: LCCOMB_X32_Y18_N22
\U_KEY1|chatt3[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|chatt3[3]~feeder_combout\ = \U_KEY1|chatt3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY1|chatt3\(2),
	combout => \U_KEY1|chatt3[3]~feeder_combout\);

-- Location: FF_X32_Y18_N23
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

-- Location: LCCOMB_X32_Y18_N4
\U_KEY1|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY1|Equal0~0_combout\ = (!\U_KEY1|chatt3\(1) & (\U_KEY1|chatt3\(2) & (\U_KEY1|chatt3\(3) & !\U_KEY1|chatt3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY1|chatt3\(1),
	datab => \U_KEY1|chatt3\(2),
	datac => \U_KEY1|chatt3\(3),
	datad => \U_KEY1|chatt3\(0),
	combout => \U_KEY1|Equal0~0_combout\);

-- Location: FF_X32_Y18_N5
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

-- Location: IOIBUF_X34_Y18_N15
\KEY[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X33_Y18_N18
\U_KEY3|chatt1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt1[0]~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \U_KEY3|chatt1[0]~0_combout\);

-- Location: FF_X33_Y18_N19
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

-- Location: LCCOMB_X33_Y18_N28
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

-- Location: FF_X33_Y18_N29
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

-- Location: LCCOMB_X33_Y18_N10
\U_KEY3|chatt1[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt1[2]~feeder_combout\ = \U_KEY3|chatt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY3|chatt1\(1),
	combout => \U_KEY3|chatt1[2]~feeder_combout\);

-- Location: FF_X33_Y18_N11
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

-- Location: LCCOMB_X33_Y18_N8
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

-- Location: FF_X33_Y18_N9
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

-- Location: LCCOMB_X33_Y18_N6
\U_KEY3|chatt2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt2~0_combout\ = (\U_KEY3|chatt1\(2)) # ((\U_KEY3|chatt1\(1)) # ((\U_KEY3|chatt1\(3)) # (\U_KEY3|chatt1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY3|chatt1\(2),
	datab => \U_KEY3|chatt1\(1),
	datac => \U_KEY3|chatt1\(3),
	datad => \U_KEY3|chatt1\(0),
	combout => \U_KEY3|chatt2~0_combout\);

-- Location: FF_X33_Y18_N7
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

-- Location: LCCOMB_X33_Y18_N4
\U_KEY3|chatt3[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt3[1]~feeder_combout\ = \U_KEY3|chatt3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY3|chatt3\(0),
	combout => \U_KEY3|chatt3[1]~feeder_combout\);

-- Location: FF_X33_Y18_N5
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

-- Location: LCCOMB_X32_Y18_N16
\U_KEY3|chatt3[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|chatt3[2]~feeder_combout\ = \U_KEY3|chatt3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_KEY3|chatt3\(1),
	combout => \U_KEY3|chatt3[2]~feeder_combout\);

-- Location: FF_X32_Y18_N17
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

-- Location: LCCOMB_X32_Y18_N18
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

-- Location: FF_X32_Y18_N19
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

-- Location: LCCOMB_X32_Y18_N14
\U_KEY3|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U_KEY3|Equal0~0_combout\ = (!\U_KEY3|chatt3\(0) & (\U_KEY3|chatt3\(2) & (\U_KEY3|chatt3\(3) & !\U_KEY3|chatt3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY3|chatt3\(0),
	datab => \U_KEY3|chatt3\(2),
	datac => \U_KEY3|chatt3\(3),
	datad => \U_KEY3|chatt3\(1),
	combout => \U_KEY3|Equal0~0_combout\);

-- Location: FF_X32_Y18_N15
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

-- Location: LCCOMB_X32_Y18_N0
\Equal4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\U_KEY2|sw_ena~q\ & (!\U_KEY0|sw_ena~q\ & (\U_KEY1|sw_ena~q\ & !\U_KEY3|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|sw_ena~q\,
	datab => \U_KEY0|sw_ena~q\,
	datac => \U_KEY1|sw_ena~q\,
	datad => \U_KEY3|sw_ena~q\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X32_Y18_N8
\sele~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \sele~0_combout\ = (\U_KEY0|sw_ena~q\ & (!\U_KEY3|sw_ena~q\ & (!\U_KEY1|sw_ena~q\ & !\U_KEY2|sw_ena~q\))) # (!\U_KEY0|sw_ena~q\ & ((\U_KEY3|sw_ena~q\ & (!\U_KEY1|sw_ena~q\ & !\U_KEY2|sw_ena~q\)) # (!\U_KEY3|sw_ena~q\ & (\U_KEY1|sw_ena~q\ $ 
-- (\U_KEY2|sw_ena~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY0|sw_ena~q\,
	datab => \U_KEY3|sw_ena~q\,
	datac => \U_KEY1|sw_ena~q\,
	datad => \U_KEY2|sw_ena~q\,
	combout => \sele~0_combout\);

-- Location: FF_X32_Y18_N1
\sele[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Equal4~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \sele~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sele(1));

-- Location: LCCOMB_X32_Y18_N28
\Equal5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\U_KEY2|sw_ena~q\ & (!\U_KEY0|sw_ena~q\ & (!\U_KEY1|sw_ena~q\ & !\U_KEY3|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|sw_ena~q\,
	datab => \U_KEY0|sw_ena~q\,
	datac => \U_KEY1|sw_ena~q\,
	datad => \U_KEY3|sw_ena~q\,
	combout => \Equal5~0_combout\);

-- Location: FF_X32_Y18_N29
\sele[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Equal5~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \sele~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sele(2));

-- Location: LCCOMB_X32_Y18_N2
\sele~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \sele~1_combout\ = (\U_KEY3|sw_ena~q\) # ((\U_KEY2|sw_ena~q\ & ((\U_KEY0|sw_ena~q\) # (\U_KEY1|sw_ena~q\))) # (!\U_KEY2|sw_ena~q\ & (\U_KEY0|sw_ena~q\ $ (!\U_KEY1|sw_ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|sw_ena~q\,
	datab => \U_KEY0|sw_ena~q\,
	datac => \U_KEY1|sw_ena~q\,
	datad => \U_KEY3|sw_ena~q\,
	combout => \sele~1_combout\);

-- Location: FF_X32_Y18_N3
\sele[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \sele~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \sele~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sele(3));

-- Location: LCCOMB_X31_Y20_N12
\Add1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = m_led2_cnt1(0) $ (VCC)
-- \Add1~1\ = CARRY(m_led2_cnt1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt1(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X31_Y20_N30
\m_led2_cnt1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led2_cnt1~2_combout\ = (\Add1~0_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add1~0_combout\,
	combout => \m_led2_cnt1~2_combout\);

-- Location: FF_X31_Y20_N31
\m_led2_cnt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led2_cnt1~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(0));

-- Location: LCCOMB_X31_Y20_N14
\Add1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (m_led2_cnt1(1) & (!\Add1~1\)) # (!m_led2_cnt1(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!m_led2_cnt1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_led2_cnt1(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X31_Y20_N8
\m_led2_cnt1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led2_cnt1~1_combout\ = (\Add1~2_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Add1~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \m_led2_cnt1~1_combout\);

-- Location: FF_X31_Y20_N9
\m_led2_cnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led2_cnt1~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(1));

-- Location: LCCOMB_X31_Y20_N16
\Add1~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (m_led2_cnt1(2) & (\Add1~3\ $ (GND))) # (!m_led2_cnt1(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((m_led2_cnt1(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_led2_cnt1(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X31_Y20_N17
\m_led2_cnt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(2));

-- Location: LCCOMB_X31_Y20_N18
\Add1~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (m_led2_cnt1(3) & (!\Add1~5\)) # (!m_led2_cnt1(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!m_led2_cnt1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt1(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X31_Y20_N20
\Add1~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (m_led2_cnt1(4) & (\Add1~7\ $ (GND))) # (!m_led2_cnt1(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((m_led2_cnt1(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_led2_cnt1(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X31_Y20_N21
\m_led2_cnt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(4));

-- Location: LCCOMB_X31_Y20_N22
\Add1~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (m_led2_cnt1(5) & (!\Add1~9\)) # (!m_led2_cnt1(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!m_led2_cnt1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt1(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X31_Y20_N23
\m_led2_cnt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(5));

-- Location: LCCOMB_X31_Y20_N24
\Add1~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (m_led2_cnt1(6) & (\Add1~11\ $ (GND))) # (!m_led2_cnt1(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((m_led2_cnt1(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_led2_cnt1(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X31_Y20_N25
\m_led2_cnt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(6));

-- Location: LCCOMB_X31_Y20_N26
\Add1~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = m_led2_cnt1(7) $ (\Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt1(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: FF_X31_Y20_N27
\m_led2_cnt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(7));

-- Location: LCCOMB_X31_Y20_N28
\Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!m_led2_cnt1(5) & (!m_led2_cnt1(4) & (!m_led2_cnt1(7) & !m_led2_cnt1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt1(5),
	datab => m_led2_cnt1(4),
	datac => m_led2_cnt1(7),
	datad => m_led2_cnt1(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y20_N6
\m_led2_cnt1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led2_cnt1~0_combout\ = (\Add1~6_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add1~6_combout\,
	combout => \m_led2_cnt1~0_combout\);

-- Location: FF_X31_Y20_N7
\m_led2_cnt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led2_cnt1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt1(3));

-- Location: LCCOMB_X31_Y20_N4
\Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (m_led2_cnt1(3) & (!m_led2_cnt1(2) & (m_led2_cnt1(1) & !m_led2_cnt1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt1(3),
	datab => m_led2_cnt1(2),
	datac => m_led2_cnt1(1),
	datad => m_led2_cnt1(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y20_N20
\m_led2_cnt2[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led2_cnt2[0]~1_combout\ = m_led2_cnt2(0) $ (((\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => m_led2_cnt2(0),
	datad => \Equal0~0_combout\,
	combout => \m_led2_cnt2[0]~1_combout\);

-- Location: FF_X32_Y20_N21
\m_led2_cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led2_cnt2[0]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt2(0));

-- Location: LCCOMB_X32_Y20_N18
\m_led2_cnt2[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led2_cnt2[1]~0_combout\ = m_led2_cnt2(1) $ (((m_led2_cnt2(0) & (\Equal0~1_combout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt2(0),
	datab => \Equal0~1_combout\,
	datac => m_led2_cnt2(1),
	datad => \Equal0~0_combout\,
	combout => \m_led2_cnt2[1]~0_combout\);

-- Location: FF_X32_Y20_N19
\m_led2_cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led2_cnt2[1]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led2_cnt2(1));

-- Location: LCCOMB_X32_Y20_N22
\Mux7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (sele(1) & ((sele(2)) # ((sele(3)) # (m_led2_cnt2(1))))) # (!sele(1) & (sele(2) $ ((!sele(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(1),
	datab => sele(2),
	datac => sele(3),
	datad => m_led2_cnt2(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y18_N10
\Equal3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\U_KEY2|sw_ena~q\ & (\U_KEY0|sw_ena~q\ & (!\U_KEY1|sw_ena~q\ & !\U_KEY3|sw_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_KEY2|sw_ena~q\,
	datab => \U_KEY0|sw_ena~q\,
	datac => \U_KEY1|sw_ena~q\,
	datad => \U_KEY3|sw_ena~q\,
	combout => \Equal3~0_combout\);

-- Location: FF_X32_Y18_N11
\sele[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \Equal3~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \sele~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sele(0));

-- Location: LCCOMB_X32_Y20_N2
\Mux7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((m_led2_cnt2(0)) # (sele(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => m_led2_cnt2(0),
	datad => sele(0),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X32_Y20_N8
\Mux6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!sele(1) & (!sele(2) & !m_led2_cnt2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(1),
	datab => sele(2),
	datac => m_led2_cnt2(0),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X32_Y20_N28
\Mux6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (m_led2_cnt2(1)) # ((sele(1) & ((sele(2)) # (!m_led2_cnt2(0)))) # (!sele(1) & (!sele(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(1),
	datab => m_led2_cnt2(1),
	datac => sele(2),
	datad => m_led2_cnt2(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X32_Y20_N10
\Mux6~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (sele(0)) # ((sele(3) & (!\Mux6~1_combout\)) # (!sele(3) & ((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(0),
	datab => sele(3),
	datac => \Mux6~1_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X31_Y20_N10
\m_led3_cnt2[2]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led3_cnt2[2]~0_combout\ = (m_led2_cnt2(0) & (m_led2_cnt2(1) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_led2_cnt2(0),
	datab => m_led2_cnt2(1),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \m_led3_cnt2[2]~0_combout\);

-- Location: LCCOMB_X31_Y20_N0
\m_led3_cnt2[2]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led3_cnt2[2]~1_combout\ = m_led3_cnt2(2) $ (\m_led3_cnt2[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_led3_cnt2(2),
	datad => \m_led3_cnt2[2]~0_combout\,
	combout => \m_led3_cnt2[2]~1_combout\);

-- Location: FF_X31_Y20_N1
\m_led3_cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led3_cnt2[2]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led3_cnt2(2));

-- Location: LCCOMB_X32_Y20_N24
\Mux5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (sele(3)) # ((m_led3_cnt2(2) & sele(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_led3_cnt2(2),
	datab => sele(2),
	datad => sele(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X32_Y20_N4
\Mux5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (sele(1) & ((sele(2)) # ((!\Mux5~0_combout\ & m_led2_cnt2(1))))) # (!sele(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(1),
	datab => sele(2),
	datac => \Mux5~0_combout\,
	datad => m_led2_cnt2(1),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X32_Y20_N6
\Mux5~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (sele(0)) # ((\Mux5~1_combout\ & ((sele(2)) # (m_led2_cnt2(0)))) # (!\Mux5~1_combout\ & (!sele(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(0),
	datab => \Mux5~1_combout\,
	datac => sele(2),
	datad => m_led2_cnt2(0),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X31_Y20_N2
\m_led3_cnt2[3]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_led3_cnt2[3]~2_combout\ = m_led3_cnt2(3) $ (((m_led3_cnt2(2) & \m_led3_cnt2[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_led3_cnt2(2),
	datac => m_led3_cnt2(3),
	datad => \m_led3_cnt2[2]~0_combout\,
	combout => \m_led3_cnt2[3]~2_combout\);

-- Location: FF_X31_Y20_N3
\m_led3_cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLOCK_1ms|clk_tmp~clkctrl_outclk\,
	d => \m_led3_cnt2[3]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_led3_cnt2(3));

-- Location: LCCOMB_X32_Y20_N26
\Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (sele(0)) # ((sele(2) & m_led3_cnt2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(0),
	datac => sele(2),
	datad => m_led3_cnt2(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X32_Y20_N16
\Mux4~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (sele(1) & (((sele(2)) # (!m_led2_cnt2(0))) # (!m_led2_cnt2(1)))) # (!sele(1) & (((!sele(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sele(1),
	datab => m_led2_cnt2(1),
	datac => sele(2),
	datad => m_led2_cnt2(0),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X32_Y20_N0
\Mux4~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~0_combout\) # ((sele(3) & (!\Mux6~1_combout\)) # (!sele(3) & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => sele(3),
	datac => \Mux6~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;
END structure;


