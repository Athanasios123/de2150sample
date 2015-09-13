
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DE2_115_Basic_Computer is

-------------------------------------------------------------------------------
--							 Port Declarations							 --
-------------------------------------------------------------------------------
port (
	-- Inputs
	CLOCK_50			: in std_logic;
	KEY				  	: in std_logic_vector (3 downto 0);
	SW				   	: in std_logic_vector (17 downto 0);

	--  Communication
	UART_RXD			: in std_logic;

	-- Bidirectionals
	GPIO				: inout std_logic_vector (35 downto 0);

	--  Memory (SRAM)
	SRAM_DQ				: inout std_logic_vector (15 downto 0);
	
	-- Memory (SDRAM)
	DRAM_DQ				: inout std_logic_vector (31 downto 0);
	
	-- Outputs
	--  Simple
	LEDG				: out std_logic_vector (8 downto 0);
	LEDR				: out std_logic_vector (17 downto 0);
	HEX0				: out std_logic_vector (6 downto 0);
	HEX1				: out std_logic_vector (6 downto 0);
	HEX2				: out std_logic_vector (6 downto 0);
	HEX3				: out std_logic_vector (6 downto 0);
	HEX4				: out std_logic_vector (6 downto 0);
	HEX5				: out std_logic_vector (6 downto 0);
	HEX6				: out std_logic_vector (6 downto 0);
	HEX7				: out std_logic_vector (6 downto 0);

	--  Memory (SRAM)
	SRAM_ADDR			: out std_logic_vector (19 downto 0);
	SRAM_CE_N			: out std_logic;
	SRAM_WE_N			: out std_logic;
	SRAM_OE_N			: out std_logic;
	SRAM_UB_N			: out std_logic;
	SRAM_LB_N			: out std_logic;

	--  Communication
	UART_TXD			: out std_logic;
	
	-- Memory (SDRAM)
	DRAM_ADDR			: out std_logic_vector (12 downto 0);
	DRAM_BA				: out std_logic_vector (1 downto 0);
	DRAM_CAS_N			: out std_logic;
	DRAM_RAS_N			: out std_logic;
	DRAM_CLK			: out std_logic;
	DRAM_CKE			: out std_logic;
	DRAM_CS_N			: out std_logic;
	DRAM_WE_N			: out std_logic;
	DRAM_DQM			: out std_logic_vector (3 downto 0)
	);
end DE2_115_Basic_Computer;


architecture DE2_115_Basic_Computer_rtl of DE2_115_Basic_Computer is

-------------------------------------------------------------------------------
--						   Subentity Declarations						  --
-------------------------------------------------------------------------------
	component nios_system
		port (
              -- 1) global signals:
                 signal clk : IN STD_LOGIC;
                 signal reset_n : IN STD_LOGIC;

              -- the_Expansion_JP5
                 signal GPIO_to_and_from_the_Expansion_JP5 : INOUT STD_LOGIC_VECTOR (31 DOWNTO 0);

              -- the_Green_LEDs
                 signal LEDG_from_the_Green_LEDs : OUT STD_LOGIC_VECTOR (8 DOWNTO 0);

              -- the_HEX3_HEX0
                 signal HEX0_from_the_HEX3_HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                 signal HEX1_from_the_HEX3_HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                 signal HEX2_from_the_HEX3_HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                 signal HEX3_from_the_HEX3_HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);

              -- the_HEX7_HEX4
                 signal HEX4_from_the_HEX7_HEX4 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                 signal HEX5_from_the_HEX7_HEX4 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                 signal HEX6_from_the_HEX7_HEX4 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
                 signal HEX7_from_the_HEX7_HEX4 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);

              -- the_Pushbuttons
                 signal KEY_to_the_Pushbuttons : IN STD_LOGIC_VECTOR (3 DOWNTO 0);

              -- the_Red_LEDs
                 signal LEDR_from_the_Red_LEDs : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);

              -- the_SDRAM
                 signal zs_addr_from_the_SDRAM : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);
                 signal zs_ba_from_the_SDRAM : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal zs_cas_n_from_the_SDRAM : OUT STD_LOGIC;
                 signal zs_cke_from_the_SDRAM : OUT STD_LOGIC;
                 signal zs_cs_n_from_the_SDRAM : OUT STD_LOGIC;
                 signal zs_dq_to_and_from_the_SDRAM : INOUT STD_LOGIC_VECTOR (31 DOWNTO 0);
                 signal zs_dqm_from_the_SDRAM : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
                 signal zs_ras_n_from_the_SDRAM : OUT STD_LOGIC;
                 signal zs_we_n_from_the_SDRAM : OUT STD_LOGIC;

              -- the_SRAM
                 signal SRAM_ADDR_from_the_SRAM : OUT STD_LOGIC_VECTOR (19 DOWNTO 0);
                 signal SRAM_CE_N_from_the_SRAM : OUT STD_LOGIC;
                 signal SRAM_DQ_to_and_from_the_SRAM : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
                 signal SRAM_LB_N_from_the_SRAM : OUT STD_LOGIC;
                 signal SRAM_OE_N_from_the_SRAM : OUT STD_LOGIC;
                 signal SRAM_UB_N_from_the_SRAM : OUT STD_LOGIC;
                 signal SRAM_WE_N_from_the_SRAM : OUT STD_LOGIC;

              -- the_Serial_Port
                 signal UART_RXD_to_the_Serial_Port : IN STD_LOGIC;
                 signal UART_TXD_from_the_Serial_Port : OUT STD_LOGIC;

              -- the_Slider_Switches
                 signal SW_to_the_Slider_Switches : IN STD_LOGIC_VECTOR (17 DOWNTO 0)
			  );
	end component;
	
	component sdram_pll
		port (
				 signal inclk0 : IN STD_LOGIC;
				 signal c0 : OUT STD_LOGIC;
				 signal c1 : OUT STD_LOGIC
			 );
	end component;
	
-------------------------------------------------------------------------------
--						   Parameter Declarations						  --
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--				 Internal Wires and Registers Declarations				 --
-------------------------------------------------------------------------------
-- Internal Wires
-- Used to connect the Nios 2 system clock to the non-shifted output of the PLL
signal			 system_clock : STD_LOGIC;

-- Internal Registers

-- State Machine Registers

begin

-------------------------------------------------------------------------------
--						 Finite State Machine(s)						   --
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--							 Sequential Logic							  --
-------------------------------------------------------------------------------
	
-------------------------------------------------------------------------------
--							Combinational Logic							--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--							  Internal Modules							 --
-------------------------------------------------------------------------------



NiosII : nios_system
	port map(
		-- 1) global signals:
		clk	   									=> CLOCK_50,
		reset_n									=> KEY(0),
	
		-- the_Expansion_JP5
		GPIO_to_and_from_the_Expansion_JP5(0)	=> GPIO(1),
		GPIO_to_and_from_the_Expansion_JP5(13 downto 1)	
												=> GPIO(15 downto 3),
		GPIO_to_and_from_the_Expansion_JP5(14)	=> GPIO(17),
		GPIO_to_and_from_the_Expansion_JP5(31 downto 15)	
												=> GPIO(35 downto 19),

		-- the_Green_LEDs
		LEDG_from_the_Green_LEDs 				=> LEDG,
		
		-- the_HEX3_HEX0
		HEX0_from_the_HEX3_HEX0 				=> HEX0,
		HEX1_from_the_HEX3_HEX0 				=> HEX1,
		HEX2_from_the_HEX3_HEX0 				=> HEX2,
		HEX3_from_the_HEX3_HEX0 				=> HEX3,
		
		-- the_HEX7_HEX4
		HEX4_from_the_HEX7_HEX4 				=> HEX4,
		HEX5_from_the_HEX7_HEX4					=> HEX5,
		HEX6_from_the_HEX7_HEX4					=> HEX6,
		HEX7_from_the_HEX7_HEX4					=> HEX7,
		
		-- the_Pushbuttons
		KEY_to_the_Pushbuttons					=> (KEY(3 downto 1) & "1"),

		-- the_Red_LEDs
		LEDR_from_the_Red_LEDs 					=> LEDR,
		
		-- the_SDRAM
		zs_addr_from_the_sdram					=> DRAM_ADDR,
		zs_ba_from_the_sdram					=> DRAM_BA,
		zs_cas_n_from_the_sdram					=> DRAM_CAS_N,
		zs_cke_from_the_sdram					=> DRAM_CKE,
		zs_cs_n_from_the_sdram					=> DRAM_CS_N,
		zs_dq_to_and_from_the_sdram				=> DRAM_DQ,
		zs_dqm_from_the_sdram					=> DRAM_DQM,
		zs_ras_n_from_the_sdram					=> DRAM_RAS_N,
		zs_we_n_from_the_sdram					=> DRAM_WE_N,
		
		-- the_SRAM
		SRAM_ADDR_from_the_SRAM					=> SRAM_ADDR,
		SRAM_CE_N_from_the_SRAM					=> SRAM_CE_N,
		SRAM_DQ_to_and_from_the_SRAM			=> SRAM_DQ,
		SRAM_LB_N_from_the_SRAM					=> SRAM_LB_N,
		SRAM_OE_N_from_the_SRAM					=> SRAM_OE_N,
		SRAM_UB_N_from_the_SRAM 				=> SRAM_UB_N,
		SRAM_WE_N_from_the_SRAM 				=> SRAM_WE_N,
		
		-- the_Serial_port
		UART_RXD_to_the_Serial_port				=> UART_RXD,
		UART_TXD_from_the_Serial_port			=> UART_TXD,
		
		-- the_Slider_switches
		SW_to_the_Slider_switches				=> SW
	);
	
neg_3ns : sdram_pll
	port map (
		inclk0									=> CLOCK_50,
		c0										=> DRAM_CLK,
		c1										=> system_clock
	);

end DE2_115_Basic_Computer_rtl;

