
-- VHDL Test Bench Created from source file lcd_sender.vhd -- Fri May 20 11:40:50 2016

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
		command_data : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		go : IN std_logic;
		data_in : IN std_logic_vector(15 downto 0);          
		fsm_state : OUT std_logic_vector(1 downto 0);
		busy : OUT std_logic;
		lcd_wr : OUT std_logic;
		lcd_rs : OUT std_logic;
		data_out : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	SIGNAL command_data :  std_logic := '0';
	SIGNAL clk :  std_logic := '1';
	SIGNAL rst :  std_logic := '1';
	SIGNAL go :  std_logic := '0';
	SIGNAL data_in :  std_logic_vector(15 downto 0) := (others=>'0');
	SIGNAL fsm_state :  std_logic_vector(1 downto 0);
	SIGNAL busy :  std_logic;
	SIGNAL lcd_wr :  std_logic;
	SIGNAL lcd_rs :  std_logic;
	SIGNAL data_out :  std_logic_vector(15 downto 0);

BEGIN

-- Please check and add your generic clause manually
	uut: lcd_sender PORT MAP(
		command_data => command_data,
		clk => clk,
		rst => rst,
		go => go,
		data_in => data_in,
		fsm_state => fsm_state,
		busy => busy,
		lcd_wr => lcd_wr,
		lcd_rs => lcd_rs,
		data_out => data_out
	);

	clk <= not clk after 50ns;
	
	rst <= '0' after 80ns;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		wait for 280ns;
		go <= '1';
		data_in <= std_logic_vector(to_unsigned(5,16));
		wait for 50ns;
		go <= '0';
		wait for 450ns;
		go <= '1';
		command_data <= '1';
		data_in <= std_logic_vector(to_unsigned(80,16));
		wait for 50ns;
		go <= '0';
		wait for 500ns;
		go <= '1';
		command_data <= '0';
		data_in <= std_logic_vector(to_unsigned(5,16));
		wait for 700ns;
		go <= '0';
		wait for 450ns;
		go <= '1';
		command_data <= '1';
		data_in <= std_logic_vector(to_unsigned(80,16));
		wait for 700ns;
		go <= '0';
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
