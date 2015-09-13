LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seg7_4decoder IS
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END seg7_4decoder;

ARCHITECTURE seg7_4decoder_arch OF seg7_4decoder IS
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
BEGIN
process(C,HEX0)
	begin
		case C is
			when "0000" =>   HEX0 <= "0111111";-- 0
			when "0001" =>   HEX0 <= "0000110";-- 1
			when "0010" =>   HEX0 <= "1011011";-- 2
			when "0011" =>   HEX0 <= "1001111";-- 3
			when "0100" =>   HEX0 <= "1100110";-- 4
			when "0101" =>   HEX0 <= "1101101";-- 5
			when "0110" =>   HEX0 <= "1111101";-- 6
			when "0111" =>   HEX0 <= "0000111";-- 7
			when "1000" =>   HEX0 <= "1111111";-- 8
			when "1001" =>   HEX0 <= "1101111";-- 9
         when others => HEX0 <= "0000000";-- others disp off 
		end case;
		HEX <= NOT(HEX0);
end process;
END seg7_4decoder_arch;