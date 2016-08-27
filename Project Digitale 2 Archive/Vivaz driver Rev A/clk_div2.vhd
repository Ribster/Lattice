LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity clk_div2 is
	port(
		clkin	: in std_logic;
		clkout	: out std_logic;
		rst		: in std_logic
	);
end clk_div2;

architecture beh_clk_div2 of clk_div2 is
	signal clkdiv : std_logic;
	signal cnt : integer;
begin
	process(clkin, rst, cnt)
	begin		
		if rst = '1' then
			clkdiv <= '0';
		elsif rising_edge(clkin) then
			clkdiv <= not clkdiv;
		end if;
		
		clkout <= clkdiv;
		
	end process;
	
	--clkout <= clkin;
	
end beh_clk_div2;