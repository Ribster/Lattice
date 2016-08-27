LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity fillcolor is
	port(
		rst : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		status_execution : in std_logic;
		color565 : in std_logic_vector(15 downto 0);
		pixcount : in std_logic_vector(17 downto 0);
		
		commanddata: out std_logic;
		valueout : out std_logic_vector(15 downto 0);
		start : out std_logic;
		done : out std_logic
	);
end fillcolor;

architecture beh_fillcolor of fillcolor is
	type fsm_types is (idle, startup, t1, t2, endstate);
	signal fsm_state_i : fsm_types;
	
	signal start_i : std_logic;
	signal done_i : std_logic;
	signal executed_i : std_logic;
	signal executing_i : std_logic;
	signal go_i : std_logic;
	signal commanddata_i : std_logic;
	signal counter_i : unsigned(17 downto 0);
begin
	-- structure :
		-- command - set backlight control	(1)
		-- data - PWMON = 1					(2)
		-- data - dutycycle					(3)
		-- data - frequency					(4)
		-- data - smooth polarity			(5)
		
	process (clk, rst, go, status_execution)
	begin
		if rising_edge(clk) then
			if rising_edge(go) then
				start_i <= '1';
			end if;
			
			if (fsm_state_i = idle) and (start_i = '1') and (pixcount /= ("00" & X"0000")) then
				done_i <= '0';
				go_i <= '0';
				fsm_state_i <= startup;
			elsif (fsm_state_i = startup) then
				-- see if the arbiter is free to do stuff
				if status_execution = '1' then
					executed_i <= '0';
					fsm_state_i <= t1;
				end if;
			elsif fsm_state_i = t1 then
				if executed_i = '0' then
					if status_execution = '1' then
						-- arbiter ready to send
							valueout <= X"002C"; -- memory write register (1)
							commanddata_i <= '0'; -- command
							go_i <= '1'; -- start arbiter
							executing_i <= '0'; -- reset executing state
							executed_i <= '1'; -- did the execution step
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_execution = '0') then
							go_i <= '0'; -- get go signal low
							executing_i <= '1'; -- mark executing high
						end if;
					else
						-- arbiter is executing the command
							if (status_execution = '1') then
								-- next state
								executed_i <= '0';
								counter_i <= (others => '0');
								counter_i <= counter_i + "1"; -- pre iterate
								fsm_state_i <= t2;
							end if;
					end if;
				end if;
			elsif fsm_state_i = t2 then
				if executed_i = '0' then
					if status_execution = '1' then
						-- arbiter ready to send
							valueout <= color565; -- PWMON = 1 (2)
							commanddata_i <= '1'; -- data
							go_i <= '1'; -- start arbiter
							executing_i <= '0'; -- reset executing state
							executed_i <= '1'; -- did the execution step
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_execution = '0') then
							go_i <= '0'; -- get go signal low
							executing_i <= '1'; -- mark executing high
						end if;
					else
						-- arbiter is executing the command
							if (status_execution = '1') then
								-- iterate
								counter_i <= counter_i + "1";
								
								if counter_i = unsigned(pixcount) then
									executed_i <= '0';
									fsm_state_i <= endstate;
								else
									executed_i <= '0';
									fsm_state_i <= t2;
								end if;
							end if;
					end if;
				end if;
			elsif fsm_state_i = endstate then
				-- finishing up the fsm
				done_i <= '1';
				go_i <= '0';
				start_i <= '0';
				fsm_state_i <= idle;
				counter_i <= (others => '0');
			end if;
		end if;
	
		if rst = '1' then
			-- set defaults
			fsm_state_i <= idle;
			start_i <= '0';
			done_i <= '1';
			go_i <= '0';
			executed_i <= '0';
			executing_i <= '0';
			counter_i <= (others => '0');
		end if;
	end process;
	
	done <= done_i;
	start <= go_i;
	commanddata <= commanddata_i;
end architecture;