LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY BCD_adder IS
PORT ( 
   SW : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	Led_Disp0,Led_Disp1,Led_Disp2,Led_Disp3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END BCD_adder;

ARCHITECTURE BCD_adder_arch OF BCD_adder IS

-- 4bit adder - outputs X+Y sum, where its 5 bit is Cout, S are its 4 less significant bits
COMPONENT full_4bit_adder
PORT ( 
   A4,B4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C_in : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cout : OUT STD_LOGIC
	);
END COMPONENT;

--bin2_dec - ouputs second digit M1 and one of mux inputs M0
COMPONENT bin_2dec 
PORT ( 
   In_4bit : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	M0,M1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

-- B circuit element - is outputed by mux when X+Y > 15
COMPONENT B_4decoder 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

--mux4_2 - 4 bit mux -> mux out is 7seg decoder input
COMPONENT mux4_2 
PORT ( 
   C0,C1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);--C0 - wejscie dla V <= 9, C1 V > 9
	Z: IN STD_LOGIC;
	M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT ;

--7seg decoder - one for each digit of X+Y sum
COMPONENT seg7_4decoder 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

--signals
	--X+Y sum MSB ->mux selector
	SIGNAL Cz : STD_LOGIC;
	--X+Y sum 4 less significant bits
	SIGNAL S4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- bin2_dec M0 output
	SIGNAL B_M0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	--mux B input
	SIGNAL B1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- first and second digit decoders inputs
	SIGNAL D1,D2,D2s : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	--main
	--add X and Y
	adder : full_4bit_adder PORT MAP(A4 => SW(7 DOWNTO 4),B4 => SW(3 DOWNTO 0),C_in =>SW(8),S => S4,Cout => Cz);
	-- input adder S to bin_2dec component
	bin: bin_2dec PORT MAP(In_4bit => S4,M0 => B_M0,M1 => D2s);
	-- B circuit
	Bcircuit : B_4decoder PORT MAP(C => S4,B => B1); 
	-- select between bin M0 and B circuit output
	mux : mux4_2 PORT MAP(C0 => B_M0,C1 => B1,Z => Cz,M => D1);
	--if Cz = 1
	D2 <= "0001" when Cz = '1' else 
			D2s when Cz= '0';
	-- display 1st number - sum
	digit1 : seg7_4decoder PORT MAP(C => D1,HEX => Led_Disp0);
	-- display 2nd number - sum
	digit2 : seg7_4decoder PORT MAP(C => D2,HEX => Led_Disp1);
	--input x 
	digit3 : seg7_4decoder PORT MAP(C => SW(7 DOWNTO 4),HEX => Led_Disp2);
	-- input y
	digit4 : seg7_4decoder PORT MAP(C => SW(3 DOWNTO 0),HEX => Led_Disp3);
	-- LEDS
	LEDR <= SW;
END BCD_adder_arch;