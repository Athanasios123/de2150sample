LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bin2dec IS
PORT ( 
   SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Led_Disp0,Led_Disp1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	
	);
END bin2dec;

ARCHITECTURE Behaviour OF bin2dec IS

-- 7 seg controller
COMPONENT seg7_4decoder 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
-- A vector element
COMPONENT A_4decoder 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
--comparator
COMPONENT comparator 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;
--mux4_2
COMPONENT mux4_2 
PORT ( 
   C0,C1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);--C0 - wejscie dla V <= 9, C1 V > 9
	Z: IN STD_LOGIC;
	M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT ;
-- 2 state mux
COMPONENT mux2state 
PORT ( 
   Z : IN STD_LOGIC;
	M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
--signals
	--mux selector
	SIGNAL S : STD_LOGIC;
	--mux A input
	SIGNAL A1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- mux outputs
	SIGNAL M0,M1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	--main
				--use comparator to check if SW > 9 and set S value
				Comp : comparator PORT MAP(C => SW,Z => S);
				
				-- create A mux input
				A : A_4decoder PORT MAP(C => SW,A => A1);
				
				-- generete mux ouput by giving S and selecting between A and SW
				Mux4: mux4_2 PORT MAP(C0 => SW,C1 => A1,Z => S,M => M0);
				
				-- generete mux ouput by giving S and selecting between 0 and 1
				Mux2: mux2state PORT MAP(Z => S,M => M1);
				
				-- get 7seg decoder response for 1-st display - 1st digit
				dec0: seg7_4decoder PORT MAP(C => M0,HEX => Led_Disp0);
				
				-- get 7seg decoder response for 2-nd display - 2nd digit
				dec1: seg7_4decoder PORT MAP(C => M1,HEX => Led_Disp1);
				
				-- assign leds to switches
				LEDR <= SW;
END Behaviour;