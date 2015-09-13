LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D16bit_PE_flip_flop IS
PORT ( 
	Clk : IN STD_LOGIC;--key 0 
	D16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);-- SW 15 - 0
	Reset : IN STD_LOGIC;-- key 1
	Q16 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)-- 4 7seg input A
);
END D16bit_PE_flip_flop;

ARCHITECTURE Structural OF D16bit_PE_flip_flop IS
BEGIN
	process(D,Clk,Reset)
		begin
			if(rising_edge(Reset)) then
				Q <= (others => '0');
			else
				if(rising_edge(Clk)) then
					Q16 <= D16;
				end if;
			end if;
	end process;
END Structural;