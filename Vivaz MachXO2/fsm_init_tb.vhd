
-- VHDL Test Bench Created from source file fsm_init.vhd -- Mon Aug 22 23:45:46 2016

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

	COMPONENT fsm_init
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		clk_1khz : IN std_logic;
		go : IN std_logic;
		status_setbacklight : IN std_logic;
		status_arbiter : IN std_logic;
		status_reset : IN std_logic;          
		start_setbacklight : OUT std_logic;
		percentage_setbacklight : OUT std_logic_vector(7 downto 0);
		start_passthrough : OUT std_logic;
		commanddata_passthrough : OUT std_logic;
		valueout_passthrough : OUT std_logic_vector(15 downto 0);
		start_reset : OUT std_logic;
		done : OUT std_logic
		);
	END COMPONENT;

	SIGNAL rst :  std_logic;
	SIGNAL clk :  std_logic;
	SIGNAL clk_1khz :  std_logic;
	SIGNAL go :  std_logic;
	SIGNAL status_setbacklight :  std_logic;
	SIGNAL status_arbiter :  std_logic;
	SIGNAL status_reset :  std_logic;
	SIGNAL start_setbacklight :  std_logic;
	SIGNAL percentage_setbacklight :  std_logic_vector(7 downto 0);
	SIGNAL start_passthrough :  std_logic;
	SIGNAL commanddata_passthrough :  std_logic;
	SIGNAL valueout_passthrough :  std_logic_vector(15 downto 0);
	SIGNAL start_reset :  std_logic;
	SIGNAL done :  std_logic;

BEGIN

-- Please check and add your generic clause manually
	uut: fsm_init PORT MAP(
		rst => rst,
		clk => clk,
		clk_1khz => clk_1khz,
		go => go,
		status_setbacklight => status_setbacklight,
		status_arbiter => status_arbiter,
		status_reset => status_reset,
		start_setbacklight => start_setbacklight,
		percentage_setbacklight => percentage_setbacklight,
		start_passthrough => start_passthrough,
		commanddata_passthrough => commanddata_passthrough,
		valueout_passthrough => valueout_passthrough,
		start_reset => start_reset,
		done => done
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
