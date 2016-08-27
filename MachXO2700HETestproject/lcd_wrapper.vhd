LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity lcd_wrapper is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		lcd_bus		: inout std_logic_vector(15 downto 0);
		lcd_write	: out std_logic;
		lcd_reset	: out std_logic;
		lcd_rs		: out std_logic;
		go		: in std_logic;
		data1Command0 	: in std_logic;
		busy		: inout std_logic;
		payload		: in integer range 0 to 65535
	);
end lcd_wrapper;

architecture beh_lcd_wrapper of lcd_wrapper is
	signal go_managed: std_logic;

	COMPONENT lcd_sender
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		data1Command0 : IN std_logic;
		payload : in integer range 0 to 65535;   
		lcd_bus : INOUT std_logic_vector(15 downto 0);
		go : INOUT std_logic;      
		lcd_write : OUT std_logic;
		lcd_reset : OUT std_logic;
		lcd_rs : OUT std_logic;
		busy : inout std_logic
		);
	END COMPONENT;
begin

	sender: lcd_sender PORT MAP(
		clk => clk,
		rst => rst,
		lcd_bus => lcd_bus,
		lcd_write => lcd_write,
		lcd_reset => lcd_reset,
		lcd_rs => lcd_rs,
		go => go_managed,
		data1Command0 => data1Command0,
		busy => busy,
		payload => payload
	);
	
end beh_lcd_wrapper;
