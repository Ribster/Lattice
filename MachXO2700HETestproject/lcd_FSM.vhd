LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity lcd_FSM is
	port (
		clk	: in std_logic;
		rst : in std_logic;
		datacommand : in std_logic;
		data : in integer range 0 to 65535;
		debug : out std_logic;
		lcd_data : out std_logic_vector(15 downto 0);
		lcd_wr : out std_logic;
		lcd_rs : out std_logic
	);
end lcd_FSM;

architecture beh_lcd_FSM of lcd_FSM is

	component lcd_sender is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		lcd_bus		: out std_logic_vector(15 downto 0);
		lcd_write	: out std_logic;
		lcd_rs		: out std_logic;
		go		: in std_logic;
		data1Command0 	: in std_logic;
		busy		: inout std_logic;
		payload		: in integer range 0 to 65535
	);
	end component;

	type FSM_states is (idle, s1,s2,s3,s4,s5,s6);
	signal PS_FSM : FSM_states;
	
	SIGNAL lcd_bus_i :  std_logic_vector(15 downto 0);
	SIGNAL lcd_write_i :  std_logic;
	SIGNAL lcd_rs_i :  std_logic;
	SIGNAL go_i :  std_logic := '0';
	SIGNAL data1Command0_i :  std_logic;
	SIGNAL busy_i :  std_logic;
	SIGNAL payload_i :  integer range 0 to 65535;

begin

	inst_lcd_sender: lcd_sender 
		port map (
			clk => clk,
			rst => rst,
			lcd_bus => lcd_bus_i,
			lcd_write => lcd_write_i,
			lcd_rs => lcd_rs_i,
			go => go_i,
			data1Command0 => data1Command0_i,
			busy => busy_i,
			payload => payload_i
		);

	beh : process(clk,rst)
	begin
	
		if rst = '1' then
			PS_FSM <= idle;
			go_i <= '1';
			payload_i <= 0;
		else
			if rising_edge(clk) then
				case PS_FSM is
					when idle =>
						go_i <= '0';
						PS_FSM <= s1;
					when s1 =>
						debug <= '1';
						PS_FSM <= s2;
					when s2 =>
						PS_FSM <= s3;
					when s3 =>
						PS_FSM <= s4;
					when s4 =>
						PS_FSM <= s5;
					when s5 =>
						PS_FSM <= s6;
					when s6 =>
						debug <= '0';
						PS_FSM <= idle;
					when others =>
						PS_FSM <= idle;
				end case;
			end if;
		end if;
	
	end process;

end beh_lcd_FSM;