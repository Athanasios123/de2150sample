Library ieee;
use ieee.std logic 1164.all;
use ieee.std logic arith.all;
use ieee.std logic signed.all;

ENTITY nbit_adder IS
	GENERIC (
		n : INTEGER := 4;
	);
	PORT ( 
		A,B: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Cout : OUT STD_LOGIC;
		);
END nbit_adder;

ARCHITECTURE Behaviour OF nbit_adder IS
signal sum : std logic vector(n downto 0);
BEGIN
	process(A,B,sum)
		begin
			sum <= ('0' & B) + ('0'& A) ;	
	end process;
	Cout = sum(n);
	S = sum(n-1 DOWNTO 0 );
END Behaviour;