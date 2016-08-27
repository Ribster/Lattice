
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.7.1.502

-- ldbanno -n VHDL -o MachXO_7000HE_Testproject_impl1_vho.vho -w -neg -gui MachXO_7000HE_Testproject_impl1.ncd 
-- Netlist created on Wed May 18 10:34:09 2016
-- Netlist written on Wed May 18 10:34:21 2016
-- Design is for device LCMXO2-7000HE
-- Design is for package TQFP144
-- Design is for performance grade 5

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FFFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0");

    port (F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    VCC_0: lut4
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (F0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0 	<= F0_out;


    END PROCESS;

  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0000")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1");

    port (F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    GND_0: lut40001
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (F0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0 	<= F0_out;


    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity lcd_bus_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_0_B : ENTITY IS TRUE;

  end lcd_bus_0_B;

  architecture Structure of lcd_bus_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus0_out)
    VARIABLE lcdbus0_zd         	: std_logic := 'X';
    VARIABLE lcdbus0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus0_zd 	:= lcdbus0_out;

    VitalPathDelay01 (
      OutSignal => lcdbus0, OutSignalName => "lcdbus0", OutTemp => lcdbus0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus0,
                           PathCondition => TRUE)),
      GlitchData => lcdbus0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity busyB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity busyB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "busyB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_busyS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; busyS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF busyB : ENTITY IS TRUE;

  end busyB;

  architecture Structure of busyB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal busyS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    busy_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>busyS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, busyS_out)
    VARIABLE busyS_zd         	: std_logic := 'X';
    VARIABLE busyS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    busyS_zd 	:= busyS_out;

    VitalPathDelay01 (
      OutSignal => busyS, OutSignalName => "busyS", OutTemp => busyS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_busyS,
                           PathCondition => TRUE)),
      GlitchData => busyS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity goB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity goB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "goB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_goS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; goS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF goB : ENTITY IS TRUE;

  end goB;

  architecture Structure of goB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal goS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    go_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>goS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, goS_out)
    VARIABLE goS_zd         	: std_logic := 'X';
    VARIABLE goS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    goS_zd 	:= goS_out;

    VitalPathDelay01 (
      OutSignal => goS, OutSignalName => "goS", OutTemp => goS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_goS,
                           PathCondition => TRUE)),
      GlitchData => goS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_rsB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_rsB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_rsB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdrs	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdrs: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_rsB : ENTITY IS TRUE;

  end lcd_rsB;

  architecture Structure of lcd_rsB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdrs_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_rs_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdrs_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdrs_out)
    VARIABLE lcdrs_zd         	: std_logic := 'X';
    VARIABLE lcdrs_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdrs_zd 	:= lcdrs_out;

    VitalPathDelay01 (
      OutSignal => lcdrs, OutSignalName => "lcdrs", OutTemp => lcdrs_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdrs,
                           PathCondition => TRUE)),
      GlitchData => lcdrs_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_resetB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_resetB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_resetB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdreset	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdreset: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_resetB : ENTITY IS TRUE;

  end lcd_resetB;

  architecture Structure of lcd_resetB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdreset_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_reset_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdreset_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdreset_out)
    VARIABLE lcdreset_zd         	: std_logic := 'X';
    VARIABLE lcdreset_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdreset_zd 	:= lcdreset_out;

    VitalPathDelay01 (
      OutSignal => lcdreset, OutSignalName => "lcdreset", OutTemp => lcdreset_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdreset,
                           PathCondition => TRUE)),
      GlitchData => lcdreset_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_writeB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_writeB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_writeB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdwrite	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdwrite: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_writeB : ENTITY IS TRUE;

  end lcd_writeB;

  architecture Structure of lcd_writeB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdwrite_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_write_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdwrite_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdwrite_out)
    VARIABLE lcdwrite_zd         	: std_logic := 'X';
    VARIABLE lcdwrite_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdwrite_zd 	:= lcdwrite_out;

    VitalPathDelay01 (
      OutSignal => lcdwrite, OutSignalName => "lcdwrite", OutTemp => lcdwrite_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdwrite,
                           PathCondition => TRUE)),
      GlitchData => lcdwrite_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_15_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_15_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus15	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus15: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_15_B : ENTITY IS TRUE;

  end lcd_bus_15_B;

  architecture Structure of lcd_bus_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus15_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_15: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus15_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus15_out)
    VARIABLE lcdbus15_zd         	: std_logic := 'X';
    VARIABLE lcdbus15_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus15_zd 	:= lcdbus15_out;

    VitalPathDelay01 (
      OutSignal => lcdbus15, OutSignalName => "lcdbus15", OutTemp => lcdbus15_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus15,
                           PathCondition => TRUE)),
      GlitchData => lcdbus15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_14_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_14_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus14	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus14: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_14_B : ENTITY IS TRUE;

  end lcd_bus_14_B;

  architecture Structure of lcd_bus_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus14_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_14: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus14_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus14_out)
    VARIABLE lcdbus14_zd         	: std_logic := 'X';
    VARIABLE lcdbus14_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus14_zd 	:= lcdbus14_out;

    VitalPathDelay01 (
      OutSignal => lcdbus14, OutSignalName => "lcdbus14", OutTemp => lcdbus14_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus14,
                           PathCondition => TRUE)),
      GlitchData => lcdbus14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_13_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_13_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus13	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus13: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_13_B : ENTITY IS TRUE;

  end lcd_bus_13_B;

  architecture Structure of lcd_bus_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus13_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_13: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus13_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus13_out)
    VARIABLE lcdbus13_zd         	: std_logic := 'X';
    VARIABLE lcdbus13_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus13_zd 	:= lcdbus13_out;

    VitalPathDelay01 (
      OutSignal => lcdbus13, OutSignalName => "lcdbus13", OutTemp => lcdbus13_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus13,
                           PathCondition => TRUE)),
      GlitchData => lcdbus13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_12_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_12_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus12	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_12_B : ENTITY IS TRUE;

  end lcd_bus_12_B;

  architecture Structure of lcd_bus_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_12: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus12_out)
    VARIABLE lcdbus12_zd         	: std_logic := 'X';
    VARIABLE lcdbus12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus12_zd 	:= lcdbus12_out;

    VitalPathDelay01 (
      OutSignal => lcdbus12, OutSignalName => "lcdbus12", OutTemp => lcdbus12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus12,
                           PathCondition => TRUE)),
      GlitchData => lcdbus12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_11_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_11_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus11	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_11_B : ENTITY IS TRUE;

  end lcd_bus_11_B;

  architecture Structure of lcd_bus_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_11: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus11_out)
    VARIABLE lcdbus11_zd         	: std_logic := 'X';
    VARIABLE lcdbus11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus11_zd 	:= lcdbus11_out;

    VitalPathDelay01 (
      OutSignal => lcdbus11, OutSignalName => "lcdbus11", OutTemp => lcdbus11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus11,
                           PathCondition => TRUE)),
      GlitchData => lcdbus11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_10_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_10_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus10	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_10_B : ENTITY IS TRUE;

  end lcd_bus_10_B;

  architecture Structure of lcd_bus_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_10: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus10_out)
    VARIABLE lcdbus10_zd         	: std_logic := 'X';
    VARIABLE lcdbus10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus10_zd 	:= lcdbus10_out;

    VitalPathDelay01 (
      OutSignal => lcdbus10, OutSignalName => "lcdbus10", OutTemp => lcdbus10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus10,
                           PathCondition => TRUE)),
      GlitchData => lcdbus10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_9_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_9_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus9	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_9_B : ENTITY IS TRUE;

  end lcd_bus_9_B;

  architecture Structure of lcd_bus_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus9_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_9: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus9_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus9_out)
    VARIABLE lcdbus9_zd         	: std_logic := 'X';
    VARIABLE lcdbus9_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus9_zd 	:= lcdbus9_out;

    VitalPathDelay01 (
      OutSignal => lcdbus9, OutSignalName => "lcdbus9", OutTemp => lcdbus9_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus9,
                           PathCondition => TRUE)),
      GlitchData => lcdbus9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_8_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus8	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_8_B : ENTITY IS TRUE;

  end lcd_bus_8_B;

  architecture Structure of lcd_bus_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus8_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_8: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus8_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus8_out)
    VARIABLE lcdbus8_zd         	: std_logic := 'X';
    VARIABLE lcdbus8_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus8_zd 	:= lcdbus8_out;

    VitalPathDelay01 (
      OutSignal => lcdbus8, OutSignalName => "lcdbus8", OutTemp => lcdbus8_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus8,
                           PathCondition => TRUE)),
      GlitchData => lcdbus8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_7_B : ENTITY IS TRUE;

  end lcd_bus_7_B;

  architecture Structure of lcd_bus_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus7_out)
    VARIABLE lcdbus7_zd         	: std_logic := 'X';
    VARIABLE lcdbus7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus7_zd 	:= lcdbus7_out;

    VitalPathDelay01 (
      OutSignal => lcdbus7, OutSignalName => "lcdbus7", OutTemp => lcdbus7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus7,
                           PathCondition => TRUE)),
      GlitchData => lcdbus7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_6_B : ENTITY IS TRUE;

  end lcd_bus_6_B;

  architecture Structure of lcd_bus_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus6_out)
    VARIABLE lcdbus6_zd         	: std_logic := 'X';
    VARIABLE lcdbus6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus6_zd 	:= lcdbus6_out;

    VitalPathDelay01 (
      OutSignal => lcdbus6, OutSignalName => "lcdbus6", OutTemp => lcdbus6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus6,
                           PathCondition => TRUE)),
      GlitchData => lcdbus6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_5_B : ENTITY IS TRUE;

  end lcd_bus_5_B;

  architecture Structure of lcd_bus_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus5_out)
    VARIABLE lcdbus5_zd         	: std_logic := 'X';
    VARIABLE lcdbus5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus5_zd 	:= lcdbus5_out;

    VitalPathDelay01 (
      OutSignal => lcdbus5, OutSignalName => "lcdbus5", OutTemp => lcdbus5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus5,
                           PathCondition => TRUE)),
      GlitchData => lcdbus5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_4_B : ENTITY IS TRUE;

  end lcd_bus_4_B;

  architecture Structure of lcd_bus_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus4_out)
    VARIABLE lcdbus4_zd         	: std_logic := 'X';
    VARIABLE lcdbus4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus4_zd 	:= lcdbus4_out;

    VitalPathDelay01 (
      OutSignal => lcdbus4, OutSignalName => "lcdbus4", OutTemp => lcdbus4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus4,
                           PathCondition => TRUE)),
      GlitchData => lcdbus4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_3_B : ENTITY IS TRUE;

  end lcd_bus_3_B;

  architecture Structure of lcd_bus_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus3_out)
    VARIABLE lcdbus3_zd         	: std_logic := 'X';
    VARIABLE lcdbus3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus3_zd 	:= lcdbus3_out;

    VitalPathDelay01 (
      OutSignal => lcdbus3, OutSignalName => "lcdbus3", OutTemp => lcdbus3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus3,
                           PathCondition => TRUE)),
      GlitchData => lcdbus3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_2_B : ENTITY IS TRUE;

  end lcd_bus_2_B;

  architecture Structure of lcd_bus_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus2_out)
    VARIABLE lcdbus2_zd         	: std_logic := 'X';
    VARIABLE lcdbus2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus2_zd 	:= lcdbus2_out;

    VitalPathDelay01 (
      OutSignal => lcdbus2, OutSignalName => "lcdbus2", OutTemp => lcdbus2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus2,
                           PathCondition => TRUE)),
      GlitchData => lcdbus2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_bus_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_bus_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "lcd_bus_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_lcdbus1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; lcdbus1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lcd_bus_1_B : ENTITY IS TRUE;

  end lcd_bus_1_B;

  architecture Structure of lcd_bus_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal lcdbus1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    lcd_bus_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>lcdbus1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, lcdbus1_out)
    VARIABLE lcdbus1_zd         	: std_logic := 'X';
    VARIABLE lcdbus1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    lcdbus1_zd 	:= lcdbus1_out;

    VitalPathDelay01 (
      OutSignal => lcdbus1, OutSignalName => "lcdbus1", OutTemp => lcdbus1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_lcdbus1,
                           PathCondition => TRUE)),
      GlitchData => lcdbus1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lcd_sender
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_sender is
    port (clk: in Std_logic; rst: in Std_logic; 
          lcd_bus: out Std_logic_vector (15 downto 0); 
          lcd_write: out Std_logic; lcd_reset: out Std_logic; 
          lcd_rs: out Std_logic; go: out Std_logic; 
          data1Command0: in Std_logic; busy: out Std_logic; 
          payload: in Std_logic_vector (15 downto 0));



  end lcd_sender;

  architecture Structure of lcd_sender is
    signal VCC: Std_logic;
    signal GNDS: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (F0: out Std_logic);
    end component;
    component SLICE_1
      port (F0: out Std_logic);
    end component;
    component lcd_bus_0_B
      port (PADDO: in Std_logic; lcdbus0: out Std_logic);
    end component;
    component busyB
      port (PADDO: in Std_logic; busyS: out Std_logic);
    end component;
    component goB
      port (PADDO: in Std_logic; goS: out Std_logic);
    end component;
    component lcd_rsB
      port (PADDO: in Std_logic; lcdrs: out Std_logic);
    end component;
    component lcd_resetB
      port (PADDO: in Std_logic; lcdreset: out Std_logic);
    end component;
    component lcd_writeB
      port (PADDO: in Std_logic; lcdwrite: out Std_logic);
    end component;
    component lcd_bus_15_B
      port (PADDO: in Std_logic; lcdbus15: out Std_logic);
    end component;
    component lcd_bus_14_B
      port (PADDO: in Std_logic; lcdbus14: out Std_logic);
    end component;
    component lcd_bus_13_B
      port (PADDO: in Std_logic; lcdbus13: out Std_logic);
    end component;
    component lcd_bus_12_B
      port (PADDO: in Std_logic; lcdbus12: out Std_logic);
    end component;
    component lcd_bus_11_B
      port (PADDO: in Std_logic; lcdbus11: out Std_logic);
    end component;
    component lcd_bus_10_B
      port (PADDO: in Std_logic; lcdbus10: out Std_logic);
    end component;
    component lcd_bus_9_B
      port (PADDO: in Std_logic; lcdbus9: out Std_logic);
    end component;
    component lcd_bus_8_B
      port (PADDO: in Std_logic; lcdbus8: out Std_logic);
    end component;
    component lcd_bus_7_B
      port (PADDO: in Std_logic; lcdbus7: out Std_logic);
    end component;
    component lcd_bus_6_B
      port (PADDO: in Std_logic; lcdbus6: out Std_logic);
    end component;
    component lcd_bus_5_B
      port (PADDO: in Std_logic; lcdbus5: out Std_logic);
    end component;
    component lcd_bus_4_B
      port (PADDO: in Std_logic; lcdbus4: out Std_logic);
    end component;
    component lcd_bus_3_B
      port (PADDO: in Std_logic; lcdbus3: out Std_logic);
    end component;
    component lcd_bus_2_B
      port (PADDO: in Std_logic; lcdbus2: out Std_logic);
    end component;
    component lcd_bus_1_B
      port (PADDO: in Std_logic; lcdbus1: out Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (F0=>VCC);
    SLICE_1I: SLICE_1
      port map (F0=>GNDS);
    lcd_bus_0_I: lcd_bus_0_B
      port map (PADDO=>GNDS, lcdbus0=>lcd_bus(0));
    busyI: busyB
      port map (PADDO=>GNDS, busyS=>busy);
    goI: goB
      port map (PADDO=>GNDS, goS=>go);
    lcd_rsI: lcd_rsB
      port map (PADDO=>GNDS, lcdrs=>lcd_rs);
    lcd_resetI: lcd_resetB
      port map (PADDO=>GNDS, lcdreset=>lcd_reset);
    lcd_writeI: lcd_writeB
      port map (PADDO=>VCC, lcdwrite=>lcd_write);
    lcd_bus_15_I: lcd_bus_15_B
      port map (PADDO=>GNDS, lcdbus15=>lcd_bus(15));
    lcd_bus_14_I: lcd_bus_14_B
      port map (PADDO=>GNDS, lcdbus14=>lcd_bus(14));
    lcd_bus_13_I: lcd_bus_13_B
      port map (PADDO=>GNDS, lcdbus13=>lcd_bus(13));
    lcd_bus_12_I: lcd_bus_12_B
      port map (PADDO=>GNDS, lcdbus12=>lcd_bus(12));
    lcd_bus_11_I: lcd_bus_11_B
      port map (PADDO=>GNDS, lcdbus11=>lcd_bus(11));
    lcd_bus_10_I: lcd_bus_10_B
      port map (PADDO=>GNDS, lcdbus10=>lcd_bus(10));
    lcd_bus_9_I: lcd_bus_9_B
      port map (PADDO=>GNDS, lcdbus9=>lcd_bus(9));
    lcd_bus_8_I: lcd_bus_8_B
      port map (PADDO=>GNDS, lcdbus8=>lcd_bus(8));
    lcd_bus_7_I: lcd_bus_7_B
      port map (PADDO=>GNDS, lcdbus7=>lcd_bus(7));
    lcd_bus_6_I: lcd_bus_6_B
      port map (PADDO=>GNDS, lcdbus6=>lcd_bus(6));
    lcd_bus_5_I: lcd_bus_5_B
      port map (PADDO=>GNDS, lcdbus5=>lcd_bus(5));
    lcd_bus_4_I: lcd_bus_4_B
      port map (PADDO=>GNDS, lcdbus4=>lcd_bus(4));
    lcd_bus_3_I: lcd_bus_3_B
      port map (PADDO=>GNDS, lcdbus3=>lcd_bus(3));
    lcd_bus_2_I: lcd_bus_2_B
      port map (PADDO=>GNDS, lcdbus2=>lcd_bus(2));
    lcd_bus_1_I: lcd_bus_1_B
      port map (PADDO=>GNDS, lcdbus1=>lcd_bus(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of lcd_sender is
    for Structure
    end for;
  end Structure_CON;


