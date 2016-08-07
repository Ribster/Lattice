library ieee;

use ieee.std_logic_1164.all;


package constants is
	type lcd_sender_state_t is (
		undefined,
		idle, 
		t10,t20,t30,t40,t50,t60
	);
end constants;

package body constants is
end constants;