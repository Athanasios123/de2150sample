LIBRARY ieee;
USE ieee.std_logic_1164.all;
--main entity
ENTITY Hello_disp IS
PORT (
	Clk_50,Enable,Clear : IN STD_LOGIC; -- 50Mhz clock
	Led_Disp0,Led_Disp1,Led_Disp2,Led_Disp3,
	Led_Disp4,Led_Disp5,Led_Disp6,Led_Disp7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)-- counter display
	);
END Hello_disp;

--architecture of main component
ARCHITECTURE Behavior OF Hello_disp IS
--number of picks per second of 50Mhz clock
CONSTANT n_clk : INTEGER = 50000000;
CONSTANT freq : INTEGER = 1;--Hz
CONSTANT n_clkd = n_clk/2;-- number of pics per change of clock signal - 50% duty cycle 1 Hz
-- 7 seg decoder component
COMPONENT seg_7_hello_dec 
PORT ( 
	C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
--counter
COMPONENT def_counter 
PORT ( 
	Enable,Clk,Clear : IN STD_LOGIC;
	n_clkd : IN INTEGER;--user defines frequency in Hz
	Count : OUT INTEGER
	);
END COMPONENT;
SIGNAL C : INTEGER
SIGNAL Din is array(0 to 7) of INTEGER;
BEGIN
	process(Clk_50,Enable,Clear,n_clkd) -- write additional code for counter and 7seg decoder entities
		begin
		counter: def_counter PORT MAP(Enable => Enable,Clk => Clk_50,n_clkd => n_clkd,Count => C);
		Din(0) <= C;
		for i in 1 to 7 loop
			Din(i) <= Din(i - 1) + 1;
			if((Din(i) - 7) > 0) then
				Din(i) = Din(i) - 7;
			end if;
		end loop;
		--now input the shit to 7 seg hello decoder
		dec0 : seg_7_hex_dec PORT MAP(C => Din(0),Led_Disp0);
		dec1 : seg_7_hex_dec PORT MAP(C => Din(1),Led_Disp1);
		dec2 : seg_7_hex_dec PORT MAP(C => Din(2),Led_Disp2);
		dec3 : seg_7_hex_dec PORT MAP(C => Din(3),Led_Disp3);
		dec4 : seg_7_hex_dec PORT MAP(C => Din(4),Led_Disp4);
		dec5 : seg_7_hex_dec PORT MAP(C => Din(5),Led_Disp5);
		dec6 : seg_7_hex_dec PORT MAP(C => Din(6),Led_Disp6);
		dec7 : seg_7_hex_dec PORT MAP(C => Din(7),Led_Disp7);
	end process;
END Behavior;
