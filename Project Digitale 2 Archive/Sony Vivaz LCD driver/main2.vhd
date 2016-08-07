LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;


entity main is
	port(
		-- leds
		leds		: inout	std_logic_vector(7 downto 0);
		lcd_LCDBus  : inout std_logic_vector(15 downto 0);	-- output lcd bus
		lcd_wr		: inout std_logic;						-- write line
		lcd_reset   : inout std_logic;						-- reset line of display
		lcd_rs		: inout std_logic;							-- data or command line
		synch_rst	: in std_logic
	);
end main;

architecture behavioral of main is
	signal clk133	: std_logic;
	
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
	
	
	-- state machine latch
	type state_type is (undefined, idle, t10, t20, t30, t40, t50, t60);
	signal PS_vivaz_state: state_type := undefined;
	signal NS_vivaz_state: state_type := undefined;
	
	signal rst: std_logic;
	
	signal lcd_go_i: std_logic := '0';
	signal lcd_busy_i: std_logic := '0';
	signal lcd_payload_i: integer range 0 to 65535;
	signal lcd_dataTrue_commandFalse_i: boolean := false;
	signal lcd_reset_i: std_logic := '1';
	
	
	type lcd_states is (undefined, idle, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14);
	signal NS_lcd_state: lcd_states := undefined;
	signal PS_lcd_state: lcd_states := undefined;
	shared variable count	:	integer range 0 TO 11_000_000 := 0;
	shared variable waitcounter: integer range 0 to 11_000_000 := 0;
begin

	rst <= synch_rst;

	-- internal oscillator
	inst_clk: osch
		generic map (nom_freq => "20.46")
		port map (STDBY => '0', OSC => clk133, SEDSTDBY => OPEN);
		

	process(clk133, rst)
	begin
		if rising_edge(clk133) then
			if count < waitcounter then
				count := count +1;
			else
				count := 0;
				PS_lcd_state <= NS_lcd_state;
			end if;
		end if;
		if rst = '1' then
			PS_lcd_state <= idle;
			count := 0;
		end if;
	end process;

	process(clk133, PS_vivaz_state, PS_lcd_state, lcd_busy_i, lcd_reset, lcd_rs, lcd_wr, lcd_go_i, rst)
	begin		
		case PS_lcd_state is
			when idle =>
				-- 5ms wait
				waitcounter := 102_300;
				lcd_go_i <= '0';
				NS_lcd_state <= s1;
			when s1 =>
				-- reset high
				waitcounter := 0;
				lcd_reset <= '1';
				NS_lcd_state <= s2;
			when s2 =>
				-- 50ms wait
				waitcounter := 1_023_000;
				NS_lcd_state <= s3;
			when s3 =>
				-- reset low	
				waitcounter := 0;
				lcd_reset <= '0';
				NS_lcd_state <= s4;
			when s4 =>
				-- 50ms wait
				waitcounter := 1_023_000;
				NS_lcd_state <= s5;
			when s5 =>
				-- reset high
				waitcounter := 0;
				lcd_reset <= '1';
				NS_lcd_state <= s6;
			when s6 =>
				waitcounter := 0;
				-- write mcap command
				lcd_dataTrue_commandFalse_i <= false;
				lcd_payload_i <= 176;	-- MCAP command
				-- start lcd write
				lcd_go_i <= '1';
				NS_lcd_state <= s7;
			when s7 =>
				waitcounter := 0;
				if lcd_busy_i = '0' then
				NS_lcd_state <= s8;
				end if;
			when s8 =>
				waitcounter := 0;
				NS_lcd_state <= s9;
			when s9 =>
				waitcounter := 0;
				-- write 4 data payload
				lcd_dataTrue_commandFalse_i <= true;
				lcd_payload_i <= 4;	-- enable manufacturer registers
				-- start lcd write
				lcd_go_i <= '1';
				NS_lcd_state <= s10;
			when s10 =>
				waitcounter := 0;
				if lcd_busy_i = '0' then
					NS_lcd_state <= s11;
				end if;
			when s11 =>
				waitcounter := 0;
				NS_lcd_state <= s12;
			when s12 =>
				waitcounter := 0;
				NS_lcd_state <= s13;
			when s13 =>
				waitcounter := 10_023_000;
				NS_lcd_state <= s14;
			when s14 =>
				waitcounter := 0;
				lcd_reset <= '0';
				NS_lcd_state <= idle;
			when others =>
				NS_lcd_state <= idle;
		end case;
		
		leds(0) <= NOT lcd_busy_i;
		leds(1) <= NOT lcd_reset;
		leds(2) <= NOT lcd_rs;
		leds(3) <= NOT lcd_wr;
		
		leds(4) <= NOT lcd_go_i;
		leds(5) <= '1';
		
		
		if PS_vivaz_state = idle then
		leds(6) <= '0';
		else
		leds(6) <= '1';
		end if;
		
		if PS_lcd_state = idle then
		leds(7) <= '0';
		else
		leds(7) <= '1';
		end if;
		
		if(lcd_busy_i = '1') then
			lcd_go_i <= '0';
		end if;
		
		if rst = '1' then
			NS_lcd_state <= idle;
			waitcounter := 0;
			lcd_dataTrue_commandFalse_i <= false;
			lcd_go_i <= '0';
			lcd_payload_i <= 0;
			lcd_reset <= '0';
		end if;
			
	end process;
	

	
end behavioral;