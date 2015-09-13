-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "04/03/2015 20:05:21"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seg7_num_controller IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	Led_Disp0 : OUT std_logic_vector(6 DOWNTO 0);
	Led_Disp1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END seg7_num_controller;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seg7_num_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_Disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Led_Disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \Led_Disp0[0]~output_o\ : std_logic;
SIGNAL \Led_Disp0[1]~output_o\ : std_logic;
SIGNAL \Led_Disp0[2]~output_o\ : std_logic;
SIGNAL \Led_Disp0[3]~output_o\ : std_logic;
SIGNAL \Led_Disp0[4]~output_o\ : std_logic;
SIGNAL \Led_Disp0[5]~output_o\ : std_logic;
SIGNAL \Led_Disp0[6]~output_o\ : std_logic;
SIGNAL \Led_Disp1[0]~output_o\ : std_logic;
SIGNAL \Led_Disp1[1]~output_o\ : std_logic;
SIGNAL \Led_Disp1[2]~output_o\ : std_logic;
SIGNAL \Led_Disp1[3]~output_o\ : std_logic;
SIGNAL \Led_Disp1[4]~output_o\ : std_logic;
SIGNAL \Led_Disp1[5]~output_o\ : std_logic;
SIGNAL \Led_Disp1[6]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \H0|Mux6~0_combout\ : std_logic;
SIGNAL \H0|Mux5~0_combout\ : std_logic;
SIGNAL \H0|Mux4~0_combout\ : std_logic;
SIGNAL \H0|Mux3~0_combout\ : std_logic;
SIGNAL \H0|Mux2~0_combout\ : std_logic;
SIGNAL \H0|Mux1~0_combout\ : std_logic;
SIGNAL \H0|Mux0~0_combout\ : std_logic;
SIGNAL \H1|Mux6~0_combout\ : std_logic;
SIGNAL \H1|Mux5~0_combout\ : std_logic;
SIGNAL \H1|Mux4~0_combout\ : std_logic;
SIGNAL \H1|Mux3~0_combout\ : std_logic;
SIGNAL \H1|Mux2~0_combout\ : std_logic;
SIGNAL \H1|Mux1~0_combout\ : std_logic;
SIGNAL \H1|Mux0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
Led_Disp0 <= ww_Led_Disp0;
Led_Disp1 <= ww_Led_Disp1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\H1|ALT_INV_Mux0~0_combout\ <= NOT \H1|Mux0~0_combout\;
\H0|ALT_INV_Mux0~0_combout\ <= NOT \H0|Mux0~0_combout\;

-- Location: IOOBUF_X117_Y43_N2
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\LEDR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X117_Y41_N9
\LEDR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\LEDR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X117_Y32_N2
\LEDR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\LEDR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\LEDR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\LEDR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\Led_Disp0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[0]~output_o\);

-- Location: IOOBUF_X28_Y91_N9
\Led_Disp0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[1]~output_o\);

-- Location: IOOBUF_X30_Y91_N2
\Led_Disp0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[2]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\Led_Disp0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[3]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\Led_Disp0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[4]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\Led_Disp0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[5]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\Led_Disp0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[6]~output_o\);

-- Location: IOOBUF_X50_Y91_N9
\Led_Disp1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[0]~output_o\);

-- Location: IOOBUF_X48_Y91_N16
\Led_Disp1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[1]~output_o\);

-- Location: IOOBUF_X50_Y91_N2
\Led_Disp1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[2]~output_o\);

-- Location: IOOBUF_X37_Y91_N2
\Led_Disp1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[3]~output_o\);

-- Location: IOOBUF_X37_Y91_N9
\Led_Disp1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[4]~output_o\);

-- Location: IOOBUF_X8_Y91_N16
\Led_Disp1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[5]~output_o\);

-- Location: IOOBUF_X21_Y91_N23
\Led_Disp1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[6]~output_o\);

-- Location: IOIBUF_X117_Y39_N1
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X15_Y91_N15
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\SW[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X117_Y33_N8
\SW[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\SW[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X117_Y51_N1
\SW[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X54_Y87_N8
\H0|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux6~0_combout\ = (\SW[5]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (((\SW[4]~input_o\ & !\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y87_N18
\H0|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux5~0_combout\ = (\SW[6]~input_o\ & ((\SW[7]~input_o\) # (\SW[4]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (((\SW[5]~input_o\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y87_N20
\H0|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux4~0_combout\ = (\SW[6]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & ((\SW[7]~input_o\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y87_N14
\H0|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux3~0_combout\ = (\SW[5]~input_o\ & ((\SW[7]~input_o\) # ((\SW[4]~input_o\ & \SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (((\SW[4]~input_o\ & !\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y87_N24
\H0|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux2~0_combout\ = (\SW[4]~input_o\) # ((\SW[5]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y87_N26
\H0|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux1~0_combout\ = (\SW[4]~input_o\ & ((\SW[5]~input_o\) # (\SW[6]~input_o\ $ (!\SW[7]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[6]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y87_N4
\H0|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux0~0_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & ((!\SW[6]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \H0|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y87_N16
\H1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux6~0_combout\ = (\SW[1]~input_o\ & (\SW[3]~input_o\)) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (((!\SW[3]~input_o\ & \SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y87_N18
\H1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux5~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\SW[1]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[0]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux5~0_combout\);

-- Location: LCCOMB_X51_Y87_N20
\H1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux4~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y87_N14
\H1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux3~0_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (((!\SW[3]~input_o\ & \SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y87_N24
\H1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux2~0_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & (\SW[3]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y87_N10
\H1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux1~0_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\SW[0]~input_o\ & \SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((!\SW[3]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y87_N12
\H1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux0~0_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \H1|Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_Led_Disp0(0) <= \Led_Disp0[0]~output_o\;

ww_Led_Disp0(1) <= \Led_Disp0[1]~output_o\;

ww_Led_Disp0(2) <= \Led_Disp0[2]~output_o\;

ww_Led_Disp0(3) <= \Led_Disp0[3]~output_o\;

ww_Led_Disp0(4) <= \Led_Disp0[4]~output_o\;

ww_Led_Disp0(5) <= \Led_Disp0[5]~output_o\;

ww_Led_Disp0(6) <= \Led_Disp0[6]~output_o\;

ww_Led_Disp1(0) <= \Led_Disp1[0]~output_o\;

ww_Led_Disp1(1) <= \Led_Disp1[1]~output_o\;

ww_Led_Disp1(2) <= \Led_Disp1[2]~output_o\;

ww_Led_Disp1(3) <= \Led_Disp1[3]~output_o\;

ww_Led_Disp1(4) <= \Led_Disp1[4]~output_o\;

ww_Led_Disp1(5) <= \Led_Disp1[5]~output_o\;

ww_Led_Disp1(6) <= \Led_Disp1[6]~output_o\;
END structure;


