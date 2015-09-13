LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2state IS
PORT ( 
   Z : IN STD_LOGIC;
	M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END mux2state;

ARCHITECTURE mux2state_arch OF mux2state IS
BEGIN
process(Z)
	begin
		case Z is
			when '0' =>   M <= "0000";-- 0
			when '1' =>   M <= "0001";-- 1
         when others => M <= "1111";-- disp off
		end case;
end process;
END mux2state_arch;