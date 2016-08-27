LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity movetopoint is
	port(
		rst : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		status_execution : in std_logic;
		xstart : in std_logic_vector(9 downto 0);
		xend : in std_logic_vector(9 downto 0);
		ystart : in std_logic_vector(8 downto 0);
		yend : in std_logic_vector(8 downto 0);
		
		commanddata: out std_logic;
		valueout : out std_logic_vector(15 downto 0);
		start : out std_logic;
		done : out std_logic
	);
end movetopoint;

architecture beh_movetopoint of movetopoint is
	type fsm_types is (idle, startup, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, endstate);
	signal fsm_state_i : fsm_types;
	
	signal start_i : std_logic;
	signal done_i : std_logic;
	signal executed_i : std_logic;
	signal executing_i : std_logic;
	signal go_i : std_logic;
	signal commanddata_i : std_logic;
	
begin
	-- structure :
		-- command - set column address	(1)
		-- data - xstart >> 8			(2)
		-- data - xtart & 0xff			(3)
		-- data - xend >> 8				(4)
		-- data - xend & 0xff			(5)
		
		-- command - set page address	(6)	
		-- data - ystart >> 8			(7)
		-- data - ytart & 0xff			(8)
		-- data - yend >> 8				(9)
		-- data - yend & 0xff			(10)
		process (clk, rst, go, status_execution)
		begin
			if rising_edge(clk) then
				if rising_edge(go) then
					start_i <= '1';
				end if;
				
				if (fsm_state_i = idle) and (start_i = '1') then
					-- start this thing
					done_i <= '0';
					go_i <= '0';
					-- next state
					fsm_state_i <= startup;
				elsif (fsm_state_i = startup) then
					-- see if the arbiter is free to do stuff
					if (status_execution = '1') then
						-- go to the next step
						executed_i <= '0';
						fsm_state_i <= t1;
					end if;
				elsif (fsm_state_i = t1) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function command set column address (1)
								valueout <= X"002A";
								commanddata_i <= '0';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t2;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t2) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (2)
								valueout <= X"000" & "00" & xstart(9 downto 8);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t3;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t3) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (3)
								valueout <= X"00" & xstart(7 downto 0);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t4;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t4) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (4)
								valueout <= X"000" & "00" & xend(9 downto 8);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t5;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t5) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (5)
								valueout <= X"00" & xend(7 downto 0);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t6;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t6) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function command set page address (6)
								valueout <= X"002B";
								commanddata_i <= '0';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t7;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t7) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (7)
								valueout <= X"000" & "000" & ystart(8);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t8;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t8) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (8)
								valueout <= X"00" & ystart(7 downto 0);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t9;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t9) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (7)
								valueout <= X"000" & "000" & yend(8);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= t10;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = t10) then
					if executed_i = '0' then
						if status_execution = '1' then
							-- arbiter ready to send
								-- not yet executed
								-- execute function data (10)
								valueout <= X"00" & yend(7 downto 0);
								commanddata_i <= '1';
								go_i <= '1';
								executing_i <= '0';
								executed_i <= '1';
						end if;
					else
						-- wait for the arbiter to go into send
						if executing_i = '0' then
							-- not yet sending
							if (status_execution = '0') then
								executing_i <= '1';
								go_i <= '0';
							end if;
						else
							-- execution, wait for done signal
							if (status_execution = '1') then
								-- go to the next state
								executed_i <= '0';
								fsm_state_i <= endstate;
							end if;
						end if;
					end if;
				elsif (fsm_state_i = endstate) then
					done_i <= '1';
					go_i <= '0';
					start_i <= '0';
					fsm_state_i <= idle;
				end if;
				
				if (rst = '1') then
					-- set defaults
					fsm_state_i <= idle;
					start_i <= '0';
					done_i <= '1';
					go_i <= '0';
					executed_i <= '0';
					executing_i <= '0';
				end if;
			end if;
		end process;
		
		done <= done_i;
		start <= go_i;
		commanddata <= commanddata_i;
end architecture;