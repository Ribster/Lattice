LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

USE work.constants.all;
USE work.functions.all;
--
-- lcd_sender is a utility for writing out a 16-bit value to the LCD data bus.
-- The user sets up 'data' and toggles 'go' to trigger it. When it's done the 'busy' output
-- will go low. The user is assumed to have set up 'RS' themselves.
--


entity lcd_sender is
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
end lcd_sender;

architecture behavioral of lcd_sender is
	-- internal signals
		  signal wr_i : std_logic := '1';
		  signal busy_i : boolean := false;
		  signal data_out_i : lcd_bus_t;
		  signal last_go_i : std_logic := '0';
		  signal state_i : lcd_sender_state_t := undefined;
begin
	-- register signals to ports
	state_out_sim <= state_i;
	
	wr <= wr_i;
	data_out <= data_out_i;
	busy <= busy_i;
	
	  --
	  -- state machine used to handle the actual writing.
	  -- Toggle the 'go' input to kick it off.
	  -- 'busy' output goes high for those 70ns.
	  --
	  
	  process(clk,reset)
	  begin
		if rising_edge(clk) then
			if reset = '1' then
				-- reset the state machine and the 'go' flag
				state_i <= idle;
				last_go_i <= '0';
				busy_i <= false;
			else
				case state_i is
					when idle =>
						-- start the process when the 'go' flag changes. start it immediately on this cycle
						if last_go_i /= go then
							-- reset WR
							wr_i <= '0';

							-- first 8 bits of data
							data_out <= data;

							-- we're busy
							busy_i <= true;
							state_i <= t10;
						end if;
					when t10 =>
							wr_i <= '1';
							state_i <= t20;
					when t20 =>
							state_i <= t30;
					when t30 =>
							state_i <= t40;
					when t40 =>
							-- finished
							last_go_i <= go;
							busy_i <= false;
							state_i <= idle;
					when t50 =>
					
					when t60 =>
					
					when t70 =>
					
					when others => null;
				end case;
			end if;
		end if;
	  end process;
	  
end behavioral;

