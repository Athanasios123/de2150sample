LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY A_4decoder IS
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END A_4decoder;

ARCHITECTURE A_4decoder_arch OF A_4decoder IS
BEGIN
process(C)
	begin
		case C is
			when "1010" =>   A <= "0000";-- 0
			when "1011" =>   A <= "0001";-- 1
			when "1100" =>   A <= "0010";-- 2
			when "1101" =>   A <= "0011";-- 3
			when "1110" =>   A <= "0100";-- 4
			when "1111" =>   A <= "0101";-- 5
         when others => A <= "0000";-- doesnt matter, only selected as output for C > 9 
		end case;
end process;
END A_4decoder_arch;