LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

package functions is
	FUNCTION "+" ( a : STD_LOGIC_VECTOR , b : INTEGER ) RETURN      STD_LOGIC_VECTOR ;
end package;

package body functions is
	FUNCTION "+" ( a : STD_LOGIC_VECTOR , b : INTEGER ) RETURN      STD_LOGIC_VECTOR 
	begin
		VARIABLE result : UNSIGNED ;
		result <= unsigned( a ) + 1 ;
		RETURN std_logic_vector( result ) ;
	END FUNCTION ;
end package body;