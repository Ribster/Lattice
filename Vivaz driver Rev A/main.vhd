LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;



entity main is
	-- fysical interaction
	port (
		lcd_bus		: inout std_logic_vector(15 downto 0);
		lcd_rs		: inout std_logic;
		lcd_wr		: inout std_logic;
		lcd_reset	: inout std_logic;
		lcd_te		: inout std_logic;
		leds		: inout std_logic_vector(7 downto 0)
	);
end main;

architecture behavioral of main is
	signal clk133	: std_logic;
	signal clk50	: std_logic;
	
   -- internal oscillator
   component osch
	generic(
		nom_freq: string := "53.20"
	);
	port(
		STDBY		:	in 	std_logic;
		OSC			:	out	std_logic;
		SEDSTDBY	:	out	std_logic
	);
   end component;
   
   -- lcd_sender
  component lcd_sender is
	port(
		clk						: in std_logic;
		rst						: in std_logic;
		en						: in std_logic;
		lcd_bus					: out std_logic_vector(15 downto 0);
		lcd_rs					: out std_logic;
		lcd_wr					: out std_logic;
		sender_busy				: out std_logic;
		sender_go				: in std_logic;
		sender_data1command0 	: in std_logic;
		sender_payload			: in std_logic_vector(15 downto 0)
	);
	end component;

	component clk_div2 is
	port(
		clkin	: in std_logic;
		clkout	: out std_logic;
		rst		: in std_logic
	);
	end component;

	-- lcd_sender interface signals
	signal lcd_sender_busy: std_logic;
	signal lcd_sender_data1command0: std_logic;
	signal lcd_sender_go: std_logic;
	signal lcd_sender_payload: std_logic_vector(15 downto 0);
	
	-- startup signals
	signal reset_startup: std_logic := '1';
	signal reset_done : std_logic := '0';
	
	-- fsm lcd arbiter
	type arbiter_state is (idle, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
	signal FSM_lcd_arbiter : arbiter_state;
	
begin


	
	

	-- internal oscillator
	inst_clk: osch
		generic map (nom_freq => "20.46")
		port map (STDBY => '0', OSC => clk133, SEDSTDBY => OPEN);
		
		
	-- clkdiv
	inst_clkdiv2: clk_div2
		port map (
			clkin => clk133,
			clkout => clk50,
			rst => reset_startup
		);
		
	-- lcd sender
	inst_lcd_sender: lcd_sender
		port map (
			clk => clk133,
			rst => reset_startup,
			en => reset_done,
			lcd_bus => lcd_bus,
			lcd_rs => lcd_rs,
			lcd_wr => lcd_wr,
			sender_busy => lcd_sender_busy,
			sender_go => lcd_sender_go,
			sender_data1command0 => lcd_sender_data1command0,
			sender_payload => lcd_sender_payload
		);
	
	-- set startup flag on TE pin
	lcd_te <= reset_startup;
	
	-- set payload on leds
	leds <= NOT lcd_sender_payload(7 downto 0);
	
	process(reset_done, lcd_sender_busy, clk50)
	begin
		if rising_edge(reset_done) then
			-- init 
			lcd_sender_go <= '0';
			lcd_sender_data1command0 <= '0';
			lcd_reset <= '0';
			lcd_sender_payload <= "0000000000000000";
			
			FSM_lcd_arbiter <= idle;
		end if;
		
		
		
			-- make pulse of go bit
			if lcd_sender_busy = '1' then
				if reset_done = '1' then
					lcd_sender_go <= '0';
				end if;
			end if;
			
			if rising_edge(clk50) then
			
				if reset_done = '1' then
				-- state machine for control
				
				
				case FSM_lcd_arbiter is
					when idle =>
						lcd_sender_data1command0 <= NOT lcd_sender_data1command0;
						--lcd_sender_payload <= unsigned(lcd_sender_payload + 1;
						--lcd_sender_go <= '1';
						lcd_reset <= '1';
						lcd_sender_payload <= std_logic_vector(to_unsigned(345, 16));
						FSM_lcd_arbiter <= s1;
					when s1 =>
						lcd_reset <= '0';
						FSM_lcd_arbiter <= s2;
					when s2 =>
						FSM_lcd_arbiter <= s3;
					when s3 =>
						FSM_lcd_arbiter <= s4;
					when s4 =>
						FSM_lcd_arbiter <= s5;
					when s5 =>
						FSM_lcd_arbiter <= s6;
					when s6 =>
						FSM_lcd_arbiter <= s7;
					when s7 =>
						FSM_lcd_arbiter <= s8;
					when s8 =>
						FSM_lcd_arbiter <= s9;
					when s9 =>
						FSM_lcd_arbiter <= s10;
					when s10 =>
						FSM_lcd_arbiter <= idle;
					when others =>
						FSM_lcd_arbiter <= idle;
				end case;
				
				end if;
			end if;
	end process;

	process(clk133)
		variable count : integer range 0 to 10_000_000;
		variable tmp : integer range 0 to 255;
	begin
		if rising_edge(clk133) then
			if count < 50 then
				count := count + 1;
			else
				count := 0;
				if (reset_startup = '0' and tmp < 1) then
					reset_startup <= '1';
					tmp := tmp + 1;
				elsif(reset_startup = '1' and tmp <2) then
					reset_startup <= '0';
					
					reset_done <= '1';
					tmp := tmp + 1;
				else
					reset_startup <= '0';
				end if;
			end if;
		end if;
	end process;
	
end behavioral;