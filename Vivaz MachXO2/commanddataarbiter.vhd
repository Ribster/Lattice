LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity commanddataarbiter is
	port(
		rst : in std_logic;
		clk : in std_logic;
		done_cdroutine : in std_logic;
		
		go_arbiter : out std_logic;
		commanddata_arbiter : out std_logic;
		valueout_arbiter : out std_logic_vector(15 downto 0);
		done_arbiter : out std_logic;
		
		commanddata_movetopoint : in std_logic;
		value_movetopoint : in std_logic_vector(15 downto 0);
		go_movetopoint : in std_logic;
		
		commanddata_setbacklight : in std_logic;
		value_setbacklight : in std_logic_vector(15 downto 0);
		go_setbacklight : in std_logic;
		
		commanddata_fillcolor : in std_logic;
		value_fillcolor : in std_logic_vector(15 downto 0);
		go_fillcolor : in std_logic;
		
		commanddata_passthrough : in std_logic;
		value_passthrough : in std_logic_vector(15 downto 0);
		go_passthrough : in std_logic
	);
end commanddataarbiter;

architecture beh_commanddataarbiter of commanddataarbiter is
signal start_i : std_logic;

type switchtype is (movetopoint, backlight, fillcolor, passthrough);
signal switchselect_i : switchtype;

signal done_i : std_logic;
signal cdroutine_go_i : std_logic;
signal cdroutine_value_i : std_logic_vector (15 downto 0);
signal cdroutine_commanddata_i : std_logic;

signal counter : unsigned (16 downto 0);

type fsm_states is (idle, t1, t2, t3, endstate);
signal fsm_state_i : fsm_states;

signal clksynth_i : std_logic;

begin
	process (clk, rst, clksynth_i,
		commanddata_movetopoint, value_movetopoint, go_movetopoint, 
		commanddata_setbacklight, value_setbacklight, go_setbacklight, 
		commanddata_fillcolor, value_fillcolor, go_fillcolor, 
		commanddata_passthrough, value_passthrough, go_passthrough, 
		done_cdroutine)
	begin
		
		if rising_edge(clk) then
		
			if rising_edge(clksynth_i) then
				start_i <= '1';
				if (go_movetopoint = '1') then
					switchselect_i <= movetopoint;
				elsif (go_setbacklight = '1') then
					switchselect_i <= backlight;
				elsif (go_fillcolor = '1') then
					switchselect_i <= fillcolor;
				elsif (go_passthrough = '1') then
					switchselect_i <= passthrough;
				end if;
			end if;
		
			if (fsm_state_i = idle) and (start_i = '1') then
				
				cdroutine_go_i <= '0';
				done_i <= '0';
				start_i <= '0';
				counter <= "0" & X"0000";
				
				-- pulse the go signal high @ set values
				if switchselect_i = movetopoint then
					cdroutine_value_i <= value_movetopoint;
					cdroutine_commanddata_i <= commanddata_movetopoint;
				elsif switchselect_i = backlight then
					cdroutine_value_i <= value_setbacklight;
					cdroutine_commanddata_i <= commanddata_setbacklight;
				elsif switchselect_i = fillcolor then
					cdroutine_value_i <= value_fillcolor;
					cdroutine_commanddata_i <= commanddata_fillcolor;
				elsif switchselect_i = passthrough then
					cdroutine_value_i <= value_passthrough;
					cdroutine_commanddata_i <= commanddata_passthrough;
				end if;
				--

				-- go to the next state
				fsm_state_i <= t1;
			elsif fsm_state_i = t1 then
				-- pulse go high
				cdroutine_go_i <= '1';
				counter <= "0" & X"0000";
				-- go to the next state
				fsm_state_i <= t2;
			elsif fsm_state_i = t2 then
				if done_cdroutine = '0' then
					counter <= "0" & X"0000";
					fsm_state_i <= t3;
				else
					-- write command / data is busy
					counter <= counter + "00000000000000001";
					
					if counter = "0" & X"0008" then
						-- write command/data routine not triggered, retrigger
						cdroutine_go_i <= '0';
						done_i <= '0';
						start_i <= '0';
						counter <= "0" & X"0000";
						
						fsm_state_i <= t1;
					end if;
				end if;				
			elsif (fsm_state_i = t3) then
				if done_cdroutine = '1' then
					fsm_state_i <= endstate;
				else
					-- write command / data is busy
					counter <= counter + "00000000000000001";
					
					if counter = "1" & X"FFFF" then
						fsm_state_i <= endstate;
					end if;
				end if;
			elsif (fsm_state_i = endstate) then
				-- set done high
				done_i <= '1';
				-- set start low
				start_i <= '0';
				cdroutine_go_i <= '0';
				-- go to the next state
				fsm_state_i <= idle;
			end if;
			
		end if;
		
		if rst = '1' then
			start_i <= '0';
			done_i <= '1';
			cdroutine_go_i <= '0';
			cdroutine_value_i <= X"0000";
			cdroutine_commanddata_i <= '0';
			switchselect_i <= passthrough;
			fsm_state_i <= idle;
		end if;

	end process;
	
	clksynth_i <= go_fillcolor or go_setbacklight or go_passthrough or go_movetopoint;
	
	go_arbiter <= cdroutine_go_i;
	commanddata_arbiter <= cdroutine_commanddata_i;
	valueout_arbiter <= cdroutine_value_i;
	done_arbiter <= done_i;
end architecture;