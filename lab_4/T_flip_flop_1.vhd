LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY T_flip_flop_1 IS
	PORT ( 
		T,Clk,Clear : IN STD_LOGIC;
		Q : OUT STD_LOGIC
	);
END T_flip_flop_1;
-- architecture digital circuit design
ARCHITECTURE Structure OF T_flip_flop_1 IS
SIGNAL pQ : STD_LOGIC = '0';
SIGNAL D : STD_LOGIC;
BEGIN
	D <= (NOT(T) AND pQ) OR (T AND NOT(pQ)); 
	pe_flip : D_PE_ff_AReset PORT MAP(D => D,Clk => Clk,Clear => Clear,Q => Q); -- write this flip flop with asynchronous reset
	pQ <= Q;
END Structure;
