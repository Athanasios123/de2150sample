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

-- DATE "04/04/2015 16:40:12"

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

ENTITY 	part2 IS
    PORT (
	Clk : IN std_logic;
	D : IN std_logic;
	Q : OUT std_logic
	);
END part2;

-- Design Ports Information
-- Q	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \master|Qb~combout\ : std_logic;
SIGNAL \master|R_g~combout\ : std_logic;
SIGNAL \master|R~combout\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \master|S_g~combout\ : std_logic;
SIGNAL \master|Qa~combout\ : std_logic;
SIGNAL \slave|S_g~combout\ : std_logic;
SIGNAL \slave|R~combout\ : std_logic;
SIGNAL \slave|R_g~combout\ : std_logic;
SIGNAL \slave|Qb~combout\ : std_logic;
SIGNAL \slave|Qa~combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X3_Y1_N12
\master|Qb\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master|Qb~combout\ = LCELL((!\master|R_g~combout\) # (!\master|Qa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|Qa~combout\,
	datad => \master|R_g~combout\,
	combout => \master|Qb~combout\);

-- Location: LCCOMB_X3_Y1_N6
\master|R_g\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master|R_g~combout\ = LCELL((!\master|R~combout\) # (!\Clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clk~input_o\,
	datac => \master|R~combout\,
	combout => \master|R_g~combout\);

-- Location: LCCOMB_X3_Y1_N26
\master|R\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master|R~combout\ = LCELL(!\D~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D~input_o\,
	combout => \master|R~combout\);

-- Location: IOOBUF_X3_Y0_N16
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slave|Qa~combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\Clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: LCCOMB_X3_Y1_N2
\master|S_g\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master|S_g~combout\ = LCELL((!\Clk~input_o\) # (!\D~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D~input_o\,
	datad => \Clk~input_o\,
	combout => \master|S_g~combout\);

-- Location: LCCOMB_X3_Y1_N22
\master|Qa\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master|Qa~combout\ = LCELL((!\master|S_g~combout\) # (!\master|Qb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master|Qb~combout\,
	datad => \master|S_g~combout\,
	combout => \master|Qa~combout\);

-- Location: LCCOMB_X3_Y1_N10
\slave|S_g\ : cycloneiv_lcell_comb
-- Equation(s):
-- \slave|S_g~combout\ = LCELL((!\master|Qa~combout\) # (!\Clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clk~input_o\,
	datac => \master|Qa~combout\,
	combout => \slave|S_g~combout\);

-- Location: LCCOMB_X3_Y1_N24
\slave|R\ : cycloneiv_lcell_comb
-- Equation(s):
-- \slave|R~combout\ = LCELL(!\master|Qa~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master|Qa~combout\,
	combout => \slave|R~combout\);

-- Location: LCCOMB_X3_Y1_N16
\slave|R_g\ : cycloneiv_lcell_comb
-- Equation(s):
-- \slave|R_g~combout\ = LCELL((!\slave|R~combout\) # (!\Clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clk~input_o\,
	datad => \slave|R~combout\,
	combout => \slave|R_g~combout\);

-- Location: LCCOMB_X3_Y1_N20
\slave|Qb\ : cycloneiv_lcell_comb
-- Equation(s):
-- \slave|Qb~combout\ = LCELL((!\slave|Qa~combout\) # (!\slave|R_g~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slave|R_g~combout\,
	datac => \slave|Qa~combout\,
	combout => \slave|Qb~combout\);

-- Location: LCCOMB_X3_Y1_N8
\slave|Qa\ : cycloneiv_lcell_comb
-- Equation(s):
-- \slave|Qa~combout\ = LCELL((!\slave|Qb~combout\) # (!\slave|S_g~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave|S_g~combout\,
	datad => \slave|Qb~combout\,
	combout => \slave|Qa~combout\);

ww_Q <= \Q~output_o\;
END structure;


