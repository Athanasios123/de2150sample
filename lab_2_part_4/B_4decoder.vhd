LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY B_4decoder IS
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END B_4decoder;

ARCHITECTURE B_4decoder_arch OF B_4decoder IS
BEGIN
process(C)
	begin
		case C is
			when "0000" =>   B <= "0110";-- 6
			when "0001" =>   B <= "0111";-- 7
			when "0010" =>   B <= "1000";-- 8
			when "0011" =>   B <= "1001";-- 9
         when others => B <= "0000";-- doesnt matter, only selected as output for C > 15 
		end case;
end process;
END B_4decoder_arch;