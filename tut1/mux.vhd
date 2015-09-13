LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
PORT ( 
	X,Y: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    S : IN STD_LOGIC;
	M: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END mux;

ARCHITECTURE mux_arch OF mux IS
BEGIN
process(X,Y,S)
begin
my_label : for I in 0 to 3 loop
	M(I) <= (NOT(S) AND X(I)) OR (S AND Y(I));	
end loop my_label;
end process;

END mux_arch;