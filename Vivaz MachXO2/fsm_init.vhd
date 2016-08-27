LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity fsm_init is
	port(
		rst : in std_logic;
		clk : in std_logic;
		clk_1khz : in std_logic;
		go : in std_logic;
		status_setbacklight : in std_logic;
		status_arbiter : in std_logic;
		status_reset : in std_logic;
		
		start_setbacklight : out std_logic;
		percentage_setbacklight : out unsigned(7 downto 0);
		
		start_passthrough : out std_logic;
		commanddata_passthrough : out std_logic;
		valueout_passthrough : out std_logic_vector(15 downto 0);
		
		start_reset : out std_logic;
		
		done : out std_logic
	);
end fsm_init;

architecture beh_fsm_init of fsm_init is
type fsm_types is (idle, startup, t1, t2, t3, t4, t5, t6,
					t7, t8, t9, t10, t11, t12, t13, t14, t15,
					t16, t17, t18, t19, t20, t21, endstate);
signal fsm_state_i : fsm_types;
signal executing_i : std_logic;
signal executed_i : std_logic;
signal counter_i : integer range 0 to 125;

signal start_setbacklight_i : std_logic;
signal percentage_setbacklight_i : unsigned(7 downto 0);

signal start_passthrough_i : std_logic;
signal commanddata_passthrough_i : std_logic;
signal valueout_passthrough_i : std_logic_vector(15 downto 0);

signal start_reset_i : std_logic;
signal start_i : std_logic;
signal done_i : std_logic;
begin
	process(rst, go, clk, clk_1khz, status_setbacklight, status_arbiter, status_reset)
	begin

	

		
		if rising_edge(go) then
			start_i <= '1';
		end if;
	
		if rising_edge(clk) then
		
			-- sequence :
				-- reset vivaz								t1
				-- command MCAP (0xb0)						t2
				-- data 4									t3
				-- set backlight 100 percent				t4
				-- command SLEEP_OUT (0x11)					t5
				-- wait 120 ms								t6
				-- command PANEL_DRIVING_SETTING (0xc0)		t7
				-- data 0x8									t8
				-- data 0x9f								t9
				-- data 0									t10
				-- data 0									t11
				-- data 2									t12
				-- data 0									t13
				-- data 1									t14
				-- command NORMAL_DISPLAY_MODE_ON (0x13)	t15
				-- command SET_ADDRESS_MODE (0x36)			t16
				-- data 0xe0								t17
				-- command SET_PIXEL_FORMAT (0x3a)			t18
				-- data 5									t19
				-- moveto 0,0 - 639,359						t20
				-- command DISPLAY_ON (0x29)				t21
			
			if (fsm_state_i = idle) and (start_i = '1') then
				-- setup
				executed_i <= '0';
				fsm_state_i <= startup; -- next state
			elsif fsm_state_i = startup then
				fsm_state_i <= t1;
			elsif fsm_state_i = t1 then
				-- reset vivaz
					-- start execution
					-- wait for execution in progress
					-- if execution done next state
					if executed_i = '0' then
						-- set execution high
						executing_i <= '0';
						start_reset_i <= '1';
						executed_i <= '1';
					else
						if executing_i = '0' then
							-- not yet executing, check it
							if status_reset = '0' then
								executing_i <= '1';
								start_reset_i <= '0';
							end if;
						else
							-- waiting for execution finished
							if status_reset = '1' then
								executing_i <= '0';
								executed_i <= '0';
								fsm_state_i <= t2; -- next state
							end if;
						end if;
					end if;
			elsif (fsm_state_i = t2) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"00B0";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t3;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t3) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0004";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t4;
						end if;
					end if;
				end if;
			elsif fsm_state_i = t4 then
				-- reset vivaz
					-- start execution
					-- wait for execution in progress
					-- if execution done next state
					if executed_i = '0' then
						-- set execution high
						executing_i <= '0';
						start_setbacklight_i <= '1';
						percentage_setbacklight_i <= to_unsigned(100,8);
						executed_i <= '1';
					else
						if executing_i = '0' then
							-- not yet executing, check it
							if status_setbacklight = '0' then
								executing_i <= '1';
							end if;
						else
							-- waiting for execution finished
							if status_setbacklight = '1' then
								executing_i <= '0';
								executed_i <= '0';
								fsm_state_i <= t5; -- next state
							end if;
						end if;
					end if;
			elsif (fsm_state_i = t5) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0011";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							counter_i <= 0;
							fsm_state_i <= t6;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t6) then
				if rising_edge(clk_1khz) then
					if counter_i > 120 then
						fsm_state_i <= t7;
					else
						counter_i <= counter_i + 1;
					end if;
				end if;
			elsif (fsm_state_i = t7) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"00C0";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							counter_i <= 0;
							fsm_state_i <= t8;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t8) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0008";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t9;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t9) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"009F";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t10;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t10) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0000";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t11;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t11) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0000";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t12;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t12) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0002";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t13;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t13) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0000";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t14;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t14) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0001";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t15;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t15) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0013";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							counter_i <= 0;
							fsm_state_i <= t16;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t16) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0036";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							counter_i <= 0;
							fsm_state_i <= t17;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t17) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"00E0";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t18;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t18) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"003A";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							counter_i <= 0;
							fsm_state_i <= t19;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t19) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0005";
							commanddata_passthrough_i <= '1';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							fsm_state_i <= t20;
						end if;
					end if;
				end if;
			elsif (fsm_state_i = t20) then
				if executed_i = '0' then
					if status_arbiter = '1' then
						-- arbiter ready to send
							-- not yet executed
							-- execute function data
							valueout_passthrough_i <= X"0029";
							commanddata_passthrough_i <= '0';
							start_passthrough_i <= '1';
							executing_i <= '0';
							executed_i <= '1';
					end if;
				else
					-- wait for the arbiter to go into send
					if executing_i = '0' then
						-- not yet sending
						if (status_arbiter = '0') then
							executing_i <= '1';
							start_passthrough_i <= '0';
						end if;
					else
						-- execution, wait for done signal
						if (status_arbiter = '1') then
							-- go to the next state
							executed_i <= '0';
							counter_i <= 0;
							fsm_state_i <= endstate;
						end if;
					end if;
				end if;
			elsif fsm_state_i = endstate then
				done_i <= '1';
				start_i <= '0';
				fsm_state_i <= idle;
				-- wait here and fsm is done
			end if;
		

		end if;
		
		if rst = '1' then
			start_i <= '0';
			done_i <= '0';
			executing_i <= '0';
			executed_i <= '0';
			start_reset_i <= '0';
			start_passthrough_i <= '0';
			start_setbacklight_i <= '0';
			percentage_setbacklight_i <= X"00";
			commanddata_passthrough_i <= '0';
			valueout_passthrough_i <= X"0000";
			fsm_state_i <= idle;
		end if;
	end process;

	start_setbacklight <= start_setbacklight_i;
	percentage_setbacklight <= percentage_setbacklight_i;
	start_passthrough <= start_passthrough_i;
	commanddata_passthrough <= commanddata_passthrough_i;
	valueout_passthrough <= valueout_passthrough_i;
	start_reset <= start_reset_i;
	done <= done_i;
end architecture;