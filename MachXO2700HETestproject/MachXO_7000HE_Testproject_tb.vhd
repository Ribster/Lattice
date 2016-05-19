
-- VHDL Test Bench Created from source file lcd_sender.vhd -- Wed May 18 14:02:54 2016

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

	COMPONENT lcd_sender
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		go : IN std_logic;
		data1Command0 : IN std_logic;
		payload : IN std_logic_vector(15 downto 0);    
		lcd_bus : INOUT std_logic_vector(15 downto 0);
		busy : INOUT std_logic;      
		lcd_write : OUT std_logic;
		lcd_rs : OUT std_logic
		);
	END COMPONENT;

	SIGNAL rst :  std_logic;
	SIGNAL lcd_bus :  std_logic_vector(15 downto 0);
	SIGNAL lcd_write :  std_logic;
	SIGNAL lcd_rs :  std_logic;
	SIGNAL go :  std_logic;
	SIGNAL data1Command0 :  std_logic;
	SIGNAL busy :  std_logic;
	SIGNAL payload :  std_logic_vector(15 downto 0);
	
	
	signal clk_sig: std_logic := '0';

BEGIN

-- Please check and add your generic clause manually
	uut: lcd_sender PORT MAP(
		clk => clk_sig,
		rst => rst,
		lcd_bus => lcd_bus,
		lcd_write => lcd_write,
		lcd_rs => lcd_rs,
		go => go,
		data1Command0 => data1Command0,
		busy => busy,
		payload => payload
	);

	clk_sig <= not clk_sig after 500us;
	

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
    go <= '0';
	wait for 1ms; 
	rst <= '1';
	wait for 1ms;
	rst <= '0';
	wait for 1ms;
	payload <= std_logic_vector(to_unsigned(5,16));
	data1Command0 <= '1';
	wait for 1ms;
	go <= '1';
	wait for 1ms;  
	go <= '0';
	wait for 1ms;
	wait;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
