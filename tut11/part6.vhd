LIBRARY ieee;
USE ieee.std_logic_1164.all;
--main entity
ENTITY part6 IS
	PORT ( 
		SW : IN STD_LOGIC_VECTOR(14 DOWNTO 0);--slide 2 state switches
		LEDR : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);--switches state leds
		Led_Disp0, Led_Disp1, Led_Disp2, Led_Disp3, Led_Disp4, Led_Disp5 : OUT  STD_LOGIC_VECTOR(5 DOWNTO 0) -- 6 led displays declaration
	);
END part6;

--architecture of main component
ARCHITECTURE Behavior OF part6 IS
--new type declaration : decoder control sygnals
TYPE DEC_C IS ARRAY (0 to 5) OF STD_LOGIC_VECTOR(1 DOWNTO 0);

--mux component
COMPONENT mux6
	PORT ( 
		U,V,W,X,Y,Z: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		S : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		M: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
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
	-- 6 muxes : assigning lower level signals to current level signals
	--1 st mux : ---dE1
	U0: mux6 PORT MAP ( S => SW(14 DOWNTO 12) , X => SW(11 DOWNTO 10), Y => SW(9 DOWNTO 8),
	Z => SW(7 DOWNTO 6),U => SW(5 DOWNTO 4), V => SW(3 DOWNTO 2),
	W => SW(1 DOWNTO 0), M => M(0));
	--2 nd mux : --dE1-
	U1: mux6 PORT MAP ( S => SW(14 DOWNTO 12) , Y => SW(11 DOWNTO 10), Z => SW(9 DOWNTO 8),
	U => SW(7 DOWNTO 6),V => SW(5 DOWNTO 4), W => SW(3 DOWNTO 2),
	X => SW(1 DOWNTO 0), M => M(1));
	--3 rd mux : -dE1--
	U2: mux6 PORT MAP ( S => SW(14 DOWNTO 12) , Z => SW(11 DOWNTO 10), U => SW(9 DOWNTO 8),
	V => SW(7 DOWNTO 6),W => SW(5 DOWNTO 4), X => SW(3 DOWNTO 2),
	Y => SW(1 DOWNTO 0), M => M(2));
	--4 st mux : dE1---
	U3: mux6 PORT MAP ( S => SW(14 DOWNTO 12) , U => SW(11 DOWNTO 10), V => SW(9 DOWNTO 8),
	W => SW(7 DOWNTO 6),X => SW(5 DOWNTO 4), Y => SW(3 DOWNTO 2),
	Z => SW(1 DOWNTO 0), M => M(3));
	--5 nd mux : E1--d
	U4: mux6 PORT MAP ( S => SW(14 DOWNTO 12) , V => SW(11 DOWNTO 10), W => SW(9 DOWNTO 8),
	X => SW(7 DOWNTO 6),Y => SW(5 DOWNTO 4), Z => SW(3 DOWNTO 2),
	U => SW(1 DOWNTO 0), M => M(4));
	--6 rd mux : 1--Ed
	U5: mux6 PORT MAP ( S => SW(14 DOWNTO 12) , W => SW(11 DOWNTO 10), X => SW(9 DOWNTO 8),
	Y => SW(7 DOWNTO 6),Z => SW(5 DOWNTO 4), U => SW(3 DOWNTO 2),
	V => SW(1 DOWNTO 0), M => M(5));
	
	-- 3 led displays 
	H0: seg7_decoder PORT MAP (C => M(0), HEX0 => Led_Disp0);
	H1: seg7_decoder PORT MAP (C => M(1), HEX0 => Led_Disp1);
	H2: seg7_decoder PORT MAP (C => M(2), HEX0 => Led_Disp2);
	H3: seg7_decoder PORT MAP (C => M(3), HEX0 => Led_Disp3);
	H4: seg7_decoder PORT MAP (C => M(4), HEX0 => Led_Disp4);
	H5: seg7_decoder PORT MAP (C => M(5), HEX0 => Led_Disp5);
	
	--SW leds assignment
	LEDR <= SW;
END Behavior;
