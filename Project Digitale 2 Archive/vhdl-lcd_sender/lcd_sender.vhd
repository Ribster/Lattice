LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity lcd_sender is
	port (
		-- INPUT
		command_data, clk, rst, go : in std_logic;
		data_in : in std_logic_vector(15 downto 0);
		
		-- INTERNAL
		fsm_state : out std_logic_vector(1 downto 0);
		
		-- OUTPUT
		busy, lcd_wr, lcd_rs : out std_logic;
		data_out : out std_logic_vector(15 downto 0)
	);
end lcd_sender;

architecture beh_lcd_sender of lcd_sender is
	type fsm_states is (idle, s1, s2, s3);
	signal fsm_state_ps_i : fsm_states := idle;
	shared variable last_go : std_logic;
begin
	-- BOTTOM PORTION
	process(clk, rst, fsm_state_ps_i, go)
	begin

	
	
		if rising_edge(clk) then
	
		case fsm_state_ps_i is
			when idle =>
				if go /= last_go and go = '1' then
					busy <= '1';
					data_out <= data_in;
					lcd_rs <= command_data;
					fsm_state_ps_i <= s1;
				end if;
				
				last_go := go;
			when s1 =>
				lcd_wr <= '1';
				fsm_state_ps_i <= s2;
			when s2 =>
				fsm_state_ps_i <= s3;
			when s3 =>
				busy <= '0';
				lcd_wr <= '0';
				fsm_state_ps_i <= idle;
		end case;
		
		end if;
		
		if rst = '1' then
			busy <= '0';
			lcd_wr <= '0';
			lcd_rs <= '0';
			data_out <= (others=>'0');
			fsm_state_ps_i <= idle;
			last_go := '0';
		end if;
	end process;
	-- INTERNAL OUTPUT
	process(fsm_state_ps_i)
	begin
		case fsm_state_ps_i is
			when idle =>
				fsm_state <= "00";
			when s1 =>
				fsm_state <= "01";
			when s2 =>
				fsm_state <= "10";
			when s3 =>
				fsm_state <= "11";
		end case;
	end process;
end architecture;