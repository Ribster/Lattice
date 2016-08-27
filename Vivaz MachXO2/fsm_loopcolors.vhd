LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity fsm_loopcolors is
	port(
		rst : in std_logic;
		clk : in std_logic;
		clk_1khz : in std_logic;
		status_setbacklight : in std_logic;
		status_fillcolor : in std_logic;
		status_movetopoint : in std_logic;
		status_fsminit : in std_logic;
		
		start_setbacklight : out std_logic;
		percentage_setbacklight : out unsigned(7 downto 0);
		
		start_fillcolor : out std_logic;
		color565_fillcolor : out std_logic_vector(15 downto 0);
		pixcount_fillcolor : out std_logic_vector(17 downto 0);
		
		start_movetopoint : out std_logic;
		xstart_movetopoint : out std_logic_vector(9 downto 0);
		xend_movetopoint : out std_logic_vector(9 downto 0);
		ystart_movetopoint : out std_logic_vector(8 downto 0);
		yend_movetopoint : out std_logic_vector(8 downto 0)
	);
end fsm_loopcolors;

architecture beh_fsm_loopcolors of fsm_loopcolors is
	type fsm_types is (idle, t1, endstate);
	signal fsm_state_i : fsm_types;
	
	signal go_setbacklight_i : std_logic;
begin
	process(rst, clk)
	begin
		if rising_edge(clk) then
			if status_fsminit = '1' then
				-- now we can start
				if fsm_state_i = idle then
					fsm_state_i <= t1;
				elsif fsm_state_i = t1 then
					fsm_state_i <= endstate;
				elsif fsm_state_i = endstate then
					fsm_state_i <= idle;
				end if;
			end if;
		
			if rst = '1' then
				fsm_state_i <= idle;
			end if;
		end if;
	end process;
	
	start_setbacklight <= go_setbacklight_i;
end architecture;