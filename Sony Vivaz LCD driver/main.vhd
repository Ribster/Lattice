LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY lattice;
USE work.constants.all;

entity main is
	port(
		-- clock and control signals
		clk		: in	std_logic;	-- input oscillator
		reset	: in	std_logic;	-- overall reset	
		
		-- lcd control signals
		lcd_wr		: out	std_logic;	-- write strobe
		lcd_rs		: out 	std_logic;	-- register select
		lcd_te		: in	std_logic;	-- tearing effect
		lcd_db		: out 	lcd_bus_t;	-- databus
		lcd_reset	: out	std_logic;	-- reset
		
		-- debug
		debug	: out	std_logic;	-- debugging test port out
		
		-- leds
		leds	: out	std_logic_vector(7 downto 0)
	);
end main;

architecture behavioral of main is
	signal clk133	: std_logic;
	signal lcd_init : lcd_init_state_t := undefined;
	
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
   
   component lcd_sender is
	port(
		-- input
		clk		: in	std_logic;	-- clock
		reset	: in	std_logic;	-- synchronous reset
		data	: in	lcd_bus_t;	-- input data
		go		: in	std_logic;	-- toggle trigger
		-- output
		data_out	: out	lcd_bus_t;	-- output data
		wr			: out	std_logic;	-- write signal
		busy		: out	boolean;	-- busy signal
		-- signal
		state_out_sim : out lcd_sender_state_t	-- state of lcd sender
	);
	end component;
   
   
begin
	-- internal oscillator
	inst_clk: osch
		generic map (nom_freq => "133.00")
		port map (STDBY => '0', OSC => clk133, SEDSTDBY => OPEN);

	process(clk133)
		variable count	:	integer range 0 TO 5_000_000;
		variable counter :	integer range 0 TO 255;
	begin
		if(clk133'EVENT and clk133='1') then
			if(count < 5_000_000) then
				count := count + 1;
			else
				count := 0;
				counter := counter + 1;
			end if;
		end if;
		
		leds <= NOT std_logic_vector(to_unsigned(counter));
	end process;
	
	process(lcd_te)
	begin
		debug <= lcd_te;
	end process;

end behavioral;