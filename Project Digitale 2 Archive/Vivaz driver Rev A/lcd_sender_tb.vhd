
-- VHDL Test Bench Created from source file lcd_sender.vhd -- Wed May 18 20:42:23 2016

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
		en : IN std_logic;
		sender_go : IN std_logic;
		sender_data1command0 : IN std_logic;
		sender_payload : IN std_logic_vector(15 downto 0);          
		lcd_bus : OUT std_logic_vector(15 downto 0);
		lcd_rs : OUT std_logic;
		lcd_wr : OUT std_logic;
		sender_busy : OUT std_logic
		);
	END COMPONENT;

	SIGNAL clk :  std_logic;
	SIGNAL rst :  std_logic;
	SIGNAL en :  std_logic;
	SIGNAL lcd_bus :  std_logic_vector(15 downto 0);
	SIGNAL lcd_rs :  std_logic;
	SIGNAL lcd_wr :  std_logic;
	SIGNAL sender_busy :  std_logic;
	SIGNAL sender_go :  std_logic;
	SIGNAL sender_data1command0 :  std_logic;
	SIGNAL sender_payload :  std_logic_vector(15 downto 0);

BEGIN

-- Please check and add your generic clause manually
	uut: lcd_sender PORT MAP(
		clk => clk,
		rst => rst,
		en => en,
		lcd_bus => lcd_bus,
		lcd_rs => lcd_rs,
		lcd_wr => lcd_wr,
		sender_busy => sender_busy,
		sender_go => sender_go,
		sender_data1command0 => sender_data1command0,
		sender_payload => sender_payload
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
