LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity reset_routine is
	port(
		rst : in std_logic;
		clk_1khz : in std_logic;
		go : in std_logic;
		vivaz_RESET : out std_logic;
		done : out std_logic
	);
end reset_routine;

architecture beh_reset_routine of reset_routine is
-- reset is active low
type fsm_states is (idle, wait1, wait2, wait3);

signal vivaz_RESET_i : std_logic;
signal fsm_state_i : fsm_states;
signal done_i : std_logic;
signal start_i : std_logic;
signal counter : unsigned (5 downto 0);
begin


	process(go, clk_1khz, rst)
	begin

		
		if rising_edge(clk_1khz) then
			if rising_edge(go) then
				start_i <= '1';
			end if;
			
			counter <= counter + "000001";
		
			if (fsm_state_i = idle) and (start_i = '1') then
				done_i <= '0';
				counter <= "000000";
				fsm_state_i <= wait1;
			elsif fsm_state_i = wait1 then
				-- wait for 5ms
				if counter = "000101" then -- wait 5
					vivaz_RESET_i <= '1';	-- vivaz reset high
					counter <= "000000";
					fsm_state_i <= wait2;
				end if;
			elsif fsm_state_i = wait2 then
				if counter = "110010" then -- wait 50
					vivaz_RESET_i <= '0';	-- vivaz reset low
					counter <= "000000";
					fsm_state_i <= wait3;
				end if;
			elsif fsm_state_i = wait3 then
				if counter = "110010" then -- wait 50
					vivaz_RESET_i <= '1';	-- vivaz reset high
					done_i <= '1';
					start_i <= '0';
					fsm_state_i <= idle;
				end if;
			end if;
			
			
			
		end if;
			

		if rst = '1' then
			fsm_state_i <= idle;
			vivaz_RESET_i <= '1';
			done_i <= '1';
			start_i <= '0';
		end if;
		
	end process;
	

		
	vivaz_RESET <= vivaz_RESET_i;
	done <= done_i;
end architecture;