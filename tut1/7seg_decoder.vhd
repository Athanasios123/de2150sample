LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY 7seg_decoder IS
PORT ( 
   S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
END 7seg_decoder;

ARCHITECTURE Behaviour OF 7seg_decoder IS
BEGIN
	case S is
		when "00" =>   HEX0 <= '0011110';-- litera d
		when "01" =>   HEX0 <= '1111001';-- litera E
		when "10" =>   HEX0 <= '0000110';-- litera 1
		when "11" =>   HEX0 <= '0000000';-- pusty
	end case;
END Behaviour;