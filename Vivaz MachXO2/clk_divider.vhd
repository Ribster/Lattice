LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;

entity clk_divider is
	port(
	clk53 : in std_logic;
	rst : in std_logic;
	clk53_out : out std_logic;
	clk25_out : out std_logic;
	clk1_out : out std_logic;
	clk1k_out : out std_logic
	);
end clk_divider;

architecture beh_clk_divider of clk_divider is
	signal counter53 : unsigned (4 downto 0) := (others=>'0');
	signal counter53000 : unsigned (15 downto 0) := (others=>'0');
	signal div2 : std_logic := '0';
	signal div53 : std_logic := '0';
	signal div53000 : std_logic := '0';
	signal div0 : std_logic := '0';
begin
	gen_clk : process(clk53)
	begin
		
	
		if rst = '1' then
			div2 <= '0';
			div53 <= '0';
			div53000 <= '0';
			div0 <= '0';
			counter53 <= X"0" & "0";
			counter53000 <= X"0000";
		else
			if rising_edge(clk53) then
			
				div2 <= not div2;
				
				if counter53 = "1" & X"A" then
					counter53 <= X"0" & "0";
					div53 <= not div53;
				else
					counter53 <= counter53 + "00001";
				end if;
				
				if counter53000 = X"6784" then
					counter53000 <= X"0000";
					div53000 <= not div53000;
				else
					counter53000 <= counter53000 + X"0001";
				end if;
			
			end if;
			
			div0 <= clk53;
		end if;
	
	end process;
	clk53_out <= div0;
	clk25_out <= div2;
	clk1_out <= div53;
	clk1k_out <= div53000;
end architecture;