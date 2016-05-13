LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity main is
	port(
		-- clock and control signals
		clk		: in	std_logic;	-- input oscillator
		reset	: in	std_logic;	-- overall reset	
		
		-- lcd control signals
		lcd_wr		: out	std_logic;	-- write strobe
		lcd_rs		: out 	std_logic;	-- register select
		lcd_te		: in	std_logic;	-- tearing effect
		lcd_reset	: out	std_logic;	-- reset
		
		-- debug
		debug	: out	std_logic;	-- debugging test port out
		
		-- leds
		leds	: out	std_logic_vector(7 downto 0)
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