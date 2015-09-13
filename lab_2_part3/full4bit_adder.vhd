LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full4bit_adder IS
PORT ( 
   SW : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cout : OUT STD_LOGIC;
	CC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END full4bit_adder;

ARCHITECTURE Behaviour OF full4bit_adder IS
COMPONENT full_adder 
PORT ( 
   A,B,Ci : IN STD_LOGIC;
	S,C0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL C13 : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	adder1 : full_adder PORT MAP(A => SW(0),B => SW(1),Ci => SW(8),S => S(0),C0 => C13(0));
	
	adder2 : full_adder PORT MAP(A => SW(2),B => SW(3),Ci => C13(0),S => S(1),C0 => C13(1));
	
	adder3 : full_adder PORT MAP(A => SW(4),B => SW(5),Ci => C13(1),S => S(2),C0 => C13(2));
	
	adder4 : full_adder PORT MAP(A => SW(6),B => SW(7),Ci => C13(2),S => S(3),C0 => Cout);
	CC <= C13;
	
END Behaviour;