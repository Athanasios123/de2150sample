LIBRARY ieee;
use ieee.std logic 1164.all;
use ieee.std logic arith.all;
use ieee.std logic signed.all;

ENTITY multiplier IS
PORT ( 
   a,b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	p : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	);
END multiplier;

ARCHITECTURE Behaviour OF multiplier IS
COMPONENT nbit_adder 
	GENERIC (
		n : INTEGER := 4;
	);
	PORT ( 
		A,B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Cout : OUT STD_LOGIC;
		);
END COMPONENT;
-- 
type A_array is array (3 downto 0, 3 downto 0) of STD_LOGIC;
type B_array is array (2 downto 0, 4 downto 0) of STD_LOGIC;
signal A : A_array;
signal B : B_array;
signal S : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	process(a,b,A,B,S)
		begin
			for I in 0 to 3 loop
				for J in 0 to 3 loop
					A(I,J) <= b(I) AND a(J)
				end loop;
			end loop;
			-- first 2 numbers multiplication addition
			adder0 : nbit_adder 
			GENERIC MAP( n => 4 )
			PORT MAP adder0(A => A(0),B => A(1),S => B(0,3 DOWNTO 0),C0 => B(0,4));
			-- 3rd a multiplication and result of adder0 addition
			adder1 : nbit_adder 
			GENERIC MAP( n => 4 )
			PORT MAP adder1(A => A(2),B => B(0,4 DOWNTO 1),S => B(1,3 DOWNTO 0),C0 => B(1,4));
			-- 4th a multiplication and result of adder1 addition
			adder2 : nbit_adder 
			GENERIC MAP( n => 4 )
			PORT MAP adder2(A => A(3),B => B(1,4 DOWNTO 1),S => B(2,3 DOWNTO 0),C0 => B(2,4));
	end process;	
	p(0) <= A(0,0);--a0b0
	p(1) <= B(0,0);--a1b0 + a0b1
	p(2) <= B(1,0);
	p(7 DOWNTO 3) <= B(2,4 DOWNTO 0);
	
END Behaviour;