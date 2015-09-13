LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_NE_flip_flop IS
PORT ( 
	Clk, D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END D_NE_flip_flop;

ARCHITECTURE Structural OF D_NE_flip_flop IS
BEGIN
	process(D,Clk)
		begin
			if(falling_edge(Clk)) then
				Q <= D;
			end if;
	end process;
END Structural;