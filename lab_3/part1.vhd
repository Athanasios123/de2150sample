LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part1 IS
PORT ( 
	Clk, D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
);
END part1;

ARCHITECTURE Structural OF part1 IS

SIGNAL R_g, S_g, Qa, Qb,R : STD_LOGIC ;
ATTRIBUTE keep : boolean;
ATTRIBUTE keep of R_g, S_g, Qa, Qb,R : SIGNAL IS true;

BEGIN
R <= NOT(D);
R_g <= NOT(R AND CLK);
S_g <= NOT(D AND Clk);
Qa <= NOT (S_g AND Qb);
Qb <= NOT (R_g AND Qa);
Q <= Qa;
END Structural;