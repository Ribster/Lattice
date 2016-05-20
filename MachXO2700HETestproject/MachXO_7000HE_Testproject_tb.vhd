
-- VHDL Test Bench Created from source file lcd_FSM.vhd -- Thu May 19 14:09:35 2016

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

	COMPONENT lcd_FSM
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;          
		datacommand : in std_logic;
		data : in std_logic_vector(15 downto 0);
		debug : OUT std_logic;
		lcd_data : out std_logic_vector(15 downto 0);
		lcd_wr : out std_logic;
		lcd_rs : out std_logic
		);
	END COMPONENT;

	SIGNAL clk :  std_logic := '0';
	SIGNAL rst :  std_logic := '1';
	SIGNAL debug :  std_logic;
	SIGNAL lcd_data : std_logic_vector(15 downto 0);
	SIGNAL lcd_wr : std_logic;
	SIGNAL lcd_rs : std_logic;
	SIGNAL datacommand : std_logic;
	SIGNAL data : std_logic_vector(15 downto 0);

BEGIN

-- Please check and add your generic clause manually
	uut: lcd_FSM PORT MAP(
		clk => clk,
		rst => rst,
		debug => debug,
		lcd_data => lcd_data,
		lcd_wr => lcd_wr,
		lcd_rs => lcd_rs,
		datacommand => datacommand,
		data => data
	);
	
	clk <= not clk after 50ns;
	rst <= '0' after 1us;


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		data <= "0000000000000000";
		datacommand <= '0';
		wait for 2us;
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
