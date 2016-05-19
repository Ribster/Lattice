LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity lcd_sender is
	port(
		clk						: in std_logic;
		rst						: in std_logic;
		en						: in std_logic;
		lcd_bus					: out std_logic_vector(15 downto 0);
		lcd_rs					: out std_logic;
		lcd_wr					: out std_logic;
		sender_busy				: out std_logic;
		sender_go				: in std_logic;
		sender_data1command0 	: in std_logic;
		sender_payload			: in std_logic_vector(15 downto 0)
	);
end lcd_sender;

architecture beh_lcd_sender of lcd_sender is

	type state_type is (idle, t10, t20, t30, t40, t50, t60);
	signal FSM_PS: state_type;

begin

	process(clk, en, rst)
	
	begin
		if en = '1' then
		
		if rising_edge(clk) then
			case FSM_PS is
				when idle =>
					if sender_go = '1' then
						lcd_wr <= '0';
						sender_busy <= '1';
						lcd_rs <= sender_data1command0;
						FSM_PS <= t10;
					else
						FSM_PS <= idle;
					end if;
				when t10 =>
					lcd_bus <= sender_payload;
					FSM_PS <= t20;
				when t20 =>
					lcd_wr <= '1';
					FSM_PS <= t30;
				when t30 =>
					FSM_PS <= t40;
				when t40 =>
					FSM_PS <= t50;
				when t50 =>
					FSM_PS <= t60;
				when t60 =>
					lcd_wr <= '0';
					sender_busy <= '0';
					FSM_PS <= idle;
				when others =>
					--busy <= '0';
					FSM_PS <= idle;
			end case;
		end if;

		if rst = '1' then
			sender_busy <= '0';
			lcd_bus <= "0000000000000000";
			lcd_wr <= '0';
			lcd_rs <= '0';
			FSM_PS <= idle;
		end if;
		
		end if;
	end process;
end beh_lcd_sender;