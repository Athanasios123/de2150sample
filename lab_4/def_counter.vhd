LIBRARY ieee;
USE ieee.std_logic_1164.all;
--main entity

ENTITY def_counter IS
PORT ( 
	Enable,Clk,Clear : IN STD_LOGIC;
	n_clkd : IN INTEGER range 0 to 50000000;
	Count : OUT INTEGER range 0 to 8
	);
END def_counter;

ARCHITECTURE Structure OF def_counter IS
SIGNAL cycle_buffer: INTEGER := 0;
SIGNAL def_clock : STD_LOGIC <= '0';
SIGNAL count_buffer : INTEGER := 0;

BEGIN
	process(Enable,Clk,Clear,count_buffer,cycle_buffer,def_clock,n_clkd)
		begin
			if(Clear = '0') then
				count_buffer := 0;
				cycle_buffer := 0;
			else
				if(Enable = '1') then
					if(rising_edge(Clk)) then
						if(cycle_buffer < n_clkd) then
							cycle_buffer := cycle_buffer + 1;
						else
							if(def_clock = '0') then -- if positive edge of clk - cycle buffer reaches n_clkd and def_clock previous value is 0
								if(count_buffer < 8) then 
									count_buffer := count_buffer + 1;
								else				
									count_buffer := 0;-- reset counter when it reaches 8
								end if;
							end if;
							def_clock <= NOT(def_clock);
							cycle_buffer :=  0;
						end if;
					end if;
				else
					count_buffer := 0;
				end if;
			end if;
			Count <= count_buffer;
	end process;

END Structure;

