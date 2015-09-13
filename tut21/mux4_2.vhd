LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4_2 IS
PORT ( 
   C0,C1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);--C0 - wejscie dla V <=9, C1 V > 9
	Z: IN STD_LOGIC;
	M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END mux4_2 ;

ARCHITECTURE mux4_2_arch OF mux4_2  IS
BEGIN
	M <= C0 when Z = '0' else 
	 C1 when Z = '1';	 
END mux4_2_arch;