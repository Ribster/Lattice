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
	  vivaz_D015 : OUT STD_LOGIC_VECTOR (15 downto 0)
	  );
END top;