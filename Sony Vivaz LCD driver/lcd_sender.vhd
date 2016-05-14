library ieee;

use ieee.std_logic_1164.all;
use work.constants.all;

entity lcd_sender is
  port(
    
    -- inputs
    
    clk100  : in std_logic;                        -- 100MHz clock
    payload : in std_logic_vector(15 downto 0);    -- input data
    go      : in std_logic;                        -- toggle trigger
    data    : in std_logic;                        -- data or command
	resetin : in std_logic;					   	   -- reset the display
	
    -- outputs
    LCDBus  : out std_logic_vector(15 downto 0);	-- output lcd bus
    busy    : out boolean;                          -- busy flag
	wr		: out std_logic;						-- write line
	reset   : out std_logic;						-- reset line of display
	rs		: out std_logic						-- data or command line
    );
end lcd_sender;

architecture behavioral of lcd_sender is


  -- internal signals
  
  signal LCDBus_i : std_logic_vector(15 downto 0);
  signal busy_i : boolean := false;
  signal wr_i : std_logic;
  signal rs_i : std_logic;  
  signal last_go_i : std_logic := '0';
  signal state_i : lcd_sender_state_t := idle;
 
begin

	busy <= busy_i;
	wr <= wr_i;
	rs <= rs_i;
	reset <= resetin;
	LCDBus <= LCDBus_i;

	process (clk100)
	begin
		if(clk100'EVENT and clk100='1') then
		
			case state_i is
				when idle =>
					if last_go_i /= go then
						busy_i <= true;
						state_i <= t10;
					end if;
				when t10 =>
					-- write low
					wr_i <= '0'; 
					
					-- set data / command
					
					state_i <= t20;
				when t20 =>
					-- data set
					LCDBus_i <= payload;
					
					state_i <= t30;
				when t30 =>
					-- write high
					wr_i <= '1'; 
					
					state_i <= t40;
				when t40 =>
					-- write wait
				
					state_i <= t50;
				when t50 =>
					-- write wait
				
					state_i <= t60;
				when t60 =>
					-- done
				
					last_go_i <= go;
					busy_i <= false;
					state_i <= idle;
				when others => null;
			end case;
		
		end if;
	end process;

end behavioral;