LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seg7_decoder IS
PORT ( 
   C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END seg7_decoder;

ARCHITECTURE seg7_decoder_arch OF seg7_decoder IS
BEGIN
process(C)
	begin
		case C is
			when "00" =>   HEX0 <= "0011110";-- litera d
			when "01" =>   HEX0 <= "1111001";-- litera E
			when "10" =>   HEX0 <= "0000110";-- litera 1
			when "11" =>   HEX0 <= "0000000";-- pusty
         when others => HEX0 <= "0000001";-- blad  
		end case;
end process;
END seg7_decoder_arch;