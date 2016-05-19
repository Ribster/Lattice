
-- VHDL Test Bench Created from source file clk_div2.vhd -- Thu May 19 08:56:42 2016

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

	COMPONENT clk_div2
	PORT(
		clkin : IN std_logic;
		rst : IN std_logic;          
		clkout : OUT std_logic
		);
	END COMPONENT;

	SIGNAL clkout :  std_logic := '0';
	
	signal clk : std_logic := '0';
	signal reset : std_logic := '1';

BEGIN

	clk <= not clk after 50ns;
	reset <= '0' after 5ns;

-- Please check and add your generic clause manually
	uut: clk_div2 PORT MAP(
		clkin => clk,
		clkout => clkout,
		rst => reset
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN			  
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
