LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_Gated_Latch IS
PORT ( 
	Clk, D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END D_Gated_Latch;

ARCHITECTURE Structural OF D_Gated_Latch IS
BEGIN
	process(D,Clk)
		begin
			if(Clk = '1') then
				Q <= D;
			end if;
	end process;
END Structural;