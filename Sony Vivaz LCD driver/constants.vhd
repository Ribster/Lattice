LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY lattice;

package constants is
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