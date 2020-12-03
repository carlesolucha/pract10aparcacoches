-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/03/2020 10:00:50"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pract10 IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	entra_coche : IN std_logic;
	sale_coche : IN std_logic;
	max_coche : IN std_logic_vector(7 DOWNTO 0);
	d_a : OUT std_logic_vector(6 DOWNTO 0);
	d_b : OUT std_logic_vector(6 DOWNTO 0);
	luz_verde : OUT std_logic;
	luz_roja : OUT std_logic
	);
END pract10;

-- Design Ports Information
-- d_a[0]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[4]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[5]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[6]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_verde	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luz_roja	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- max_coche[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coche[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sale_coche	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entra_coche	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pract10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_entra_coche : std_logic;
SIGNAL ww_sale_coche : std_logic;
SIGNAL ww_max_coche : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_luz_verde : std_logic;
SIGNAL ww_luz_roja : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_contadorascdes|LessThan1~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \sale_coche~combout\ : std_logic;
SIGNAL \i_detectorflanco2|estado_act.Esp1~feeder_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \i_detectorflanco2|estado_act.Esp1~regout\ : std_logic;
SIGNAL \i_detectorflanco2|Selector1~0_combout\ : std_logic;
SIGNAL \i_detectorflanco2|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_contadorascdes|contador[0]~8_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[5]~21\ : std_logic;
SIGNAL \i_contadorascdes|contador[6]~22_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[6]~23\ : std_logic;
SIGNAL \i_contadorascdes|contador[7]~24_combout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan1~0_combout\ : std_logic;
SIGNAL \entra_coche~combout\ : std_logic;
SIGNAL \i_detectorflanco1|estado_act.Esp1~feeder_combout\ : std_logic;
SIGNAL \i_detectorflanco1|estado_act.Esp1~regout\ : std_logic;
SIGNAL \i_detectorflanco1|Selector1~0_combout\ : std_logic;
SIGNAL \i_detectorflanco1|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_contadorascdes|contador[7]~18_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[4]~16_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[2]~12_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[1]~10_combout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~1_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~3_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~5_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~7_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~9_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~11_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~13_cout\ : std_logic;
SIGNAL \i_contadorascdes|LessThan2~14_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[7]~19_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[0]~9\ : std_logic;
SIGNAL \i_contadorascdes|contador[1]~11\ : std_logic;
SIGNAL \i_contadorascdes|contador[2]~13\ : std_logic;
SIGNAL \i_contadorascdes|contador[3]~15\ : std_logic;
SIGNAL \i_contadorascdes|contador[4]~17\ : std_logic;
SIGNAL \i_contadorascdes|contador[5]~20_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador[3]~14_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \i_2BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \i_contadorascdes|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \max_coche~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;
SIGNAL \i_2BinA7Seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i_1BinA7Seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i_contadorascdes|ALT_INV_LessThan2~14_combout\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_entra_coche <= entra_coche;
ww_sale_coche <= sale_coche;
ww_max_coche <= max_coche;
d_a <= ww_d_a;
d_b <= ww_d_b;
luz_verde <= ww_luz_verde;
luz_roja <= ww_luz_roja;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;
\i_2BinA7Seg|ALT_INV_Mux6~0_combout\ <= NOT \i_2BinA7Seg|Mux6~0_combout\;
\i_1BinA7Seg|ALT_INV_Mux6~0_combout\ <= NOT \i_1BinA7Seg|Mux6~0_combout\;
\i_contadorascdes|ALT_INV_LessThan2~14_combout\ <= NOT \i_contadorascdes|LessThan2~14_combout\;

-- Location: LCCOMB_X1_Y21_N16
\i_contadorascdes|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan1~1_combout\ = (\i_contadorascdes|contador\(2)) # ((\i_contadorascdes|contador\(0)) # ((\i_contadorascdes|contador\(1)) # (\i_contadorascdes|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(0),
	datac => \i_contadorascdes|contador\(1),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_contadorascdes|LessThan1~1_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(4),
	combout => \max_coche~combout\(4));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(2),
	combout => \max_coche~combout\(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(1),
	combout => \max_coche~combout\(1));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(0),
	combout => \max_coche~combout\(0));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sale_coche~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sale_coche,
	combout => \sale_coche~combout\);

-- Location: LCCOMB_X3_Y21_N0
\i_detectorflanco2|estado_act.Esp1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_detectorflanco2|estado_act.Esp1~feeder_combout\ = \sale_coche~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sale_coche~combout\,
	combout => \i_detectorflanco2|estado_act.Esp1~feeder_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: LCFF_X3_Y21_N1
\i_detectorflanco2|estado_act.Esp1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_detectorflanco2|estado_act.Esp1~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_detectorflanco2|estado_act.Esp1~regout\);

-- Location: LCCOMB_X3_Y21_N30
\i_detectorflanco2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_detectorflanco2|Selector1~0_combout\ = (!\i_detectorflanco2|estado_act.Esp1~regout\ & \sale_coche~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_detectorflanco2|estado_act.Esp1~regout\,
	datad => \sale_coche~combout\,
	combout => \i_detectorflanco2|Selector1~0_combout\);

-- Location: LCFF_X3_Y21_N31
\i_detectorflanco2|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_detectorflanco2|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_detectorflanco2|estado_act.Pulso~regout\);

-- Location: LCCOMB_X2_Y21_N0
\i_contadorascdes|contador[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[0]~8_combout\ = \i_contadorascdes|contador\(0) $ (VCC)
-- \i_contadorascdes|contador[0]~9\ = CARRY(\i_contadorascdes|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_contadorascdes|contador\(0),
	datad => VCC,
	combout => \i_contadorascdes|contador[0]~8_combout\,
	cout => \i_contadorascdes|contador[0]~9\);

-- Location: LCCOMB_X2_Y21_N10
\i_contadorascdes|contador[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[5]~20_combout\ = (\i_contadorascdes|contador\(5) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (\i_contadorascdes|contador[4]~17\ & VCC)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- (!\i_contadorascdes|contador[4]~17\)))) # (!\i_contadorascdes|contador\(5) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (!\i_contadorascdes|contador[4]~17\)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & ((\i_contadorascdes|contador[4]~17\) # 
-- (GND)))))
-- \i_contadorascdes|contador[5]~21\ = CARRY((\i_contadorascdes|contador\(5) & (!\i_detectorflanco2|estado_act.Pulso~regout\ & !\i_contadorascdes|contador[4]~17\)) # (!\i_contadorascdes|contador\(5) & ((!\i_contadorascdes|contador[4]~17\) # 
-- (!\i_detectorflanco2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[4]~17\,
	combout => \i_contadorascdes|contador[5]~20_combout\,
	cout => \i_contadorascdes|contador[5]~21\);

-- Location: LCCOMB_X2_Y21_N12
\i_contadorascdes|contador[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[6]~22_combout\ = ((\i_contadorascdes|contador\(6) $ (\i_detectorflanco2|estado_act.Pulso~regout\ $ (!\i_contadorascdes|contador[5]~21\)))) # (GND)
-- \i_contadorascdes|contador[6]~23\ = CARRY((\i_contadorascdes|contador\(6) & ((\i_detectorflanco2|estado_act.Pulso~regout\) # (!\i_contadorascdes|contador[5]~21\))) # (!\i_contadorascdes|contador\(6) & (\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- !\i_contadorascdes|contador[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(6),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[5]~21\,
	combout => \i_contadorascdes|contador[6]~22_combout\,
	cout => \i_contadorascdes|contador[6]~23\);

-- Location: LCFF_X2_Y21_N13
\i_contadorascdes|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[6]~22_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(6));

-- Location: LCCOMB_X2_Y21_N14
\i_contadorascdes|contador[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[7]~24_combout\ = \i_contadorascdes|contador\(7) $ (\i_contadorascdes|contador[6]~23\ $ (\i_detectorflanco2|estado_act.Pulso~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(7),
	datad => \i_detectorflanco2|estado_act.Pulso~regout\,
	cin => \i_contadorascdes|contador[6]~23\,
	combout => \i_contadorascdes|contador[7]~24_combout\);

-- Location: LCFF_X2_Y21_N15
\i_contadorascdes|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[7]~24_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(7));

-- Location: LCCOMB_X1_Y21_N14
\i_contadorascdes|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan1~0_combout\ = (\i_contadorascdes|contador\(4)) # ((\i_contadorascdes|contador\(6)) # ((\i_contadorascdes|contador\(7)) # (\i_contadorascdes|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_contadorascdes|LessThan1~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entra_coche~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entra_coche,
	combout => \entra_coche~combout\);

-- Location: LCCOMB_X3_Y21_N2
\i_detectorflanco1|estado_act.Esp1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_detectorflanco1|estado_act.Esp1~feeder_combout\ = \entra_coche~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entra_coche~combout\,
	combout => \i_detectorflanco1|estado_act.Esp1~feeder_combout\);

-- Location: LCFF_X3_Y21_N3
\i_detectorflanco1|estado_act.Esp1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_detectorflanco1|estado_act.Esp1~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_detectorflanco1|estado_act.Esp1~regout\);

-- Location: LCCOMB_X3_Y21_N24
\i_detectorflanco1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_detectorflanco1|Selector1~0_combout\ = (!\i_detectorflanco1|estado_act.Esp1~regout\ & \entra_coche~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_detectorflanco1|estado_act.Esp1~regout\,
	datad => \entra_coche~combout\,
	combout => \i_detectorflanco1|Selector1~0_combout\);

-- Location: LCFF_X3_Y21_N25
\i_detectorflanco1|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_detectorflanco1|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_detectorflanco1|estado_act.Pulso~regout\);

-- Location: LCCOMB_X3_Y21_N26
\i_contadorascdes|contador[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[7]~18_combout\ = (\i_detectorflanco1|estado_act.Pulso~regout\) # (\i_detectorflanco2|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_detectorflanco1|estado_act.Pulso~regout\,
	datad => \i_detectorflanco2|estado_act.Pulso~regout\,
	combout => \i_contadorascdes|contador[7]~18_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(7),
	combout => \max_coche~combout\(7));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(6),
	combout => \max_coche~combout\(6));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(5),
	combout => \max_coche~combout\(5));

-- Location: LCCOMB_X2_Y21_N8
\i_contadorascdes|contador[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[4]~16_combout\ = ((\i_contadorascdes|contador\(4) $ (\i_detectorflanco2|estado_act.Pulso~regout\ $ (!\i_contadorascdes|contador[3]~15\)))) # (GND)
-- \i_contadorascdes|contador[4]~17\ = CARRY((\i_contadorascdes|contador\(4) & ((\i_detectorflanco2|estado_act.Pulso~regout\) # (!\i_contadorascdes|contador[3]~15\))) # (!\i_contadorascdes|contador\(4) & (\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- !\i_contadorascdes|contador[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[3]~15\,
	combout => \i_contadorascdes|contador[4]~16_combout\,
	cout => \i_contadorascdes|contador[4]~17\);

-- Location: LCFF_X2_Y21_N9
\i_contadorascdes|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[4]~16_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(4));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coche[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_max_coche(3),
	combout => \max_coche~combout\(3));

-- Location: LCCOMB_X2_Y21_N4
\i_contadorascdes|contador[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[2]~12_combout\ = ((\i_contadorascdes|contador\(2) $ (\i_detectorflanco2|estado_act.Pulso~regout\ $ (!\i_contadorascdes|contador[1]~11\)))) # (GND)
-- \i_contadorascdes|contador[2]~13\ = CARRY((\i_contadorascdes|contador\(2) & ((\i_detectorflanco2|estado_act.Pulso~regout\) # (!\i_contadorascdes|contador[1]~11\))) # (!\i_contadorascdes|contador\(2) & (\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- !\i_contadorascdes|contador[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[1]~11\,
	combout => \i_contadorascdes|contador[2]~12_combout\,
	cout => \i_contadorascdes|contador[2]~13\);

-- Location: LCFF_X2_Y21_N5
\i_contadorascdes|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[2]~12_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(2));

-- Location: LCCOMB_X2_Y21_N2
\i_contadorascdes|contador[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[1]~10_combout\ = (\i_contadorascdes|contador\(1) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (\i_contadorascdes|contador[0]~9\ & VCC)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- (!\i_contadorascdes|contador[0]~9\)))) # (!\i_contadorascdes|contador\(1) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (!\i_contadorascdes|contador[0]~9\)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & ((\i_contadorascdes|contador[0]~9\) # 
-- (GND)))))
-- \i_contadorascdes|contador[1]~11\ = CARRY((\i_contadorascdes|contador\(1) & (!\i_detectorflanco2|estado_act.Pulso~regout\ & !\i_contadorascdes|contador[0]~9\)) # (!\i_contadorascdes|contador\(1) & ((!\i_contadorascdes|contador[0]~9\) # 
-- (!\i_detectorflanco2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(1),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[0]~9\,
	combout => \i_contadorascdes|contador[1]~10_combout\,
	cout => \i_contadorascdes|contador[1]~11\);

-- Location: LCFF_X2_Y21_N3
\i_contadorascdes|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[1]~10_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(1));

-- Location: LCCOMB_X2_Y21_N16
\i_contadorascdes|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~1_cout\ = CARRY((\max_coche~combout\(0) & !\i_contadorascdes|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(0),
	datab => \i_contadorascdes|contador\(0),
	datad => VCC,
	cout => \i_contadorascdes|LessThan2~1_cout\);

-- Location: LCCOMB_X2_Y21_N18
\i_contadorascdes|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~3_cout\ = CARRY((\max_coche~combout\(1) & (\i_contadorascdes|contador\(1) & !\i_contadorascdes|LessThan2~1_cout\)) # (!\max_coche~combout\(1) & ((\i_contadorascdes|contador\(1)) # (!\i_contadorascdes|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(1),
	datab => \i_contadorascdes|contador\(1),
	datad => VCC,
	cin => \i_contadorascdes|LessThan2~1_cout\,
	cout => \i_contadorascdes|LessThan2~3_cout\);

-- Location: LCCOMB_X2_Y21_N20
\i_contadorascdes|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~5_cout\ = CARRY((\max_coche~combout\(2) & ((!\i_contadorascdes|LessThan2~3_cout\) # (!\i_contadorascdes|contador\(2)))) # (!\max_coche~combout\(2) & (!\i_contadorascdes|contador\(2) & !\i_contadorascdes|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(2),
	datab => \i_contadorascdes|contador\(2),
	datad => VCC,
	cin => \i_contadorascdes|LessThan2~3_cout\,
	cout => \i_contadorascdes|LessThan2~5_cout\);

-- Location: LCCOMB_X2_Y21_N22
\i_contadorascdes|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~7_cout\ = CARRY((\i_contadorascdes|contador\(3) & ((!\i_contadorascdes|LessThan2~5_cout\) # (!\max_coche~combout\(3)))) # (!\i_contadorascdes|contador\(3) & (!\max_coche~combout\(3) & !\i_contadorascdes|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(3),
	datab => \max_coche~combout\(3),
	datad => VCC,
	cin => \i_contadorascdes|LessThan2~5_cout\,
	cout => \i_contadorascdes|LessThan2~7_cout\);

-- Location: LCCOMB_X2_Y21_N24
\i_contadorascdes|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~9_cout\ = CARRY((\max_coche~combout\(4) & ((!\i_contadorascdes|LessThan2~7_cout\) # (!\i_contadorascdes|contador\(4)))) # (!\max_coche~combout\(4) & (!\i_contadorascdes|contador\(4) & !\i_contadorascdes|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coche~combout\(4),
	datab => \i_contadorascdes|contador\(4),
	datad => VCC,
	cin => \i_contadorascdes|LessThan2~7_cout\,
	cout => \i_contadorascdes|LessThan2~9_cout\);

-- Location: LCCOMB_X2_Y21_N26
\i_contadorascdes|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~11_cout\ = CARRY((\i_contadorascdes|contador\(5) & ((!\i_contadorascdes|LessThan2~9_cout\) # (!\max_coche~combout\(5)))) # (!\i_contadorascdes|contador\(5) & (!\max_coche~combout\(5) & !\i_contadorascdes|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \max_coche~combout\(5),
	datad => VCC,
	cin => \i_contadorascdes|LessThan2~9_cout\,
	cout => \i_contadorascdes|LessThan2~11_cout\);

-- Location: LCCOMB_X2_Y21_N28
\i_contadorascdes|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~13_cout\ = CARRY((\i_contadorascdes|contador\(6) & (\max_coche~combout\(6) & !\i_contadorascdes|LessThan2~11_cout\)) # (!\i_contadorascdes|contador\(6) & ((\max_coche~combout\(6)) # (!\i_contadorascdes|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(6),
	datab => \max_coche~combout\(6),
	datad => VCC,
	cin => \i_contadorascdes|LessThan2~11_cout\,
	cout => \i_contadorascdes|LessThan2~13_cout\);

-- Location: LCCOMB_X2_Y21_N30
\i_contadorascdes|LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|LessThan2~14_combout\ = (\max_coche~combout\(7) & ((\i_contadorascdes|LessThan2~13_cout\) # (!\i_contadorascdes|contador\(7)))) # (!\max_coche~combout\(7) & (\i_contadorascdes|LessThan2~13_cout\ & !\i_contadorascdes|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \max_coche~combout\(7),
	datad => \i_contadorascdes|contador\(7),
	cin => \i_contadorascdes|LessThan2~13_cout\,
	combout => \i_contadorascdes|LessThan2~14_combout\);

-- Location: LCCOMB_X1_Y21_N30
\i_contadorascdes|contador[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[7]~19_combout\ = (\i_contadorascdes|contador[7]~18_combout\ & (\i_contadorascdes|LessThan2~14_combout\ & ((\i_contadorascdes|LessThan1~1_combout\) # (\i_contadorascdes|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|LessThan1~1_combout\,
	datab => \i_contadorascdes|LessThan1~0_combout\,
	datac => \i_contadorascdes|contador[7]~18_combout\,
	datad => \i_contadorascdes|LessThan2~14_combout\,
	combout => \i_contadorascdes|contador[7]~19_combout\);

-- Location: LCFF_X2_Y21_N1
\i_contadorascdes|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[0]~8_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(0));

-- Location: LCCOMB_X2_Y21_N6
\i_contadorascdes|contador[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_contadorascdes|contador[3]~14_combout\ = (\i_contadorascdes|contador\(3) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (\i_contadorascdes|contador[2]~13\ & VCC)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & 
-- (!\i_contadorascdes|contador[2]~13\)))) # (!\i_contadorascdes|contador\(3) & ((\i_detectorflanco2|estado_act.Pulso~regout\ & (!\i_contadorascdes|contador[2]~13\)) # (!\i_detectorflanco2|estado_act.Pulso~regout\ & ((\i_contadorascdes|contador[2]~13\) # 
-- (GND)))))
-- \i_contadorascdes|contador[3]~15\ = CARRY((\i_contadorascdes|contador\(3) & (!\i_detectorflanco2|estado_act.Pulso~regout\ & !\i_contadorascdes|contador[2]~13\)) # (!\i_contadorascdes|contador\(3) & ((!\i_contadorascdes|contador[2]~13\) # 
-- (!\i_detectorflanco2|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(3),
	datab => \i_detectorflanco2|estado_act.Pulso~regout\,
	datad => VCC,
	cin => \i_contadorascdes|contador[2]~13\,
	combout => \i_contadorascdes|contador[3]~14_combout\,
	cout => \i_contadorascdes|contador[3]~15\);

-- Location: LCFF_X2_Y21_N11
\i_contadorascdes|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[5]~20_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(5));

-- Location: LCCOMB_X3_Y21_N28
\i_1BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux6~0_combout\ = (\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(7)) # (\i_contadorascdes|contador\(5) $ (\i_contadorascdes|contador\(6))))) # (!\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(5)) # 
-- (\i_contadorascdes|contador\(7) $ (\i_contadorascdes|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(5),
	datab => \i_contadorascdes|contador\(7),
	datac => \i_contadorascdes|contador\(6),
	datad => \i_contadorascdes|contador\(4),
	combout => \i_1BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\i_1BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux5~0_combout\ = (\i_contadorascdes|contador\(4) & (\i_contadorascdes|contador\(7) $ (((\i_contadorascdes|contador\(5)) # (!\i_contadorascdes|contador\(6)))))) # (!\i_contadorascdes|contador\(4) & (!\i_contadorascdes|contador\(6) & 
-- (!\i_contadorascdes|contador\(7) & \i_contadorascdes|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_1BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\i_1BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux4~0_combout\ = (\i_contadorascdes|contador\(5) & (\i_contadorascdes|contador\(4) & ((!\i_contadorascdes|contador\(7))))) # (!\i_contadorascdes|contador\(5) & ((\i_contadorascdes|contador\(6) & ((!\i_contadorascdes|contador\(7)))) # 
-- (!\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_1BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\i_1BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux3~0_combout\ = (\i_contadorascdes|contador\(4) & (\i_contadorascdes|contador\(6) $ (((!\i_contadorascdes|contador\(5)))))) # (!\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(6) & (!\i_contadorascdes|contador\(7) & 
-- !\i_contadorascdes|contador\(5))) # (!\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(7) & \i_contadorascdes|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_1BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\i_1BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux2~0_combout\ = (\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(7) & ((\i_contadorascdes|contador\(5)) # (!\i_contadorascdes|contador\(4))))) # (!\i_contadorascdes|contador\(6) & (!\i_contadorascdes|contador\(4) & 
-- (!\i_contadorascdes|contador\(7) & \i_contadorascdes|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_1BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N20
\i_1BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux1~0_combout\ = (\i_contadorascdes|contador\(7) & ((\i_contadorascdes|contador\(4) & ((\i_contadorascdes|contador\(5)))) # (!\i_contadorascdes|contador\(4) & (\i_contadorascdes|contador\(6))))) # (!\i_contadorascdes|contador\(7) & 
-- (\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(4) $ (\i_contadorascdes|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_1BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\i_1BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_1BinA7Seg|Mux0~0_combout\ = (\i_contadorascdes|contador\(6) & (!\i_contadorascdes|contador\(5) & (\i_contadorascdes|contador\(4) $ (!\i_contadorascdes|contador\(7))))) # (!\i_contadorascdes|contador\(6) & (\i_contadorascdes|contador\(4) & 
-- (\i_contadorascdes|contador\(7) $ (!\i_contadorascdes|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(4),
	datab => \i_contadorascdes|contador\(6),
	datac => \i_contadorascdes|contador\(7),
	datad => \i_contadorascdes|contador\(5),
	combout => \i_1BinA7Seg|Mux0~0_combout\);

-- Location: LCFF_X2_Y21_N7
\i_contadorascdes|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_contadorascdes|contador[3]~14_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_contadorascdes|contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_contadorascdes|contador\(3));

-- Location: LCCOMB_X1_Y21_N0
\i_2BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux6~0_combout\ = (\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(3)) # (\i_contadorascdes|contador\(2) $ (\i_contadorascdes|contador\(1))))) # (!\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(1)) # 
-- (\i_contadorascdes|contador\(2) $ (\i_contadorascdes|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\i_2BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux5~0_combout\ = (\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0) & (\i_contadorascdes|contador\(1) $ (\i_contadorascdes|contador\(3))))) # (!\i_contadorascdes|contador\(2) & (!\i_contadorascdes|contador\(3) & 
-- ((\i_contadorascdes|contador\(1)) # (\i_contadorascdes|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\i_2BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux4~0_combout\ = (\i_contadorascdes|contador\(1) & (((\i_contadorascdes|contador\(0) & !\i_contadorascdes|contador\(3))))) # (!\i_contadorascdes|contador\(1) & ((\i_contadorascdes|contador\(2) & ((!\i_contadorascdes|contador\(3)))) # 
-- (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\i_2BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux3~0_combout\ = (\i_contadorascdes|contador\(0) & (\i_contadorascdes|contador\(2) $ ((!\i_contadorascdes|contador\(1))))) # (!\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(2) & (!\i_contadorascdes|contador\(1) & 
-- !\i_contadorascdes|contador\(3))) # (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(1) & \i_contadorascdes|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\i_2BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux2~0_combout\ = (\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(3) & ((\i_contadorascdes|contador\(1)) # (!\i_contadorascdes|contador\(0))))) # (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(1) & 
-- (!\i_contadorascdes|contador\(0) & !\i_contadorascdes|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\i_2BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux1~0_combout\ = (\i_contadorascdes|contador\(1) & ((\i_contadorascdes|contador\(0) & ((\i_contadorascdes|contador\(3)))) # (!\i_contadorascdes|contador\(0) & (\i_contadorascdes|contador\(2))))) # (!\i_contadorascdes|contador\(1) & 
-- (\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0) $ (\i_contadorascdes|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\i_2BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_2BinA7Seg|Mux0~0_combout\ = (\i_contadorascdes|contador\(2) & (!\i_contadorascdes|contador\(1) & (\i_contadorascdes|contador\(0) $ (!\i_contadorascdes|contador\(3))))) # (!\i_contadorascdes|contador\(2) & (\i_contadorascdes|contador\(0) & 
-- (\i_contadorascdes|contador\(1) $ (!\i_contadorascdes|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_contadorascdes|contador\(2),
	datab => \i_contadorascdes|contador\(1),
	datac => \i_contadorascdes|contador\(0),
	datad => \i_contadorascdes|contador\(3),
	combout => \i_2BinA7Seg|Mux0~0_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(5));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_1BinA7Seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(6));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(0));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(4));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(5));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_2BinA7Seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_verde~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_contadorascdes|LessThan2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_verde);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luz_roja~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_contadorascdes|ALT_INV_LessThan2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luz_roja);
END structure;


