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

	type state_type is (undefined, idle, t10, t20, t30, t40, t50, t60);
	signal PS_vivaz_state: state_type;

	signal busy: std_logic;
	signal data1command0: std_logic;
	signal go: std_logic;
	signal payload: integer range 0 to 65535;
	
	
	signal reset_startup: std_logic := '1';
	signal reset_done : std_logic := '0';
	
begin
	-- internal oscillator
	inst_clk: osch
		generic map (nom_freq => "20.46")
		port map (STDBY => '0', OSC => clk133, SEDSTDBY => OPEN);
	
	synch_rst <= reset_startup;
	
	process(clk133)
	variable count_i : integer range 0 to 10_000_000;
	begin
		if rising_edge(clk133) then
			if count_i < 10_000 then
				count_i := count_i + 1;
			else
				count_i := 0;
				go <= '1';
				payload <= payload + 1;
				data1Command0 <= NOT data1Command0;
			end if;
			
			if busy = '1' then
				go <= '0';
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
					
					-- init state
					---data1Command0 <= '0';
					
					
					reset_done <= '1';
					tmp := tmp + 1;
				else
					reset_startup <= '0';
				end if;
			end if;
		end if;
	end process;
		
	process(clk133, reset_startup)
	begin
		if rising_edge(clk133) then
			case PS_vivaz_state is
				when idle =>
					if go = '1' then
						lcd_wr <= '0';
						busy <= '1';
						lcd_rs <= data1Command0;
						PS_vivaz_state <= t10;
					else
						PS_vivaz_state <= idle;
					end if;
				when t10 =>
					lcd_LCDBus <= std_logic_vector(to_unsigned(payload, 16));
					PS_vivaz_state <= t20;
				when t20 =>
					lcd_wr <= '1';
					PS_vivaz_state <= t30;
				when t30 =>
					PS_vivaz_state <= t40;
				when t40 =>
					PS_vivaz_state <= t50;
				when t50 =>
					PS_vivaz_state <= t60;
				when t60 =>
					lcd_wr <= '0';
					busy <= '0';
					PS_vivaz_state <= idle;
				when others =>
					--busy <= '0';
					PS_vivaz_state <= idle;
			end case;
		end if;

		if reset_startup = '1' then
			busy <= '0';
			lcd_LCDBus <= "0000000000000000";
			lcd_wr <= '0';
			lcd_rs <= '0';
			PS_vivaz_state <= idle;
		end if;
	end process;
	
end behavioral;