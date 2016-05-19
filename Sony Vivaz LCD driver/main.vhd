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
		synch_rst	: inout std_logic
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
   
   -- lcd_sender
   component lcd_sender is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		lcd_bus		: inout std_logic_vector(15 downto 0);
		lcd_write	: out std_logic;
		lcd_rs		: out std_logic;
		go		: in std_logic;
		data1Command0 	: in std_logic;
		busy		: inout std_logic;
		payload		: in integer range 0 to 65535
	);
	end component;
	
	-- lcd_arbiter
	component lcd_arbiter is
	port (
		clk		: in std_logic;
		rst		: in std_logic;
		go		: out std_logic;
		lcd_reset : out std_logic;
		enable	: in std_logic
	);
	end component;
	
	SIGNAL go_i :  std_logic;
	SIGNAL data1Command0_i :  std_logic;
	SIGNAL busy_i :  std_logic;
	SIGNAL payload_i :  integer range 0 to 65535;
	
	type lcd_states is (undefined, idle, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14);
	signal NS_lcd_state: lcd_states;
	signal PS_lcd_state: lcd_states;
	
	signal reset_startup: std_logic := '1';
	signal reset_done : std_logic := '0';
begin
	-- internal oscillator
	inst_clk: osch
		generic map (nom_freq => "20.46")
		port map (STDBY => '0', OSC => clk133, SEDSTDBY => OPEN);
	
	-- lcd_sender
	inst_lcd_sender: lcd_sender PORT MAP(
		clk => clk133,
		rst => reset_startup,
		lcd_bus => lcd_LCDBus,
		lcd_write => lcd_wr,
		lcd_rs => lcd_rs,
		go => go_i,
		data1Command0 => data1Command0_i,
		busy => busy_i,
		payload => payload_i
	);
	
	-- lcd_arbiter
	inst_lcd_arbiter: lcd_arbiter PORT MAP(
		clk => clk133,
		rst => reset_startup,
		go => go_i,
		lcd_reset => lcd_reset,
		enable => reset_done
	);
	
	synch_rst <= reset_startup;
	
	leds(0) <= NOT go_i;
	leds(1) <= NOT lcd_reset;
	leds(2) <= NOT reset_done;
	leds(3) <= NOT lcd_rs;
	leds(4) <= NOT data1Command0_i;
	leds(5) <= NOT busy_i;
	leds(6) <= NOT lcd_wr;
	leds(7) <= '1';
	

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
					
					data1Command0_i <= '0';
					payload_i <= 0;
					
					reset_done <= '1';
					tmp := tmp + 1;
				else
					reset_startup <= '0';
				end if;
			end if;
		end if;
	end process;

	
end behavioral;