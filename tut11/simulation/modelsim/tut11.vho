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

-- DATE "03/24/2015 21:34:38"

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

ENTITY 	part5 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	Led_Disp0 : OUT std_logic_vector(0 TO 6);
	Led_Disp1 : OUT std_logic_vector(0 TO 6);
	Led_Disp2 : OUT std_logic_vector(0 TO 6)
	);
END part5;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[6]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[5]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[4]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[3]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[2]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[4]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[3]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[1]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[0]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[5]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[4]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[1]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp2[0]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Led_Disp0 : std_logic_vector(0 TO 6);
SIGNAL ww_Led_Disp1 : std_logic_vector(0 TO 6);
SIGNAL ww_Led_Disp2 : std_logic_vector(0 TO 6);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \Led_Disp0[6]~output_o\ : std_logic;
SIGNAL \Led_Disp0[5]~output_o\ : std_logic;
SIGNAL \Led_Disp0[4]~output_o\ : std_logic;
SIGNAL \Led_Disp0[3]~output_o\ : std_logic;
SIGNAL \Led_Disp0[2]~output_o\ : std_logic;
SIGNAL \Led_Disp0[1]~output_o\ : std_logic;
SIGNAL \Led_Disp0[0]~output_o\ : std_logic;
SIGNAL \Led_Disp1[6]~output_o\ : std_logic;
SIGNAL \Led_Disp1[5]~output_o\ : std_logic;
SIGNAL \Led_Disp1[4]~output_o\ : std_logic;
SIGNAL \Led_Disp1[3]~output_o\ : std_logic;
SIGNAL \Led_Disp1[2]~output_o\ : std_logic;
SIGNAL \Led_Disp1[1]~output_o\ : std_logic;
SIGNAL \Led_Disp1[0]~output_o\ : std_logic;
SIGNAL \Led_Disp2[6]~output_o\ : std_logic;
SIGNAL \Led_Disp2[5]~output_o\ : std_logic;
SIGNAL \Led_Disp2[4]~output_o\ : std_logic;
SIGNAL \Led_Disp2[3]~output_o\ : std_logic;
SIGNAL \Led_Disp2[2]~output_o\ : std_logic;
SIGNAL \Led_Disp2[1]~output_o\ : std_logic;
SIGNAL \Led_Disp2[0]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \U0|M[1]~2_combout\ : std_logic;
SIGNAL \U0|M[0]~0_combout\ : std_logic;
SIGNAL \U0|M[0]~1_combout\ : std_logic;
SIGNAL \H0|Mux2~0_combout\ : std_logic;
SIGNAL \U0|M[1]~3_combout\ : std_logic;
SIGNAL \U1|M[0]~0_combout\ : std_logic;
SIGNAL \U1|M[0]~1_combout\ : std_logic;
SIGNAL \U1|M[1]~2_combout\ : std_logic;
SIGNAL \H1|Mux2~0_combout\ : std_logic;
SIGNAL \U1|M[1]~3_combout\ : std_logic;
SIGNAL \U2|M[1]~2_combout\ : std_logic;
SIGNAL \U2|M[0]~0_combout\ : std_logic;
SIGNAL \U2|M[0]~1_combout\ : std_logic;
SIGNAL \H2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|M[1]~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_M[1]~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_M[0]~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_M[1]~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_M[0]~1_combout\ : std_logic;
SIGNAL \U0|ALT_INV_M[1]~3_combout\ : std_logic;
SIGNAL \U0|ALT_INV_M[0]~1_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
Led_Disp0 <= ww_Led_Disp0;
Led_Disp1 <= ww_Led_Disp1;
Led_Disp2 <= ww_Led_Disp2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U2|ALT_INV_M[1]~3_combout\ <= NOT \U2|M[1]~3_combout\;
\U2|ALT_INV_M[0]~1_combout\ <= NOT \U2|M[0]~1_combout\;
\U1|ALT_INV_M[1]~3_combout\ <= NOT \U1|M[1]~3_combout\;
\U1|ALT_INV_M[0]~1_combout\ <= NOT \U1|M[0]~1_combout\;
\U0|ALT_INV_M[1]~3_combout\ <= NOT \U0|M[1]~3_combout\;
\U0|ALT_INV_M[0]~1_combout\ <= NOT \U0|M[0]~1_combout\;

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X88_Y0_N23
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

-- Location: IOOBUF_X75_Y0_N16
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

-- Location: IOOBUF_X92_Y0_N9
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

-- Location: IOOBUF_X77_Y0_N16
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

-- Location: IOOBUF_X68_Y0_N23
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

-- Location: IOOBUF_X32_Y91_N23
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

-- Location: IOOBUF_X117_Y77_N2
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

-- Location: IOOBUF_X82_Y0_N9
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

-- Location: IOOBUF_X70_Y0_N2
\LEDR[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X92_Y0_N16
\Led_Disp0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[6]~output_o\);

-- Location: IOOBUF_X84_Y0_N23
\Led_Disp0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|ALT_INV_M[0]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[5]~output_o\);

-- Location: IOOBUF_X82_Y0_N2
\Led_Disp0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|ALT_INV_M[0]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[4]~output_o\);

-- Location: IOOBUF_X86_Y0_N9
\Led_Disp0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|ALT_INV_M[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[3]~output_o\);

-- Location: IOOBUF_X90_Y0_N9
\Led_Disp0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|ALT_INV_M[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[2]~output_o\);

-- Location: IOOBUF_X95_Y0_N9
\Led_Disp0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[1]~output_o\);

-- Location: IOOBUF_X95_Y0_N16
\Led_Disp0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[0]~output_o\);

-- Location: IOOBUF_X86_Y0_N23
\Led_Disp1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[6]~output_o\);

-- Location: IOOBUF_X77_Y0_N23
\Led_Disp1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_M[0]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[5]~output_o\);

-- Location: IOOBUF_X75_Y0_N2
\Led_Disp1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_M[0]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[4]~output_o\);

-- Location: IOOBUF_X82_Y0_N16
\Led_Disp1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_M[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[3]~output_o\);

-- Location: IOOBUF_X82_Y0_N23
\Led_Disp1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_M[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[2]~output_o\);

-- Location: IOOBUF_X77_Y0_N2
\Led_Disp1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[1]~output_o\);

-- Location: IOOBUF_X84_Y0_N9
\Led_Disp1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[0]~output_o\);

-- Location: IOOBUF_X88_Y0_N16
\Led_Disp2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[6]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\Led_Disp2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_M[0]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[5]~output_o\);

-- Location: IOOBUF_X92_Y0_N2
\Led_Disp2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_M[0]~1_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[4]~output_o\);

-- Location: IOOBUF_X90_Y0_N2
\Led_Disp2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_M[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[3]~output_o\);

-- Location: IOOBUF_X86_Y0_N16
\Led_Disp2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_M[1]~3_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[2]~output_o\);

-- Location: IOOBUF_X88_Y0_N2
\Led_Disp2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[1]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\Led_Disp2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp2[0]~output_o\);

-- Location: IOIBUF_X70_Y0_N15
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X75_Y0_N8
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X92_Y0_N22
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X77_Y0_N8
\SW[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\SW[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X32_Y91_N8
\SW[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X117_Y77_N8
\SW[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X84_Y0_N15
\SW[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X75_Y0_N22
\SW[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X83_Y1_N20
\U0|M[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|M[1]~2_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[3]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \U0|M[1]~2_combout\);

-- Location: LCCOMB_X83_Y1_N8
\U0|M[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|M[0]~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[8]~input_o\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \U0|M[0]~0_combout\);

-- Location: LCCOMB_X83_Y1_N2
\U0|M[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|M[0]~1_combout\ = (\U0|M[0]~0_combout\) # ((\SW[0]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \U0|M[0]~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \U0|M[0]~1_combout\);

-- Location: LCCOMB_X83_Y1_N6
\H0|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H0|Mux2~0_combout\ = (!\U0|M[1]~2_combout\ & (\U0|M[0]~1_combout\ & ((!\SW[1]~input_o\) # (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \U0|M[1]~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \U0|M[0]~1_combout\,
	combout => \H0|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y1_N24
\U0|M[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|M[1]~3_combout\ = (\U0|M[1]~2_combout\) # ((\SW[9]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \U0|M[1]~2_combout\,
	combout => \U0|M[1]~3_combout\);

-- Location: LCCOMB_X83_Y1_N18
\U1|M[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|M[0]~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[0]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \U1|M[0]~0_combout\);

-- Location: LCCOMB_X83_Y1_N12
\U1|M[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|M[0]~1_combout\ = (\U1|M[0]~0_combout\) # ((\SW[4]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \U1|M[0]~0_combout\,
	combout => \U1|M[0]~1_combout\);

-- Location: LCCOMB_X83_Y1_N14
\U1|M[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|M[1]~2_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[1]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U1|M[1]~2_combout\);

-- Location: LCCOMB_X83_Y1_N16
\H1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H1|Mux2~0_combout\ = (\U1|M[0]~1_combout\ & (!\U1|M[1]~2_combout\ & ((!\SW[5]~input_o\) # (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|M[0]~1_combout\,
	datab => \SW[9]~input_o\,
	datac => \U1|M[1]~2_combout\,
	datad => \SW[5]~input_o\,
	combout => \H1|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y1_N26
\U1|M[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|M[1]~3_combout\ = (\U1|M[1]~2_combout\) # ((\SW[5]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \U1|M[1]~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \U1|M[1]~3_combout\);

-- Location: LCCOMB_X83_Y1_N0
\U2|M[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|M[1]~2_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[5]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \U2|M[1]~2_combout\);

-- Location: LCCOMB_X83_Y1_N4
\U2|M[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|M[0]~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\SW[4]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \U2|M[0]~0_combout\);

-- Location: LCCOMB_X83_Y1_N22
\U2|M[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|M[0]~1_combout\ = (\U2|M[0]~0_combout\) # ((\SW[2]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \U2|M[0]~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \U2|M[0]~1_combout\);

-- Location: LCCOMB_X83_Y1_N10
\H2|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \H2|Mux2~0_combout\ = (!\U2|M[1]~2_combout\ & (\U2|M[0]~1_combout\ & ((!\SW[3]~input_o\) # (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \U2|M[1]~2_combout\,
	datac => \U2|M[0]~1_combout\,
	datad => \SW[3]~input_o\,
	combout => \H2|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y1_N28
\U2|M[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|M[1]~3_combout\ = (\U2|M[1]~2_combout\) # ((\SW[9]~input_o\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|M[1]~2_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U2|M[1]~3_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_Led_Disp0(6) <= \Led_Disp0[6]~output_o\;

ww_Led_Disp0(5) <= \Led_Disp0[5]~output_o\;

ww_Led_Disp0(4) <= \Led_Disp0[4]~output_o\;

ww_Led_Disp0(3) <= \Led_Disp0[3]~output_o\;

ww_Led_Disp0(2) <= \Led_Disp0[2]~output_o\;

ww_Led_Disp0(1) <= \Led_Disp0[1]~output_o\;

ww_Led_Disp0(0) <= \Led_Disp0[0]~output_o\;

ww_Led_Disp1(6) <= \Led_Disp1[6]~output_o\;

ww_Led_Disp1(5) <= \Led_Disp1[5]~output_o\;

ww_Led_Disp1(4) <= \Led_Disp1[4]~output_o\;

ww_Led_Disp1(3) <= \Led_Disp1[3]~output_o\;

ww_Led_Disp1(2) <= \Led_Disp1[2]~output_o\;

ww_Led_Disp1(1) <= \Led_Disp1[1]~output_o\;

ww_Led_Disp1(0) <= \Led_Disp1[0]~output_o\;

ww_Led_Disp2(6) <= \Led_Disp2[6]~output_o\;

ww_Led_Disp2(5) <= \Led_Disp2[5]~output_o\;

ww_Led_Disp2(4) <= \Led_Disp2[4]~output_o\;

ww_Led_Disp2(3) <= \Led_Disp2[3]~output_o\;

ww_Led_Disp2(2) <= \Led_Disp2[2]~output_o\;

ww_Led_Disp2(1) <= \Led_Disp2[1]~output_o\;

ww_Led_Disp2(0) <= \Led_Disp2[0]~output_o\;
END structure;


