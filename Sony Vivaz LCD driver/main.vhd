LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

use work.constants.all;

entity main is
	port(
		-- leds
		leds		: out	std_logic_vector(7 downto 0);
		lcd_LCDBus  : out std_logic_vector(15 downto 0);	-- output lcd bus
		lcd_wr		: out std_logic;						-- write line
		lcd_reset   : out std_logic;						-- reset line of display
		lcd_rs		: out std_logic							-- data or command line
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
   
   component lcd_sender is
	port(
	clk100  : in std_logic;                        -- 100MHz clock
	payload : in std_logic_vector(15 downto 0);    -- input data
	go      : in std_logic;                        -- toggle trigger
	data    : in std_logic;                        -- data or command
	resetin : in std_logic;					   	   -- reset the display
	LCDBus  : out std_logic_vector(15 downto 0);	-- output lcd bus
	busy    : out boolean;                          -- busy flag
	wr		: out std_logic;						-- write line
	reset   : out std_logic;						-- reset line of display
	rs		: out std_logic						-- data or command line
	);
   end component;

	-- internal signals
	signal lcd_sender_payload_i : std_logic_vector(15 downto 0);
	signal lcd_sender_go_i : std_logic := '0';
	signal lcd_sender_data_i : std_logic := '0';
	signal lcd_sender_resetin_i : std_logic := '0';
	signal lcd_sender_busy_i : boolean;

begin


	-- internal oscillator
	inst_clk: osch
		generic map (nom_freq => "53.20")
		port map (STDBY => '0', OSC => clk133, SEDSTDBY => OPEN);
		
	inst_lcd_sender : lcd_sender port map(
		clk100  	=> clk133,
		payload   	=> lcd_sender_payload_i,
		go    		=> lcd_sender_go_i,
		data      	=> lcd_sender_data_i,
		resetin     => lcd_sender_resetin_i,
		busy     	=> lcd_sender_busy_i,
		LCDBus 		=> lcd_LCDBus,
		wr			=> lcd_wr,
		rs			=> lcd_rs,
		reset		=> lcd_reset
    );

	process(clk133)
		variable count	:	integer range 0 TO 5_000_000;
		variable counter :	integer range 0 TO 255;
		
		
	begin
		if(clk133'EVENT and clk133='1') then
			if(count < 5_000_000) then
				count := count + 1;
				if(lcd_sender_busy_i /= true) then 
					lcd_sender_payload_i <= std_logic_vector(to_unsigned(counter, 16));
					lcd_sender_go_i <= NOT lcd_sender_go_i;
					lcd_sender_data_i <= '1';
					lcd_sender_resetin_i <= '0';
				end if;
			else
				count := 0;
				counter := counter + 1;
			end if;
			
			
		end if;
		
		leds <= NOT std_logic_vector(to_unsigned(counter));
	end process;
	
end behavioral;