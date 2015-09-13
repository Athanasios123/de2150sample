LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part5 IS
PORT ( 
	SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);--KEY 0 - CLK, KEY 1 - RESET
	Led_Disp0,Led_Disp1,Led_Disp2,Led_Disp3,Led_Disp4,Led_Disp5,Led_Disp6,Led_Disp7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
);
END part5;

ARCHITECTURE Behaviour OF part5 IS

-- rising_edge flip flop
COMPONENT D16bit_PE_flip_flop 
PORT ( 
	Clk : IN STD_LOGIC;--key 0 
	D16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);-- SW 15 - 0
	Reset : IN STD_LOGIC;-- key 1
	Q16 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)-- 4 7seg input A
);
END COMPONENT;

-- falling_edge flip flop
COMPONENT D16bit_NE_flip_flop 
PORT ( 
	Clk : IN STD_LOGIC;--key 0 
	D16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);-- SW 15 - 0
	Reset : IN STD_LOGIC; -- key 1
	Q16 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)-- 4 7seg input B - new value is being set during  high clk and saved when falling_edge of clk
);
END COMPONENT;

--7seg decoder
COMPONENT seg_7_hex_dec 
PORT ( 
   C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
-- a,b signal declaration
SIGNAL A,B : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN
	-- A signal is generated from pe flip flop
	A: D16bit_PE_flip_flop PORT MAP(Clk => KEY(0),D16 => SW,Reset =>KEY(1), Q16 => A);
	
	-- B signal is generated for, ne flip flop
	B: D16bit_NE_flip_flop PORT MAP(Clk => KEY(0),D16 => SW,Reset =>KEY(1), Q16 => B);
	
	--input A signal do 7-4 7 seg displays
	disp7 : seg_7_hex_dec PORT MAP(C => A(15 DOWNTO 12),HEX => Led_Disp7);
	disp6 : seg_7_hex_dec PORT MAP(C => A(11 DOWNTO 8),HEX => Led_Disp6);
	disp5 : seg_7_hex_dec PORT MAP(C => A(7 DOWNTO 4),HEX => Led_Disp5);
	disp4 : seg_7_hex_dec PORT MAP(C => A(3 DOWNTO 0),HEX => Led_Disp4);
	
	--input B signal to 3-0 7 seg displays
	disp3 : seg_7_hex_dec PORT MAP(C => B(15 DOWNTO 12),HEX => Led_Disp3);
	disp2 : seg_7_hex_dec PORT MAP(C => B(11 DOWNTO 8),HEX => Led_Disp2);
	disp1 : seg_7_hex_dec PORT MAP(C => B(7 DOWNTO 4),HEX => Led_Disp1);
	disp0 : seg_7_hex_dec PORT MAP(C => B(3 DOWNTO 0),HEX => Led_Disp0);
	
	
END Behaviour;