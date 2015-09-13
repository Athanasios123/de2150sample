LIBRARY ieee;
USE ieee.std_logic_1164.all;
--main entity
ENTITY part5 IS
	PORT ( 
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);--slide 2 state switches
		LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);--switches state leds
		Led_Disp0, Led_Disp1, Led_Disp2 : OUT  STD_LOGIC_VECTOR(0 TO 6) -- 3 led displays declaration
	);
END part5;

--architecture of main component
ARCHITECTURE Behavior OF part5 IS
--new type declaration : decoder control sygnals
TYPE DEC_C IS ARRAY (0 to 2) OF STD_LOGIC_VECTOR(1 DOWNTO 0);

--mux component
COMPONENT mux3
	PORT ( 
		U,V,W,S: IN STD_LOGIC_VECTOR (1 DOWNTO 0);--UVW - 3 2bit input signals, S -2bit select signal
		M: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)--mux output
		);
END COMPONENT;
-- 7 seg decoder component
COMPONENT seg7_decoder
	PORT ( 
		C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);--2 bit decoder input
		HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)--7 bit led display output
		);
END COMPONENT;

SIGNAL M: DEC_C;

BEGIN
	-- 3 muxes : assigning lower level signals to current level signals
	--1 st mux : dE1
	U0: mux3 PORT MAP ( S => SW(9 DOWNTO 8) , U => SW(5 DOWNTO 4), V => SW(3 DOWNTO 2),
	W => SW(1 DOWNTO 0),M => M(0));
	--2 nd mux : E1d
	U1: mux3 PORT MAP ( S => SW(9 DOWNTO 8) , W => SW(5 DOWNTO 4), U => SW(3 DOWNTO 2),
	V => SW(1 DOWNTO 0),M => M(1));
	--3 rd mux : 1dE
	U2: mux3 PORT MAP ( S => SW(9 DOWNTO 8) , V => SW(5 DOWNTO 4), W => SW(3 DOWNTO 2),
	U => SW(1 DOWNTO 0),M => M(2));
	
	-- 3 led displays 
	H0: seg7_decoder PORT MAP (C => M(0), HEX0 => Led_Disp0);
	H1: seg7_decoder PORT MAP (C => M(1), HEX0 => Led_Disp1);
	H2: seg7_decoder PORT MAP (C => M(2), HEX0 => Led_Disp2);
	
	--SW leds assignment
	LEDR <= SW;
END Behavior;
