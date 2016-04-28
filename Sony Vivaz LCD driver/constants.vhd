LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY lattice;

package constants is
	--
	-- types
	--
	type lcd_sender_state_t is (
		undefined,
		idle, 
		t10,t20,t30,t40,t50,t60,t70
	);

	-- lcd init states -> state machine for initialization
	type lcd_init_state_t is (
		undefined,
		initializing,
		initialized
	);
	

	--
	-- limiting constants
	--
	constant NUM_PIXELS    : std_logic_vector := "111000010000000000";    -- 230400
	constant SCREEN_WIDTH  : std_logic_vector := "101101000";    -- 360
	constant SCREEN_HEIGHT : std_logic_vector := "1010000000";   -- 640
	
	--
	-- subtypes
	--
	subtype lcd_bus_t is std_logic_vector(15 downto 0);

end constants;


package body constants is
end constants;