LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_4bit_adder IS
PORT ( 
   A4,B4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C_in : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cout : OUT STD_LOGIC
	);
END full_4bit_adder;

ARCHITECTURE full_4bit_adder_arch OF full_4bit_adder IS
COMPONENT full_adder 
PORT ( 
   A,B,Ci : IN STD_LOGIC;
	S,C0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL C13 : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	adder1 : full_adder PORT MAP(A => A4(0),B => B4(0),Ci => C_in,S => S(0),C0 => C13(0));
	
	adder2 : full_adder PORT MAP(A => A4(1),B => B4(1),Ci => C13(0),S => S(1),C0 => C13(1));
	
	adder3 : full_adder PORT MAP(A => A4(2),B => B4(2),Ci => C13(1),S => S(2),C0 => C13(2));
	
	adder4 : full_adder PORT MAP(A => A4(3),B => B4(3),Ci => C13(2),S => S(3),C0 => Cout);
	
END full_4bit_adder_arch;