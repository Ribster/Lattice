
-- VHDL Test Bench Created from source file main.vhd -- Wed May 18 15:00:58 2016

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

	COMPONENT main
	PORT(
		synch_rst : IN std_logic;       
		leds : INOUT std_logic_vector(7 downto 0);
		lcd_LCDBus : INOUT std_logic_vector(15 downto 0);
		lcd_wr : INOUT std_logic;
		lcd_reset : INOUT std_logic;
		lcd_rs : INOUT std_logic
		);
	END COMPONENT;

	SIGNAL leds :  std_logic_vector(7 downto 0);
	SIGNAL lcd_LCDBus :  std_logic_vector(15 downto 0);
	SIGNAL lcd_wr :  std_logic;
	SIGNAL lcd_reset :  std_logic;
	SIGNAL lcd_rs :  std_logic;
	SIGNAL synch_rst :  std_logic;

BEGIN

-- Please check and add your generic clause manually
	uut: main PORT MAP(
		leds => leds,
		lcd_LCDBus => lcd_LCDBus,
		lcd_wr => lcd_wr,
		lcd_reset => lcd_reset,
		lcd_rs => lcd_rs,
		synch_rst => synch_rst
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	  synch_rst <= '1';
	  wait for 1ms;
	  synch_rst <= '0';
	  wait for 15ms;
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
