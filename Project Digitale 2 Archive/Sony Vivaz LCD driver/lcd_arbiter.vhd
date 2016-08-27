LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity lcd_arbiter is
	port (
		clk		: in std_logic;
		rst		: in std_logic;
		go		: out std_logic;
		lcd_reset : out std_logic;
		enable	: in std_logic
	);
end lcd_arbiter;

architecture beh_lcd_arbiter of lcd_arbiter is
	type arbiter_state is (idle, s1, s2, s3, s4, s5, s6);
	signal PS_arbiter_state : arbiter_state := idle;
	signal NS_arbiter_state : arbiter_state := idle;
begin
	process(clk, rst, enable)
	begin
		if enable = '1' then
			if rising_edge(clk) then
				PS_arbiter_state <= NS_arbiter_state;
			end if;
			
			if rst = '1' then
				PS_arbiter_state <= idle;
			end if;
		end if;
	end process;
	
	process(PS_arbiter_state, rst, enable)
	begin
		if enable = '1' then
		case PS_arbiter_state is
			when idle =>
				NS_arbiter_state <= s1;
			when s1 =>
				go <= '1';
				NS_arbiter_state <= s2;
			when s2 =>
				NS_arbiter_state <= s2;
			when s3 =>
				NS_arbiter_state <= s2;
			when s4 =>
				NS_arbiter_state <= s2;
			when s5 =>
				NS_arbiter_state <= s2;
			when s6 =>
				NS_arbiter_state <= idle;
		end case;
		
		if rst = '1' then
			NS_arbiter_state <= idle;
		end if;
		end if;
	end process;
end beh_lcd_arbiter;