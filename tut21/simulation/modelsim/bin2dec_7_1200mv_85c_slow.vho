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

-- DATE "04/02/2015 20:26:19"

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

ENTITY 	bin2dec IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	Led_Disp0 : OUT std_logic_vector(6 DOWNTO 0);
	Led_Disp1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END bin2dec;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[0]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[1]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[2]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp0[6]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[0]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[2]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[5]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led_Disp1[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bin2dec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Led_Disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Led_Disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
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
SIGNAL \dec0|Mux6~0_combout\ : std_logic;
SIGNAL \dec0|Mux5~0_combout\ : std_logic;
SIGNAL \dec0|Mux4~0_combout\ : std_logic;
SIGNAL \dec0|Mux3~0_combout\ : std_logic;
SIGNAL \dec0|Mux2~0_combout\ : std_logic;
SIGNAL \dec0|Mux1~0_combout\ : std_logic;
SIGNAL \dec0|Mux0~0_combout\ : std_logic;
SIGNAL \Comp|Mux0~0_combout\ : std_logic;
SIGNAL \dec0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dec0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dec0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dec0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \dec0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \dec0|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
Led_Disp0 <= ww_Led_Disp0;
Led_Disp1 <= ww_Led_Disp1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dec0|ALT_INV_Mux1~0_combout\ <= NOT \dec0|Mux1~0_combout\;
\dec0|ALT_INV_Mux2~0_combout\ <= NOT \dec0|Mux2~0_combout\;
\dec0|ALT_INV_Mux3~0_combout\ <= NOT \dec0|Mux3~0_combout\;
\dec0|ALT_INV_Mux4~0_combout\ <= NOT \dec0|Mux4~0_combout\;
\dec0|ALT_INV_Mux5~0_combout\ <= NOT \dec0|Mux5~0_combout\;
\dec0|ALT_INV_Mux6~0_combout\ <= NOT \dec0|Mux6~0_combout\;

-- Location: IOOBUF_X82_Y0_N2
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

-- Location: IOOBUF_X88_Y0_N2
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

-- Location: IOOBUF_X86_Y0_N23
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

-- Location: IOOBUF_X84_Y0_N23
\Led_Disp0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[0]~output_o\);

-- Location: IOOBUF_X82_Y0_N23
\Led_Disp0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[1]~output_o\);

-- Location: IOOBUF_X82_Y0_N9
\Led_Disp0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[2]~output_o\);

-- Location: IOOBUF_X84_Y0_N16
\Led_Disp0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[3]~output_o\);

-- Location: IOOBUF_X84_Y0_N2
\Led_Disp0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[4]~output_o\);

-- Location: IOOBUF_X86_Y0_N16
\Led_Disp0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[5]~output_o\);

-- Location: IOOBUF_X84_Y0_N9
\Led_Disp0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp0[6]~output_o\);

-- Location: IOOBUF_X92_Y0_N9
\Led_Disp1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[0]~output_o\);

-- Location: IOOBUF_X106_Y0_N2
\Led_Disp1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Led_Disp1[1]~output_o\);

-- Location: IOOBUF_X104_Y0_N23
\Led_Disp1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Led_Disp1[2]~output_o\);

-- Location: IOOBUF_X90_Y0_N2
\Led_Disp1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[3]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\Led_Disp1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[4]~output_o\);

-- Location: IOOBUF_X90_Y0_N9
\Led_Disp1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Led_Disp1[5]~output_o\);

-- Location: IOOBUF_X32_Y91_N2
\Led_Disp1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Led_Disp1[6]~output_o\);

-- Location: IOIBUF_X82_Y0_N15
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X88_Y0_N15
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N8
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X85_Y1_N8
\dec0|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux6~0_combout\ = (\SW[2]~input_o\ & (!\SW[0]~input_o\ & (\SW[3]~input_o\ $ (!\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y1_N18
\dec0|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux5~0_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)) # (!\SW[3]~input_o\ & (\SW[0]~input_o\ $ (\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y1_N20
\dec0|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux4~0_combout\ = (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[1]~input_o\)) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y1_N30
\dec0|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux3~0_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)) # (!\SW[3]~input_o\ & (\SW[0]~input_o\ $ (!\SW[1]~input_o\))))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux3~0_combout\);

-- Location: LCCOMB_X85_Y1_N24
\dec0|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux2~0_combout\ = (\SW[0]~input_o\) # ((\SW[2]~input_o\ & (\SW[3]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y1_N26
\dec0|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux1~0_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((!\SW[1]~input_o\))) # (!\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)) # (!\SW[3]~input_o\ & 
-- ((\SW[0]~input_o\) # (\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y1_N12
\dec0|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec0|Mux0~0_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((!\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec0|Mux0~0_combout\);

-- Location: LCCOMB_X85_Y1_N14
\Comp|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp|Mux0~0_combout\ = ((!\SW[2]~input_o\ & !\SW[1]~input_o\)) # (!\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Comp|Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

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


