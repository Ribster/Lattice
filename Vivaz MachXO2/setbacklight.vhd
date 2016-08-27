LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity setbacklight is
	port(
		rst : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		status_execution : in std_logic;
		percentage : in unsigned(7 downto 0);
		
		commanddata: out std_logic;
		valueout : out std_logic_vector(15 downto 0);
		start : out std_logic;
		done : out std_logic
	);
end setbacklight;

architecture beh_setbacklight of setbacklight is
	type fsm_types is (idle, startup, t1, t2, t3, t4, t5, endstate);
	signal fsm_state_i : fsm_types;
	
	signal start_i : std_logic;
	signal done_i : std_logic;
	signal executed_i : std_logic;
	signal executing_i : std_logic;
	signal go_i : std_logic;
	signal commanddata_i : std_logic;
begin
	-- structure :
		-- command - set backlight control	(1)
		-- data - PWMON = 1					(2)
		-- data - dutycycle					(3)
		-- data - frequency					(4)
		-- data - smooth polarity			(5)
		
	process (clk, rst, go, status_execution, percentage)
	begin
		if rising_edge(clk) then
			if rising_edge(go) then
				start_i <= '1';
			end if;
			
			if (fsm_state_i = idle) and (start_i = '1') then
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
							valueout <= X"00B9"; -- backlight control 2 register (1)
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
								fsm_state_i <= t2;
							end if;
					end if;
				end if;
			elsif fsm_state_i = t2 then
				if executed_i = '0' then
					if status_execution = '1' then
						-- arbiter ready to send
							valueout <= X"0001"; -- PWMON = 1 (2)
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
								-- next state
								executed_i <= '0';
								fsm_state_i <= t3;
							end if;
					end if;
				end if;
			elsif fsm_state_i = t3 then
				if executed_i = '0' then
					if status_execution = '1' then
						-- arbiter ready to send
							valueout <= X"00" & std_logic_vector(((signed(percentage) * 255) / 100)); -- dutycycle (3)
							--std_logic_vector(signed(a) * signed(b))
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
								-- next state
								executed_i <= '0';
								fsm_state_i <= t4;
							end if;
					end if;
				end if;
			elsif fsm_state_i = t4 then
				if executed_i = '0' then
					if status_execution = '1' then
						-- arbiter ready to send
							valueout <= X"0000"; -- Frequency 33_3khz (4)
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
								-- next state
								executed_i <= '0';
								fsm_state_i <= t5;
							end if;
					end if;
				end if;
			elsif fsm_state_i = t5 then
				if executed_i = '0' then
					if status_execution = '1' then
						-- arbiter ready to send
							valueout <= X"0019"; -- polarity, smoothing, pwmmm, ledpwme (5)
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
								-- next state
								executed_i <= '0';
								fsm_state_i <= endstate;
							end if;
					end if;
				end if;
			elsif fsm_state_i = endstate then
				-- finishing up the fsm
				done_i <= '1';
				go_i <= '0';
				start_i <= '0';
				fsm_state_i <= idle;
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
		end if;
	end process;
	
	done <= done_i;
	start <= go_i;
	commanddata <= commanddata_i;
end architecture;