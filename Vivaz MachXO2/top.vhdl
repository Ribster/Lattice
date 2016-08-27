-- D0	69
-- D1	71
-- D2	68
-- D3	70
-- D4	62
-- D5	67
-- D6	61
-- D7	65
-- D8	58
-- D9	60
-- D10	57
-- D11	59
-- D12	54
-- D13	56
-- D14	52
-- D15	55

-- RS		48
-- RESET	50
-- WR		47
-- TE		49


-- LED0	97
-- LED1	98
-- LED2	99
-- LED3	100
-- LED4/CH3	104
-- LED5/CH4	105
-- LED6	106
-- LED7	107

-- CH1	38
-- CH2	40

-- MAIN_RESET	78
-- PB1	74
-- PB2	76

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.math_real.all;
USE ieee.numeric_std.all;
LIBRARY lattice;
USE lattice.components.all;

ENTITY top IS
   PORT(
      pb1 : IN STD_LOGIC;
	  pb2 : IN STD_LOGIC;
	  main_reset : IN STD_LOGIC;
	  led30 : OUT STD_LOGIC_VECTOR (3 downto 0);
	  led67 : OUT STD_LOGIC_VECTOR (1 downto 0);
	  CH1 : OUT STD_LOGIC;
	  CH2 : OUT STD_LOGIC;
	  CH3 : OUT STD_LOGIC;
	  CH4 : OUT STD_LOGIC;
	  vivaz_TE : IN STD_LOGIC;
	  vivaz_RS : OUT STD_LOGIC;
	  vivaz_RESET : OUT STD_LOGIC;
	  vivaz_WR : OUT STD_LOGIC;
	  vivaz_D015 : OUT STD_LOGIC_VECTOR (15 downto 0);
	  tb_clk : in STD_LOGIC
	  );
END top;

architecture behaviour of top is
   SIGNAL  clk  : STD_LOGIC;
   --internal oscillator
   COMPONENT OSCH
      GENERIC(
            NOM_FREQ: string := "53.20");
      PORT( 
            STDBY    : IN  STD_LOGIC;
            OSC      : OUT STD_LOGIC;
            SEDSTDBY : OUT STD_LOGIC);
   END COMPONENT;
   
   component clk_divider is
	port(
	clk53 : in std_logic;
	rst : in std_logic;
	clk53_out : out std_logic;
	clk25_out : out std_logic;
	clk1_out : out std_logic;
	clk1k_out : out std_logic
	);
	end component;
	
	component reset_routine is
	port(
		rst : in std_logic;
		clk_1khz : in std_logic;
		go : in std_logic;
		vivaz_RESET : out std_logic;
		done : out std_logic
	);
	end component;
	
	component debounce is
	port(
		clk : in std_logic;
		input : in std_logic;
		output : out std_logic
	);
	end component;
	
	component write_command_data is
	port(
		rst : in std_logic;
		clk_1khz : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		command_data : in std_logic;
		transmit_value : in std_logic_vector(15 downto 0);
		vivaz_D0_D15: out std_logic_vector(15 downto 0);
		vivaz_RS : out std_logic;
		vivaz_WR : out std_logic;
		done : out std_logic
	);
	end component;
	
	component commanddataarbiter is
	port(
		rst : in std_logic;
		clk : in std_logic;
		done_cdroutine : in std_logic;
		
		go_arbiter : out std_logic;
		commanddata_arbiter : out std_logic;
		valueout_arbiter : out std_logic_vector(15 downto 0);
		done_arbiter : out std_logic;
		
		commanddata_movetopoint : in std_logic;
		value_movetopoint : in std_logic_vector(15 downto 0);
		go_movetopoint : in std_logic;
		
		commanddata_setbacklight : in std_logic;
		value_setbacklight : in std_logic_vector(15 downto 0);
		go_setbacklight : in std_logic;
		
		commanddata_fillcolor : in std_logic;
		value_fillcolor : in std_logic_vector(15 downto 0);
		go_fillcolor : in std_logic;
		
		commanddata_passthrough : in std_logic;
		value_passthrough : in std_logic_vector(15 downto 0);
		go_passthrough : in std_logic
	);
	end component;
	
	component movetopoint is
	port(
		rst : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		status_execution : in std_logic;
		xstart : in std_logic_vector(9 downto 0);
		xend : in std_logic_vector(9 downto 0);
		ystart : in std_logic_vector(8 downto 0);
		yend : in std_logic_vector(8 downto 0);
		
		commanddata: out std_logic;
		valueout : out std_logic_vector(15 downto 0);
		start : out std_logic;
		done : out std_logic
	);
	end component;
	
	component setbacklight is
	port(
		rst : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		status_execution : in std_logic;
		percentage : in unsigned(7 downto 0);
		
		commanddata: out std_logic;
		valueout : out std_logic_vector(15 downto 0);
		start : out std_logic;
		done : out std_logic
	);
	end component;
	
	component fillcolor is
	port(
		rst : in std_logic;
		clk : in std_logic;
		go : in std_logic;
		status_execution : in std_logic;
		color565 : in std_logic_vector(15 downto 0);
		pixcount : in std_logic_vector(17 downto 0);
		
		commanddata: out std_logic;
		valueout : out std_logic_vector(15 downto 0);
		start : out std_logic;
		done : out std_logic
	);
	end component;
	
	component fsm_init is
	port(
		rst : in std_logic;
		clk : in std_logic;
		clk_1khz : in std_logic;
		go : in std_logic;
		status_setbacklight : in std_logic;
		status_arbiter : in std_logic;
		status_reset : in std_logic;
		
		start_setbacklight : out std_logic;
		percentage_setbacklight : out unsigned(7 downto 0);
		
		start_passthrough : out std_logic;
		commanddata_passthrough : out std_logic;
		valueout_passthrough : out std_logic_vector(15 downto 0);
		
		start_reset : out std_logic;
		
		done : out std_logic
	);
	end component;
	
	--component fsm_loopcolors is
	--port(
		--rst : in std_logic;
		--clk : in std_logic;
		--clk_1khz : in std_logic;
		--status_setbacklight : in std_logic;
		--status_fillcolor : in std_logic;
		--status_movetopoint : in std_logic;
		--status_fsminit : in std_logic;
		
		--start_setbacklight : out std_logic;
		--percentage_setbacklight : out unsigned(7 downto 0);
		
		--start_fillcolor : out std_logic;
		--color565_fillcolor : out std_logic_vector(15 downto 0);
		--pixcount_fillcolor : out std_logic_vector(17 downto 0);
		
		--start_movetopoint : out std_logic;
		--xstart_movetopoint : out std_logic_vector(9 downto 0);
		--xend_movetopoint : out std_logic_vector(9 downto 0);
		--ystart_movetopoint : out std_logic_vector(8 downto 0);
		--yend_movetopoint : out std_logic_vector(8 downto 0)
	--);
	--end component;

	signal clk53_i : std_logic := '0';
	signal clk25_i : std_logic := '0';
	signal clk1_i : std_logic := '0';
	signal clk1k_i : std_logic := '0';
	
	signal main_reset_i : std_logic := '0';
	signal pb1_i : std_logic := '0';
	signal pb1not_i : std_logic := '0';
	signal pb2_i : std_logic := '0';
	signal pb2not_i : std_logic := '0';
	
	signal vivaz_RESET_i : std_logic := '0';
	signal vivaz_WR_i : std_logic := '0';
	signal vivaz_RS_i : std_logic := '0';
	signal vivaz_D0_D15_i : std_logic_vector(15 downto 0);
	
	-- reset routine
	signal resetroutine_done_i : std_logic := '0';
	signal resetroutine_go_i : std_logic := '0';
	
	-- write command / data routine
	signal writecommanddataroutine_command0data1_i : std_logic := '0';
	signal writecommanddataroutine_go_i : std_logic := '0';
	signal writecommanddataroutine_value_i : std_logic_vector(15 downto 0);
	signal writecommanddataroutine_done_i : std_logic := '0';
	
	-- command / data arbiter
	signal commanddataarbiter_done_i : std_logic := '0';
	
	-- movetopoint routine
	signal movetopoint_commanddata_i : std_logic := '0';
	signal movetopoint_start_i : std_logic := '0';
	signal movetopoint_value_i : std_logic_vector(15 downto 0);
	signal movetopoint_done_i : std_logic := '0';
	signal movetopoint_go_i : std_logic := '0';
	signal movetopoint_xstart_i : std_logic_vector(9 downto 0);
	signal movetopoint_xend_i : std_logic_vector(9 downto 0);
	signal movetopoint_ystart_i : std_logic_vector(8 downto 0);
	signal movetopoint_yend_i : std_logic_vector(8 downto 0);
	
	-- setbacklight routine
	signal setbacklight_commanddata_i : std_logic := '0';
	signal setbacklight_start_i : std_logic := '0';
	signal setbacklight_value_i : std_logic_vector(15 downto 0);
	signal setbacklight_done_i : std_logic := '0';
	signal setbacklight_go_i : std_logic := '0';
	signal setbacklight_percentage_i : unsigned(7 downto 0);
	
	-- fillcolor routine
	signal fillcolor_commanddata_i : std_logic := '0';
	signal fillcolor_start_i : std_logic := '0';
	signal fillcolor_value_i : std_logic_vector(15 downto 0);
	signal fillcolor_done_i : std_logic := '0';
	signal fillcolor_go_i : std_logic := '0';
	signal fillcolor_color565_i : std_logic_vector(15 downto 0);
	signal fillcolor_pixcount_i : std_logic_vector(17 downto 0);
	
	-- passthrough
	signal passthrough_commanddata_i : std_logic := '0';
	signal passthrough_start_i : std_logic := '0';
	signal passthrough_value_i : std_logic_vector(15 downto 0);
	signal passthrough_done_i : std_logic := '0';
	
	-- fsm_init
	signal fsminit_done_i : std_logic := '0';
begin
	--internal oscillator
	OSCInst0: OSCH
		GENERIC MAP (NOM_FREQ  => "53.20") -- 133.0
		PORT MAP (STDBY => '0', OSC => clk, SEDSTDBY => OPEN);
	
	-- clock divider
	inst_clkdivider: clk_divider
		PORT MAP (
		clk53 => tb_clk,
		rst => '0',
		clk53_out => clk53_i,
		clk25_out => clk25_i,
		clk1_out => clk1_i,
		clk1k_out => clk1k_i
		);
		
	-- reset routine
	inst_resetroutine : reset_routine
		PORT MAP (
		--rst => main_reset_i,
		rst => '0',
		clk_1khz => clk1k_i,
		go => resetroutine_go_i,
		vivaz_RESET => vivaz_RESET_i,
		done => resetroutine_done_i
		);
	
	-- write command / data routine
	inst_writecommanddata : write_command_data
		port map(
		rst => main_reset_i,
		clk_1khz => clk1k_i,
		clk => clk53_i,
		go => writecommanddataroutine_go_i,
		-- writecommanddataroutine_go_i
		command_data => writecommanddataroutine_command0data1_i,
		transmit_value => writecommanddataroutine_value_i,
		vivaz_D0_D15=> vivaz_D0_D15_i,
		vivaz_RS => vivaz_RS_i,
		vivaz_WR => vivaz_WR_i,
		done => writecommanddataroutine_done_i
		);
		
	-- command / data arbiter
	inst_commanddataarbiter : commanddataarbiter
	port map(
		rst => main_reset_i,
		clk => clk53_i,
		done_cdroutine => writecommanddataroutine_done_i,
		
		go_arbiter => writecommanddataroutine_go_i,
		commanddata_arbiter => writecommanddataroutine_command0data1_i,
		valueout_arbiter => writecommanddataroutine_value_i,
		done_arbiter => commanddataarbiter_done_i,
		
		commanddata_movetopoint => movetopoint_commanddata_i,
		value_movetopoint => movetopoint_value_i,
		go_movetopoint => movetopoint_start_i,
		
		commanddata_setbacklight => setbacklight_commanddata_i,
		value_setbacklight => setbacklight_value_i,
		go_setbacklight => setbacklight_start_i,
		
		commanddata_fillcolor => fillcolor_commanddata_i,
		value_fillcolor => fillcolor_value_i,
		go_fillcolor => fillcolor_start_i,
		
		commanddata_passthrough => passthrough_commanddata_i,
		value_passthrough => passthrough_value_i,
		go_passthrough => passthrough_start_i
		--commanddata_passthrough => '0',
		--value_passthrough => X"00B0",
		--go_passthrough => pb1not_i
		
	);

	-- move to point routine
	inst_movetopoint : movetopoint
	port map(
		rst => main_reset_i,
		clk => clk53_i,
		go => movetopoint_go_i,
		status_execution => commanddataarbiter_done_i,
		xstart => movetopoint_xstart_i,
		xend => movetopoint_xend_i,
		ystart =>  movetopoint_ystart_i,
		yend => movetopoint_yend_i,
		
		commanddata => movetopoint_commanddata_i,
		valueout => movetopoint_value_i,
		start => movetopoint_start_i,
		done => movetopoint_done_i
	);

	
	inst_setbacklight : setbacklight
	port map(
		rst => main_reset_i,
		clk => clk53_i,
		--go => pb2not_i,
		go => setbacklight_go_i,
		status_execution => commanddataarbiter_done_i,
		percentage => setbacklight_percentage_i,
		
		commanddata=> setbacklight_commanddata_i,
		valueout => setbacklight_value_i,
		start => setbacklight_start_i,
		done => setbacklight_done_i
	);
		
	inst_fillcolor : fillcolor
	port map(
		rst => main_reset_i,
		clk => clk53_i,
		go => fillcolor_go_i,
		--go => pb1not_i,
		status_execution => commanddataarbiter_done_i,
		color565 => fillcolor_color565_i,
		pixcount => fillcolor_pixcount_i,
		--pixcount => std_logic_vector(to_unsigned(640*360,18)),
		commanddata => fillcolor_commanddata_i,
		valueout => fillcolor_value_i,
		start => fillcolor_start_i,
		done => fillcolor_done_i
	);	
	
	inst_fsm_init : fsm_init
	port map(
		rst => main_reset_i,
		clk => clk53_i,
		go => pb1not_i,
		clk_1khz => clk1k_i,
		status_setbacklight => setbacklight_done_i,
		status_arbiter => commanddataarbiter_done_i,
		status_reset => resetroutine_done_i,
		
		start_setbacklight => setbacklight_go_i,
		percentage_setbacklight => setbacklight_percentage_i,
		
		start_passthrough => passthrough_start_i,
		commanddata_passthrough => passthrough_commanddata_i,
		valueout_passthrough => passthrough_value_i,
		
		start_reset => resetroutine_go_i,
		
		done => fsminit_done_i
	);
	
	--inst_fsm_loopcolors : fsm_loopcolors
	--port map(
		--rst => main_reset_i,
		--clk => clk53_i,
		--clk_1khz => clk1k_i,
		--status_setbacklight => setbacklight_done_i,
		--status_fillcolor => fillcolor_done_i,
		--status_movetopoint => movetopoint_done_i,
		--status_fsminit => fsminit_done_i,
		
		--start_setbacklight => setbacklight_go_i,
		--percentage_setbacklight => setbacklight_percentage_i,
		
		--start_fillcolor => fillcolor_go_i,
		--color565_fillcolor => fillcolor_color565_i,
		--pixcount_fillcolor => fillcolor_pixcount_i,
		
		--start_movetopoint => movetopoint_go_i,
		--xstart_movetopoint => movetopoint_xstart_i,
		--xend_movetopoint => movetopoint_xend_i,
		--ystart_movetopoint => movetopoint_ystart_i,
		--yend_movetopoint => movetopoint_yend_i
	--);

	-- debugs out
	ch4 <= pb1not_i;
	ch3 <= vivaz_WR_i;
	ch2 <= fsminit_done_i;
	ch1 <= writecommanddataroutine_go_i;
	--ch3 <= main_reset_i;
	--ch3 <= commanddataarbiter_done_i;
	--ch2 <= fillcolor_start_i;
	--ch2 <= clk;
	--ch1 <= fillcolor_done_i;
	
	
	-- leds
	led30 <= "1111";
	led67 <= "11";
	
	-- pushbuttons
	inst_debounce1 : debounce
		PORT MAP (
		clk => clk,
		input => pb1,
		output => pb1_i
		);
	
	--inst_debounce2 : debounce
		--PORT MAP (
		--clk => clk,
		--input => pb2,
		--output => pb2_i
		--);
		
	inst_debounce3 : debounce
		PORT MAP (
		clk => clk,
		input => main_reset,
		output => main_reset_i
		);

	pb1not_i <= not pb1_i;
	--pb2not_i <= not pb2_i;
	
	-- vivaz
	vivaz_RESET <= vivaz_RESET_i;
	vivaz_WR <= vivaz_WR_i;
	vivaz_RS <= vivaz_RS_i;
	vivaz_D015 <= vivaz_D0_D15_i;
end behaviour;