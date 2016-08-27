
-- VHDL Test Bench Created from source file top.vhd -- Tue Aug 23 15:31:25 2016

--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
-- 3) VHDL simulations will produce errors if there are Lattice FPGA library 
-- elements in your design that require the instantiation of GSR, PUR, and
-- TSALL and they are not present in the testbench. For more information see
-- the How To section of online help.  
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT top
	PORT(
		pb1 : IN std_logic;
		pb2 : IN std_logic;
		main_reset : IN std_logic;
		vivaz_TE : IN std_logic;          
		led30 : OUT std_logic_vector(3 downto 0);
		led67 : OUT std_logic_vector(1 downto 0);
		CH1 : OUT std_logic;
		CH2 : OUT std_logic;
		CH3 : OUT std_logic;
		CH4 : OUT std_logic;
		vivaz_RS : OUT std_logic;
		vivaz_RESET : OUT std_logic;
		vivaz_WR : OUT std_logic;
		vivaz_D015 : OUT std_logic_vector(15 downto 0);
		tb_clk : in STD_LOGIC
		);
	END COMPONENT;

	SIGNAL pb1 :  std_logic := '1';
	SIGNAL pb2 :  std_logic := '1';
	SIGNAL main_reset :  std_logic := '1';
	SIGNAL led30 :  std_logic_vector(3 downto 0);
	SIGNAL led67 :  std_logic_vector(1 downto 0);
	SIGNAL CH1 :  std_logic;
	SIGNAL CH2 :  std_logic;
	SIGNAL CH3 :  std_logic;
	SIGNAL CH4 :  std_logic;
	SIGNAL vivaz_TE :  std_logic;
	SIGNAL vivaz_RS :  std_logic;
	SIGNAL vivaz_RESET :  std_logic;
	SIGNAL vivaz_WR :  std_logic;
	SIGNAL vivaz_D015 :  std_logic_vector(15 downto 0);
	
    signal clk: std_logic := '1';
	

BEGIN

-- Please check and add your generic clause manually
	uut: top PORT MAP(
		pb1 => pb1,
		pb2 => pb2,
		main_reset => main_reset,
		led30 => led30,
		led67 => led67,
		CH1 => CH1,
		CH2 => CH2,
		CH3 => CH3,
		CH4 => CH4,
		vivaz_TE => vivaz_TE,
		vivaz_RS => vivaz_RS,
		vivaz_RESET => vivaz_RESET,
		vivaz_WR => vivaz_WR,
		vivaz_D015 => vivaz_D015,
		tb_clk => clk
	);
	clk <= not clk after 100ns;
	
	main_reset <= '0' after 200ns;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	  wait for 600ns;
	  pb1 <= '0';
	  wait for 600ns;
	  pb1 <= '1';	   
	  wait for 600ns;
	  pb1 <= '0';
	  wait;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
