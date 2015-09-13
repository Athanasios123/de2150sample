LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder IS
PORT ( 
   A,B,Ci : IN STD_LOGIC;
	S,C0 : OUT STD_LOGIC
	);
END full_adder;

ARCHITECTURE full_adder_arch OF full_adder IS
SIGNAL X : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	Y(2) <= B;
	Y(1) <= A;
	Y(0) <= Ci;
	X <= "00" when Y = "000" else 
	 "01" when Y = "001" else 
	 "01" when Y = "010" else 
	 "10" when Y = "011" else 
	 "01" when Y = "100" else 
	 "10" when Y = "101" else 
	 "10" when Y = "110" else 
	 "11" when Y = "111";
	 C0 <= X(1);
	 S <= X(0);
END full_adder_arch;