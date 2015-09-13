LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seg7_num_controller IS
PORT ( 
   SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Led_Disp0,Led_Disp1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	
	);
END seg7_num_controller;

ARCHITECTURE Behaviour OF seg7_num_controller IS

-- 7 seg controller
COMPONENT seg7_4decoder 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

BEGIN
		-- first led display
		H0 : seg7_4decoder PORT MAP(C => SW(7 DOWNTO 4),HEX => Led_Disp0);
		-- second led display
		H1 : seg7_4decoder PORT MAP(C => SW(3 DOWNTO 0),HEX => Led_Disp1);
		-- assign leds to switches
		LEDR <= SW;
END Behaviour;