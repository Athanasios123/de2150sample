Library ieee;
use ieee.std logic 1164.all;
use ieee.std logic arith.all;
use ieee.std logic signed.all;

ENTITY full4bit_adder2 IS
	GENERIC (
		n : INTEGER := 8;
	);
	PORT ( 
		A : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Clk,Reset,Add_Sub: IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Cout : OUT STD_LOGIC;
		);
END full4bit_adder2;

ARCHITECTURE Behaviour OF full4bit_adder2 IS
signal sum : std logic vector(n downto 0);
signal s_buff : std logic vector(n-1 downto 0) := "00000000";
signal ov_flow_buff : std logic;
BEGIN
	process(Clk,Reset,A,Add_Sub)
		begin
			if(Reset = '0') then
				sum <= (OTHERS => '0');
			else
				if(rising_edge(Clk)) then
					if(Add_Sub = '0') then
						sum <= ('0' & s_buff) + ('0'& A) ;
					else
						sum <= ('0' & s_buff) - ('0'& A) ;
					end if;
					ov_flow_buff <= sum(n);
					s_buff <= sum(n-1 DOWNTO 0);
				end if;
			end if;
	end process;
	
END Behaviour;