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

-- DATE "04/03/2015 22:08:01"

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

ENTITY 	BCD_adder IS
    PORT (
	SW : IN std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(8 DOWNTO 0);
	Led_Disp0 : OUT std_logic_vector(6 DOWNTO 0);
	Led_Disp1 : OUT std_logic_vector(6 DOWNTO 0);
	Led_Disp2 : OUT std_logic_vector(6 DOWNTO 0);
	Led_Disp3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END BCD_adder;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- Led_Disp2[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[5]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp3[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Led_Disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Led_Disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Led_Disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Led_Disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \adder|adder1|X[1]~1_combout\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
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
SIGNAL \Led_Disp2[0]~output_o\ : std_logic;
SIGNAL \Led_Disp2[1]~output_o\ : std_logic;
SIGNAL \Led_Disp2[2]~output_o\ : std_logic;
SIGNAL \Led_Disp2[3]~output_o\ : std_logic;
SIGNAL \Led_Disp2[4]~output_o\ : std_logic;
SIGNAL \Led_Disp2[5]~output_o\ : std_logic;
SIGNAL \Led_Disp2[6]~output_o\ : std_logic;
SIGNAL \Led_Disp3[0]~output_o\ : std_logic;
SIGNAL \Led_Disp3[1]~output_o\ : std_logic;
SIGNAL \Led_Disp3[2]~output_o\ : std_logic;
SIGNAL \Led_Disp3[3]~output_o\ : std_logic;
SIGNAL \Led_Disp3[4]~output_o\ : std_logic;
SIGNAL \Led_Disp3[5]~output_o\ : std_logic;
SIGNAL \Led_Disp3[6]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \adder|adder2|X[1]~0_combout\ : std_logic;
SIGNAL \adder|adder3|X[0]~1_combout\ : std_logic;
SIGNAL \adder|adder4|X[0]~0_combout\ : std_logic;
SIGNAL \adder|adder4|X[0]~2_combout\ : std_logic;
SIGNAL \adder|adder2|X[0]~1_combout\ : std_logic;
SIGNAL \mux|M[1]~3_combout\ : std_logic;
SIGNAL \mux|M[3]~5_combout\ : std_logic;
SIGNAL \mux|M[2]~4_combout\ : std_logic;
SIGNAL \adder|adder3|X[1]~0_combout\ : std_logic;
SIGNAL \bin|Comp|Mux0~0_combout\ : std_logic;
SIGNAL \adder|adder1|X[0]~0_combout\ : std_logic;
SIGNAL \mux|M[3]~0_combout\ : std_logic;
SIGNAL \mux|M[0]~1_combout\ : std_logic;
SIGNAL \bin|A|Mux2~0_combout\ : std_logic;
SIGNAL \mux|M[0]~2_combout\ : std_logic;
SIGNAL \digit1|Mux6~0_combout\ : std_logic;
SIGNAL \digit1|Mux5~0_combout\ : std_logic;
SIGNAL \digit1|Mux4~0_combout\ : std_logic;
SIGNAL \digit1|Mux3~0_combout\ : std_logic;
SIGNAL \digit1|Mux2~0_combout\ : std_logic;
SIGNAL \digit1|Mux1~0_combout\ : std_logic;
SIGNAL \digit1|Mux0~0_combout\ : std_logic;
SIGNAL \adder|adder4|X[1]~1_combout\ : std_logic;
SIGNAL \D2[0]~0_combout\ : std_logic;
SIGNAL \digit3|Mux6~0_combout\ : std_logic;
SIGNAL \digit3|Mux5~0_combout\ : std_logic;
SIGNAL \digit3|Mux4~0_combout\ : std_logic;
SIGNAL \digit3|Mux3~0_combout\ : std_logic;
SIGNAL \digit3|Mux2~0_combout\ : std_logic;
SIGNAL \digit3|Mux1~0_combout\ : std_logic;
SIGNAL \digit3|Mux0~0_combout\ : std_logic;
SIGNAL \digit4|Mux6~0_combout\ : std_logic;
SIGNAL \digit4|Mux5~0_combout\ : std_logic;
SIGNAL \digit4|Mux4~0_combout\ : std_logic;
SIGNAL \digit4|Mux3~0_combout\ : std_logic;
SIGNAL \digit4|Mux2~0_combout\ : std_logic;
SIGNAL \digit4|Mux1~0_combout\ : std_logic;
SIGNAL \digit4|Mux0~0_combout\ : std_logic;
SIGNAL \digit4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digit3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digit1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
Led_Disp0 <= ww_Led_Disp0;
Led_Disp1 <= ww_Led_Disp1;
Led_Disp2 <= ww_Led_Disp2;
Led_Disp3 <= ww_Led_Disp3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\digit4|ALT_INV_Mux0~0_combout\ <= NOT \digit4|Mux0~0_combout\;
\digit3|ALT_INV_Mux0~0_combout\ <= NOT \digit3|Mux0~0_combout\;
\digit1|ALT_INV_Mux0~0_combout\ <= NOT \digit1|Mux0~0_combout\;

-- Location: LCCOMB_X30_Y88_N10
\adder|adder1|X[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder1|X[1]~1_combout\ = (\SW[4]~input_o\ & ((\SW[8]~input_o\) # (\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[8]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \adder|adder1|X[1]~1_combout\);

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

-- Location: IOOBUF_X117_Y54_N2
\LEDR[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\Led_Disp0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1|Mux6~0_combout\,
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
	i => \digit1|Mux5~0_combout\,
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
	i => \digit1|Mux4~0_combout\,
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
	i => \digit1|Mux3~0_combout\,
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
	i => \digit1|Mux2~0_combout\,
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
	i => \digit1|Mux1~0_combout\,
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
	i => \digit1|ALT_INV_Mux0~0_combout\,
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
	i => \D2[0]~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \D2[0]~0_combout\,
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
	i => \D2[0]~0_combout\,
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
	i => \D2[0]~0_combout\,
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
	i => VCC,
	devoe => ww_devoe,
	o => \Led_Disp1[6]~output_o\);

-- Location: IOOBUF_X3_Y91_N16
\Led_Disp2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[0]~output_o\);

-- Location: IOOBUF_X3_Y91_N2
\Led_Disp2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[1]~output_o\);

-- Location: IOOBUF_X5_Y91_N23
\Led_Disp2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[2]~output_o\);

-- Location: IOOBUF_X117_Y17_N2
\Led_Disp2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[3]~output_o\);

-- Location: IOOBUF_X5_Y91_N9
\Led_Disp2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[4]~output_o\);

-- Location: IOOBUF_X10_Y91_N9
\Led_Disp2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[5]~output_o\);

-- Location: IOOBUF_X21_Y91_N16
\Led_Disp2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[6]~output_o\);

-- Location: IOOBUF_X19_Y91_N16
\Led_Disp3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[0]~output_o\);

-- Location: IOOBUF_X30_Y91_N23
\Led_Disp3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[1]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\Led_Disp3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[2]~output_o\);

-- Location: IOOBUF_X10_Y91_N2
\Led_Disp3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[3]~output_o\);

-- Location: IOOBUF_X12_Y91_N9
\Led_Disp3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[4]~output_o\);

-- Location: IOOBUF_X21_Y91_N2
\Led_Disp3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[5]~output_o\);

-- Location: IOOBUF_X26_Y91_N2
\Led_Disp3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp3[6]~output_o\);

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

-- Location: IOIBUF_X117_Y51_N8
\SW[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X31_Y88_N24
\adder|adder2|X[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder2|X[1]~0_combout\ = (\adder|adder1|X[1]~1_combout\ & ((\SW[5]~input_o\) # (\SW[1]~input_o\))) # (!\adder|adder1|X[1]~1_combout\ & (\SW[5]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|X[1]~1_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \adder|adder2|X[1]~0_combout\);

-- Location: LCCOMB_X31_Y88_N28
\adder|adder3|X[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder3|X[0]~1_combout\ = \SW[2]~input_o\ $ (\adder|adder2|X[1]~0_combout\ $ (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \adder|adder2|X[1]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \adder|adder3|X[0]~1_combout\);

-- Location: LCCOMB_X31_Y88_N0
\adder|adder4|X[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder4|X[0]~0_combout\ = \SW[3]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \adder|adder4|X[0]~0_combout\);

-- Location: LCCOMB_X31_Y88_N26
\adder|adder4|X[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder4|X[0]~2_combout\ = \adder|adder4|X[0]~0_combout\ $ (((\SW[2]~input_o\ & ((\adder|adder2|X[1]~0_combout\) # (\SW[6]~input_o\))) # (!\SW[2]~input_o\ & (\adder|adder2|X[1]~0_combout\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \adder|adder4|X[0]~0_combout\,
	datac => \adder|adder2|X[1]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \adder|adder4|X[0]~2_combout\);

-- Location: LCCOMB_X31_Y88_N10
\adder|adder2|X[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder2|X[0]~1_combout\ = \adder|adder1|X[1]~1_combout\ $ (\SW[5]~input_o\ $ (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|X[1]~1_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \adder|adder2|X[0]~1_combout\);

-- Location: LCCOMB_X31_Y88_N8
\mux|M[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|M[1]~3_combout\ = (\adder|adder3|X[0]~1_combout\ & (!\adder|adder4|X[1]~1_combout\ & (\adder|adder4|X[0]~2_combout\ $ (\adder|adder2|X[0]~1_combout\)))) # (!\adder|adder3|X[0]~1_combout\ & (!\adder|adder4|X[0]~2_combout\ & 
-- (\adder|adder4|X[1]~1_combout\ $ (\adder|adder2|X[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder4|X[1]~1_combout\,
	datab => \adder|adder3|X[0]~1_combout\,
	datac => \adder|adder4|X[0]~2_combout\,
	datad => \adder|adder2|X[0]~1_combout\,
	combout => \mux|M[1]~3_combout\);

-- Location: LCCOMB_X31_Y88_N20
\mux|M[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|M[3]~5_combout\ = (!\adder|adder3|X[0]~1_combout\ & ((\adder|adder4|X[1]~1_combout\ & (!\adder|adder4|X[0]~2_combout\ & \adder|adder2|X[0]~1_combout\)) # (!\adder|adder4|X[1]~1_combout\ & (\adder|adder4|X[0]~2_combout\ & 
-- !\adder|adder2|X[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder4|X[1]~1_combout\,
	datab => \adder|adder3|X[0]~1_combout\,
	datac => \adder|adder4|X[0]~2_combout\,
	datad => \adder|adder2|X[0]~1_combout\,
	combout => \mux|M[3]~5_combout\);

-- Location: LCCOMB_X31_Y88_N2
\mux|M[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|M[2]~4_combout\ = (\adder|adder2|X[0]~1_combout\ & (!\adder|adder4|X[1]~1_combout\ & (\adder|adder3|X[0]~1_combout\))) # (!\adder|adder2|X[0]~1_combout\ & (!\adder|adder4|X[0]~2_combout\ & (\adder|adder4|X[1]~1_combout\ $ 
-- (\adder|adder3|X[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder4|X[1]~1_combout\,
	datab => \adder|adder3|X[0]~1_combout\,
	datac => \adder|adder4|X[0]~2_combout\,
	datad => \adder|adder2|X[0]~1_combout\,
	combout => \mux|M[2]~4_combout\);

-- Location: LCCOMB_X31_Y88_N18
\adder|adder3|X[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder3|X[1]~0_combout\ = (\SW[2]~input_o\ & ((\adder|adder2|X[1]~0_combout\) # (\SW[6]~input_o\))) # (!\SW[2]~input_o\ & (\adder|adder2|X[1]~0_combout\ & \SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \adder|adder2|X[1]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \adder|adder3|X[1]~0_combout\);

-- Location: LCCOMB_X31_Y88_N4
\bin|Comp|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bin|Comp|Mux0~0_combout\ = (\adder|adder2|X[0]~1_combout\ & (\adder|adder3|X[1]~0_combout\ $ (((!\adder|adder4|X[0]~0_combout\))))) # (!\adder|adder2|X[0]~1_combout\ & ((\adder|adder3|X[1]~0_combout\ $ (!\adder|adder4|X[0]~0_combout\)) # 
-- (!\adder|adder3|X[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder2|X[0]~1_combout\,
	datab => \adder|adder3|X[1]~0_combout\,
	datac => \adder|adder3|X[0]~1_combout\,
	datad => \adder|adder4|X[0]~0_combout\,
	combout => \bin|Comp|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y88_N16
\adder|adder1|X[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder1|X[0]~0_combout\ = \SW[4]~input_o\ $ (\SW[8]~input_o\ $ (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \adder|adder1|X[0]~0_combout\);

-- Location: LCCOMB_X31_Y88_N6
\mux|M[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|M[3]~0_combout\ = (!\adder|adder3|X[0]~1_combout\ & ((\SW[7]~input_o\ & (\SW[3]~input_o\ $ (\adder|adder3|X[1]~0_combout\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & \adder|adder3|X[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \adder|adder3|X[0]~1_combout\,
	datac => \SW[3]~input_o\,
	datad => \adder|adder3|X[1]~0_combout\,
	combout => \mux|M[3]~0_combout\);

-- Location: LCCOMB_X31_Y88_N16
\mux|M[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|M[0]~1_combout\ = (\adder|adder1|X[0]~0_combout\ & ((\mux|M[3]~0_combout\) # ((!\adder|adder4|X[1]~1_combout\ & \bin|Comp|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder4|X[1]~1_combout\,
	datab => \bin|Comp|Mux0~0_combout\,
	datac => \adder|adder1|X[0]~0_combout\,
	datad => \mux|M[3]~0_combout\,
	combout => \mux|M[0]~1_combout\);

-- Location: LCCOMB_X31_Y88_N12
\bin|A|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bin|A|Mux2~0_combout\ = (\adder|adder1|X[0]~0_combout\ & (\adder|adder4|X[0]~2_combout\ & ((\adder|adder3|X[0]~1_combout\) # (\adder|adder2|X[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|X[0]~0_combout\,
	datab => \adder|adder3|X[0]~1_combout\,
	datac => \adder|adder4|X[0]~2_combout\,
	datad => \adder|adder2|X[0]~1_combout\,
	combout => \bin|A|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y88_N14
\mux|M[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux|M[0]~2_combout\ = (\mux|M[0]~1_combout\) # ((!\adder|adder4|X[1]~1_combout\ & (!\bin|Comp|Mux0~0_combout\ & \bin|A|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder4|X[1]~1_combout\,
	datab => \mux|M[0]~1_combout\,
	datac => \bin|Comp|Mux0~0_combout\,
	datad => \bin|A|Mux2~0_combout\,
	combout => \mux|M[0]~2_combout\);

-- Location: LCCOMB_X32_Y88_N8
\digit1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux6~0_combout\ = (\mux|M[1]~3_combout\ & (\mux|M[3]~5_combout\)) # (!\mux|M[1]~3_combout\ & (\mux|M[2]~4_combout\ $ (((!\mux|M[3]~5_combout\ & \mux|M[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y88_N2
\digit1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux5~0_combout\ = (\mux|M[3]~5_combout\ & ((\mux|M[1]~3_combout\) # ((\mux|M[2]~4_combout\)))) # (!\mux|M[3]~5_combout\ & (\mux|M[2]~4_combout\ & (\mux|M[1]~3_combout\ $ (\mux|M[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y88_N4
\digit1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux4~0_combout\ = (\mux|M[2]~4_combout\ & (((\mux|M[3]~5_combout\)))) # (!\mux|M[2]~4_combout\ & (\mux|M[1]~3_combout\ & ((\mux|M[3]~5_combout\) # (!\mux|M[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y88_N22
\digit1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux3~0_combout\ = (\mux|M[1]~3_combout\ & ((\mux|M[3]~5_combout\) # ((\mux|M[2]~4_combout\ & \mux|M[0]~2_combout\)))) # (!\mux|M[1]~3_combout\ & (\mux|M[2]~4_combout\ $ (((!\mux|M[3]~5_combout\ & \mux|M[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y88_N0
\digit1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux2~0_combout\ = (\mux|M[0]~2_combout\) # ((\mux|M[1]~3_combout\ & (\mux|M[3]~5_combout\)) # (!\mux|M[1]~3_combout\ & ((\mux|M[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y88_N10
\digit1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux1~0_combout\ = (\mux|M[2]~4_combout\ & ((\mux|M[3]~5_combout\) # ((\mux|M[1]~3_combout\ & \mux|M[0]~2_combout\)))) # (!\mux|M[2]~4_combout\ & ((\mux|M[1]~3_combout\) # ((!\mux|M[3]~5_combout\ & \mux|M[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y88_N12
\digit1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit1|Mux0~0_combout\ = (\mux|M[1]~3_combout\ & (!\mux|M[3]~5_combout\ & ((!\mux|M[0]~2_combout\) # (!\mux|M[2]~4_combout\)))) # (!\mux|M[1]~3_combout\ & (\mux|M[3]~5_combout\ $ ((\mux|M[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|M[1]~3_combout\,
	datab => \mux|M[3]~5_combout\,
	datac => \mux|M[2]~4_combout\,
	datad => \mux|M[0]~2_combout\,
	combout => \digit1|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y88_N22
\adder|adder4|X[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder|adder4|X[1]~1_combout\ = (\adder|adder3|X[1]~0_combout\ & ((\SW[3]~input_o\) # (\SW[7]~input_o\))) # (!\adder|adder3|X[1]~0_combout\ & (\SW[3]~input_o\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder|adder3|X[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \adder|adder4|X[1]~1_combout\);

-- Location: LCCOMB_X31_Y88_N30
\D2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2[0]~0_combout\ = (\adder|adder4|X[1]~1_combout\) # ((\adder|adder4|X[0]~2_combout\ & ((\adder|adder3|X[0]~1_combout\) # (\adder|adder2|X[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder4|X[1]~1_combout\,
	datab => \adder|adder3|X[0]~1_combout\,
	datac => \adder|adder4|X[0]~2_combout\,
	datad => \adder|adder2|X[0]~1_combout\,
	combout => \D2[0]~0_combout\);

-- Location: LCCOMB_X30_Y88_N4
\digit3|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux6~0_combout\ = (\SW[5]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (((\SW[4]~input_o\ & !\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y88_N22
\digit3|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux5~0_combout\ = (\SW[6]~input_o\ & ((\SW[7]~input_o\) # (\SW[4]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (((\SW[5]~input_o\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y88_N8
\digit3|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux4~0_combout\ = (\SW[6]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & ((\SW[7]~input_o\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y88_N26
\digit3|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux3~0_combout\ = (\SW[5]~input_o\ & ((\SW[7]~input_o\) # ((\SW[6]~input_o\ & \SW[4]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (((\SW[4]~input_o\ & !\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y88_N28
\digit3|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux2~0_combout\ = (\SW[4]~input_o\) # ((\SW[5]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y88_N6
\digit3|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux1~0_combout\ = (\SW[6]~input_o\ & ((\SW[7]~input_o\) # ((\SW[4]~input_o\ & \SW[5]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\SW[4]~input_o\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y88_N24
\digit3|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit3|Mux0~0_combout\ = (\SW[6]~input_o\ & (!\SW[7]~input_o\ & ((!\SW[5]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \digit3|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y88_N2
\digit4|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux6~0_combout\ = (\SW[1]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (((\SW[0]~input_o\ & !\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y88_N20
\digit4|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux5~0_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[0]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y88_N14
\digit4|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux4~0_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y88_N0
\digit4|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux3~0_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((\SW[0]~input_o\ & \SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (((\SW[0]~input_o\ & !\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y88_N18
\digit4|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux2~0_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & (\SW[3]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y88_N12
\digit4|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux1~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[3]~input_o\ $ (!\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y88_N30
\digit4|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digit4|Mux0~0_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \digit4|Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

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

ww_Led_Disp2(0) <= \Led_Disp2[0]~output_o\;

ww_Led_Disp2(1) <= \Led_Disp2[1]~output_o\;

ww_Led_Disp2(2) <= \Led_Disp2[2]~output_o\;

ww_Led_Disp2(3) <= \Led_Disp2[3]~output_o\;

ww_Led_Disp2(4) <= \Led_Disp2[4]~output_o\;

ww_Led_Disp2(5) <= \Led_Disp2[5]~output_o\;

ww_Led_Disp2(6) <= \Led_Disp2[6]~output_o\;

ww_Led_Disp3(0) <= \Led_Disp3[0]~output_o\;

ww_Led_Disp3(1) <= \Led_Disp3[1]~output_o\;

ww_Led_Disp3(2) <= \Led_Disp3[2]~output_o\;

ww_Led_Disp3(3) <= \Led_Disp3[3]~output_o\;

ww_Led_Disp3(4) <= \Led_Disp3[4]~output_o\;

ww_Led_Disp3(5) <= \Led_Disp3[5]~output_o\;

ww_Led_Disp3(6) <= \Led_Disp3[6]~output_o\;
END structure;


