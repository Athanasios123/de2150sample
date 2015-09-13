LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY T_flip_flop IS
	PORT ( 
		T,Clk,Clear : IN STD_LOGIC;
		Q : OUT STD_LOGIC
	);
END T_flip_flop;
-- architecture using sequential statements
ARCHITECTURE Structure OF T_flip_flop IS
SIGNAL pQ : STD_LOGIC = '1';
BEGIN
	process(T,Clk,Clear)
		begin
			if(Clear = '0') then	--asynchronous reset
				Q <= '0';
			else
				if(rising_edge(Clk)) then
					if(T = '1') then
						Q <= NOT(pQ);
					end if;
				end if;
			end if;
			pQ <= Q;		
	end process;
END Structure;
