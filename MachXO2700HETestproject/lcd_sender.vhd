LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity lcd_sender is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		lcd_bus		: out std_logic_vector(15 downto 0);
		lcd_write	: out std_logic;
		lcd_rs		: out std_logic;
		go		: in std_logic;
		data1Command0 	: in std_logic;
		busy		: inout std_logic;
		payload		: in integer range 0 to 65535
	);
end lcd_sender;

architecture beh_lcd_sender of lcd_sender is
	type state_type is (undefined, idle, t10, t20, t30, t40, t50, t60);
	signal PS_vivaz_state: state_type := undefined;
	
begin

	process(clk, rst, PS_vivaz_state, go, data1Command0, payload)
	begin
		
		if rst = '1' then
			busy <= '0';
			lcd_bus <= "0000000000000000";
			lcd_write <= '0';
			lcd_rs <= '0';
			PS_vivaz_state <= idle;
		elsif rising_edge(clk) then
			case PS_vivaz_state is
				when idle =>
					if go = '1' then
						lcd_write <= '0';
						busy <= '1';
						lcd_rs <= data1Command0;
						PS_vivaz_state <= t10;
					end if;
				when t10 =>
					lcd_bus <= std_logic_vector(to_unsigned(payload, 16));
					PS_vivaz_state <= t20;
				when t20 =>
					lcd_write <= '1';
					PS_vivaz_state <= t30;
				when t30 =>
					PS_vivaz_state <= t40;
				when t40 =>
					PS_vivaz_state <= t50;
				when t50 =>
					PS_vivaz_state <= t60;
				when t60 =>
					lcd_write <= '0';
					busy <= '0';
					PS_vivaz_state <= idle;
				when others =>
					PS_vivaz_state <= idle;
			end case;
		end if;
		


	end process;
	
end beh_lcd_sender;