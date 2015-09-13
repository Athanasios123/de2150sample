LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux3 IS
PORT ( 
	U,V,W,S: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	M: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
END mux3;

ARCHITECTURE mux3_arch OF mux3 IS
BEGIN
process(U,V,W,S)
	variable M0 : STD_LOGIC_VECTOR (1 DOWNTO 0);
	begin
		mux0_loop : for I in 0 to 1 loop
			M0(I) := (NOT(S(0)) AND U(I)) OR (S(0) AND V(I));	
		end loop mux0_loop;
	
		mux1_loop : for I in 0 to 1 loop
			M(I) <= (NOT(S(1)) AND M0(I)) OR (S(1) AND W(I));	
		end loop mux1_loop;

end process;
END mux3_arch;