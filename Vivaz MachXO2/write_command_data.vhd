LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity write_command_data is
	port(
		rst : in std_logic;
		clk_1khz : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		command_data : in std_logic;
		transmit_value : in std_logic_vector(15 downto 0);
		vivaz_D0_D15: out std_logic_vector(15 downto 0);
		vivaz_RS : out std_logic;
		vivaz_WR : out std_logic;
		done : out std_logic
	);
end write_command_data;

architecture beh_write_command_data of write_command_data is
	signal vivaz_d0_d15_i : std_logic_vector(15 downto 0);
	signal vivaz_rs_i : std_logic;
	signal vivaz_wr_i : std_logic;
	signal done_i : std_logic;
	
	type fsm_types is (idle, t1, t2, t3, t4, t5);
	signal fsm_state_i : fsm_types;
	
	signal start_i : std_logic;
	signal counter_i : integer range 0 to 55000;
begin
	process(go, clk, clk_1khz, rst, command_data)
	begin
			if rising_edge(go) then
				start_i <= '1';
			end if;
		
		if rising_edge(clk) then
			if (fsm_state_i = idle) and (start_i = '1') then
				done_i <= '0';	-- set done low
				counter_i <= 0;
				vivaz_wr_i <= '0';
				vivaz_d0_d15_i <= transmit_value; -- set data values on output
				fsm_state_i <= t1; -- next state
			elsif (fsm_state_i = t1) then
				if (counter_i = 1000) then
					fsm_state_i <= t2;
				else
					counter_i <= counter_i + 1;
				end if;
			elsif (fsm_state_i = t2) then
				vivaz_wr_i <= '1';
				start_i <= '0';
				done_i <= '1';
				fsm_state_i <= idle;
			end if;
			
			if rst='1' then
				fsm_state_i <= idle;
				start_i <= '0';
				vivaz_d0_d15_i <= X"0000";
				counter_i <= 0;
				vivaz_rs_i <= '0';
				vivaz_wr_i <= '1';
			end if;
		end if;
	

	end process;
	
	-- signal assignments
	vivaz_D0_D15 <= vivaz_d0_d15_i;
	vivaz_rs <= command_data;
	vivaz_wr <= vivaz_wr_i;
	done <= done_i;
end architecture;