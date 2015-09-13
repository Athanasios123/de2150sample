LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_PE_flip_flop IS
PORT ( 
	Clk, D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END D_PE_flip_flop;

ARCHITECTURE Structural OF D_PE_flip_flop IS
BEGIN
	process(D,Clk)
		begin
			if(rising_edge(Clk)) then
				Q <= D;
			end if;
	end process;
END Structural;