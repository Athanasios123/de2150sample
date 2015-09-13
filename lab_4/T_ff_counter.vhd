LIBRARY ieee;
USE ieee.std_logic_1164.all;
--main entity
ENTITY T_ff_counter IS
	Enable,Clk,Clear : IN STD_LOGIC; -- enable,Clear - SW0..1,Clk - Key0
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- 8 bit counter -> LEDR0..7
	Led_Disp0,Led_Disp1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);-- counter display
END T_ff_counter;

--architecture of main component
ARCHITECTURE Behavior OF T_ff_counter IS
--t flip flop component
COMPONENT T_flip_flop 
	PORT ( 
		T,Clk,Clear : IN STD_LOGIC;
		Q : OUT STD_LOGIC
	);
END COMPONENT;
-- 7 seg decoder component
COMPONENT seg_7_hex_dec 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL En : STD_LOGIC_VECTOR(6 DOWNTO 0);
BEGIN
	--whole fucking thing - 8 bit output counter -> counts clocks positive edges
	tflip0 : T_flip_flop PORT MAP(T => Enable,Clk => Clk,Clear => Clear,Q =>Q(0));
	En(0) = Q(0) AND Enable;
	tflip1 : T_flip_flop PORT MAP(T => En(0),Clk => Clk,Clear => Clear,Q =>Q(1));
	En(1) = Q(1) AND En(0);
	tflip2 : T_flip_flop PORT MAP(T => En(1),Clk => Clk,Clear => Clear,Q =>Q(2));
	En(2) = Q(2) AND En(1);
	tflip3 : T_flip_flop PORT MAP(T => En(2),Clk => Clk,Clear => Clear,Q =>Q(3));
	En(3) = Q(3) AND En(2);
	tflip4 : T_flip_flop PORT MAP(T => En(3),Clk => Clk,Clear => Clear,Q =>Q(4));
	En(4) = Q(4) AND En(3);
	tflip4 : T_flip_flop PORT MAP(T => En(4),Clk => Clk,Clear => Clear,Q =>Q(5));
	En(5) = Q(5) AND En(4);
	tflip4 : T_flip_flop PORT MAP(T => En(5),Clk => Clk,Clear => Clear,Q =>Q(6));
	En(6) = Q(6) AND En(5);
	tflip4 : T_flip_flop PORT MAP(T => En(6),Clk => Clk,Clear => Clear,Q =>Q(7));
	
	--now input the shit to 7 seg hex decoder
	dec0 : seg_7_hex_dec PORT MAP(C => Q(3 DOWNTO 0),Led_Disp0);
	dec1 : seg_7_hex_dec PORT MAP(C => Q(7 DOWNTO 4),Led_Disp1);
END Behavior;
