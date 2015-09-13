LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part2 IS
PORT ( 
	Clk, D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END part2;

ARCHITECTURE Behaviour OF part2 IS
COMPONENT part1
PORT ( 
	Clk, D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END COMPONENT;
SIGNAL Qm : STD_LOGIC;
BEGIN
	master: part1 PORT MAP(Clk => Clk,D => D, Q => Qm);
	slave: part1 PORT MAP(Clk => Clk,D => Qm, Q => Q);
END Behaviour;