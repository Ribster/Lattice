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
		percentage : in std_logic_vector(6 downto 0);
		
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
		
	process (clk, rst, go, status_execution)
	begin
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