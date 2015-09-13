LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_PE_ff_AReset IS
	PORT ( 
		D,Clk,Clear : IN STD_LOGIC;
		Q : OUT STD_LOGIC
	);
END D_PE_ff_AReset;
-- architecture using sequential statements
ARCHITECTURE Structure OF D_PE_ff_AReset IS
BEGIN
	process(D,Clk,Clear)
		begin
			if(Clear = '0') then	--asynchronous reset
				Q <= '0';
			else
				if(rising_edge(Clk)) then
					Q <= D;
				end if;
			end if;		
	end process;
END Structure;
