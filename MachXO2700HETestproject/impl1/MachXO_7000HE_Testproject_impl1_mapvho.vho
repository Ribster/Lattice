
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.7.1.502

-- ldbanno -n VHDL -o MachXO_7000HE_Testproject_impl1_mapvho.vho -w -neg -gui -msgset Z:/GITHUB/Lattice/MachXO2700HETestproject/promote.xml MachXO_7000HE_Testproject_impl1_map.ncd 
-- Netlist created on Wed May 18 13:57:34 2016
-- Netlist written on Wed May 18 13:57:39 2016
-- Design is for device LCMXO2-7000HE
-- Design is for package TQFP144
-- Design is for performance grade 5

-- entity vmuxregsre
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre : ENTITY IS TRUE;

  end vmuxregsre;

  architecture Structure of vmuxregsre is
  begin
    INST01: FL1P3DX
      generic map (GSR => "ENABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity vcc
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
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

-- entity sender_SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_1";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_1 : ENTITY IS TRUE;

  end sender_SLICE_1;

  architecture Structure of sender_SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i2: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i3: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sender_SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_2";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_2 : ENTITY IS TRUE;

  end sender_SLICE_2;

  architecture Structure of sender_SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i4: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i5: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sender_SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_3";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_3 : ENTITY IS TRUE;

  end sender_SLICE_3;

  architecture Structure of sender_SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i6: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i7: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sender_SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_4";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_4 : ENTITY IS TRUE;

  end sender_SLICE_4;

  architecture Structure of sender_SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i8: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i9: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

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
      generic map (initval => X"0000")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_7";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i4: lut4
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i16: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    sender_lcd_bus_i15: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, F0_out, Q0_out, 
      Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0 	<= F0_out;
    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

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
      generic map (initval => X"8888")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"5555")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity sender_SLICE_8
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_8 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_8";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; A0: in Std_logic; 
          DI0: in Std_logic; CE: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_8 : ENTITY IS TRUE;

  end sender_SLICE_8;

  architecture Structure of sender_SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    sender_i1_2_lut_rep_3: lut40001
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_i125_1_lut: lut40002
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    sender_lcd_write_28: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, A0_ipd, DI0_dly, CE_dly, CLK_dly, 
      F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"5858")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"D6D6")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0005 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0005 : ENTITY IS TRUE;

  end vmuxregsre0005;

  architecture Structure of vmuxregsre0005 is
  begin
    INST01: FL1P3BX
      generic map (GSR => "ENABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, PD=>LSR, Q=>Q);
  end Structure;

-- entity sender_SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_9";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI1: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_9 : ENTITY IS TRUE;

  end sender_SLICE_9;

  architecture Structure of sender_SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0005
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    sender_PS_vivaz_state_2_I_0_34_Mux_1_i7_3_lut: lut40003
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_PS_vivaz_state_2_I_0_34_Mux_0_i7_3_lut: lut40004
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    sender_PS_vivaz_state_i1: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    sender_PS_vivaz_state_i0: vmuxregsre0005
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, A0_ipd, 
      DI1_dly, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0404")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40007 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40007 : ENTITY IS TRUE;

  end lut40007;

  architecture Structure of lut40007 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7878")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity sender_SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_10";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_10 : ENTITY IS TRUE;

  end sender_SLICE_10;

  architecture Structure of sender_SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    sender_i162_3_lut: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_i158_2_lut_3_lut: lut40007
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    sender_PS_vivaz_state_i2: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, A0_ipd, 
      DI0_dly, CLK_dly, F0_out, Q0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sender_SLICE_15
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_15 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_15";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_15 : ENTITY IS TRUE;

  end sender_SLICE_15;

  architecture Structure of sender_SLICE_15 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i1: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i10: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sender_SLICE_16
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_16 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_16";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_16 : ENTITY IS TRUE;

  end sender_SLICE_16;

  architecture Structure of sender_SLICE_16 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i11: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i12: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sender_SLICE_17
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sender_SLICE_17 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sender_SLICE_17";

      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CE  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_CE_CLK	: VitalDelayType := 0 ns;
      tsetup_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_CE_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
          CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sender_SLICE_17 : ENTITY IS TRUE;

  end sender_SLICE_17;

  architecture Structure of sender_SLICE_17 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CE_ipd 	: std_logic := 'X';
    signal CE_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    sender_lcd_bus_i13: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    sender_lcd_bus_i14: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>CE_dly, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CE_ipd, CE, tipd_CE);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CE_dly, CE_ipd, tisd_CE_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (M1_dly, M0_dly, CE_dly, CLK_dly, Q0_out, Q1_out)
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CE_CLK       	: x01 := '0';
    VARIABLE CE_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => CE_dly,
        TestSignalName => "CE",
        TestDelay => tisd_CE_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_CE_CLK_noedge_posedge,
        SetupLow => tsetup_CE_CLK_noedge_posedge,
        HoldHigh => thold_CE_CLK_noedge_posedge,
        HoldLow => thold_CE_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => CE_CLK_TimingDatash,
        Violation => tviol_CE_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    Q0_zd 	:= Q0_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

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

-- entity xo2iobuf0008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0008 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0008 : ENTITY IS TRUE;

  end xo2iobuf0008;

  architecture Structure of xo2iobuf0008 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity clkB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity clkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clkB";

      tipd_clkS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_clkS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_clkS 	: VitalDelayType := 0 ns;
      tpw_clkS_posedge	: VitalDelayType := 0 ns;
      tpw_clkS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; clkS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF clkB : ENTITY IS TRUE;

  end clkB;

  architecture Structure of clkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal clkS_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    clk_pad: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>clkS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(clkS_ipd, clkS, tipd_clkS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, clkS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_clkS_clkS          	: x01 := '0';
    VARIABLE periodcheckinfo_clkS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => clkS_ipd,
        TestSignalName => "clkS",
        Period => tperiod_clkS,
        PulseWidthHigh => tpw_clkS_posedge,
        PulseWidthLow => tpw_clkS_negedge,
        PeriodData => periodcheckinfo_clkS,
        Violation => tviol_clkS_clkS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => clkS_ipd'last_event,
                           PathDelay => tpd_clkS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity rstB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity rstB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "rstB";

      tipd_rstS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_rstS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_rstS 	: VitalDelayType := 0 ns;
      tpw_rstS_posedge	: VitalDelayType := 0 ns;
      tpw_rstS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; rstS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF rstB : ENTITY IS TRUE;

  end rstB;

  architecture Structure of rstB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal rstS_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    rst_pad: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>rstS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(rstS_ipd, rstS, tipd_rstS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, rstS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_rstS_rstS          	: x01 := '0';
    VARIABLE periodcheckinfo_rstS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => rstS_ipd,
        TestSignalName => "rstS",
        Period => tperiod_rstS,
        PulseWidthHigh => tpw_rstS_posedge,
        PulseWidthLow => tpw_rstS_negedge,
        PeriodData => periodcheckinfo_rstS,
        Violation => tviol_rstS_rstS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => rstS_ipd'last_event,
                           PathDelay => tpd_rstS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_15_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_15_B";

      tipd_payload15  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload15_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload15 	: VitalDelayType := 0 ns;
      tpw_payload15_posedge	: VitalDelayType := 0 ns;
      tpw_payload15_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload15: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_15_B : ENTITY IS TRUE;

  end payload_15_B;

  architecture Structure of payload_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload15_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_15: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload15_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload15_ipd, payload15, tipd_payload15);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload15_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload15_payload15          	: x01 := '0';
    VARIABLE periodcheckinfo_payload15	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload15_ipd,
        TestSignalName => "payload15",
        Period => tperiod_payload15,
        PulseWidthHigh => tpw_payload15_posedge,
        PulseWidthLow => tpw_payload15_negedge,
        PeriodData => periodcheckinfo_payload15,
        Violation => tviol_payload15_payload15,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload15_ipd'last_event,
                           PathDelay => tpd_payload15_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_14_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_14_B";

      tipd_payload14  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload14_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload14 	: VitalDelayType := 0 ns;
      tpw_payload14_posedge	: VitalDelayType := 0 ns;
      tpw_payload14_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload14: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_14_B : ENTITY IS TRUE;

  end payload_14_B;

  architecture Structure of payload_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload14_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_14: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload14_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload14_ipd, payload14, tipd_payload14);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload14_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload14_payload14          	: x01 := '0';
    VARIABLE periodcheckinfo_payload14	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload14_ipd,
        TestSignalName => "payload14",
        Period => tperiod_payload14,
        PulseWidthHigh => tpw_payload14_posedge,
        PulseWidthLow => tpw_payload14_negedge,
        PeriodData => periodcheckinfo_payload14,
        Violation => tviol_payload14_payload14,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload14_ipd'last_event,
                           PathDelay => tpd_payload14_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_13_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_13_B";

      tipd_payload13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload13_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload13 	: VitalDelayType := 0 ns;
      tpw_payload13_posedge	: VitalDelayType := 0 ns;
      tpw_payload13_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_13_B : ENTITY IS TRUE;

  end payload_13_B;

  architecture Structure of payload_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload13_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_13: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload13_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload13_ipd, payload13, tipd_payload13);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload13_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload13_payload13          	: x01 := '0';
    VARIABLE periodcheckinfo_payload13	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload13_ipd,
        TestSignalName => "payload13",
        Period => tperiod_payload13,
        PulseWidthHigh => tpw_payload13_posedge,
        PulseWidthLow => tpw_payload13_negedge,
        PeriodData => periodcheckinfo_payload13,
        Violation => tviol_payload13_payload13,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload13_ipd'last_event,
                           PathDelay => tpd_payload13_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_12_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_12_B";

      tipd_payload12  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload12_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload12 	: VitalDelayType := 0 ns;
      tpw_payload12_posedge	: VitalDelayType := 0 ns;
      tpw_payload12_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload12: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_12_B : ENTITY IS TRUE;

  end payload_12_B;

  architecture Structure of payload_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload12_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_12: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload12_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload12_ipd, payload12, tipd_payload12);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload12_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload12_payload12          	: x01 := '0';
    VARIABLE periodcheckinfo_payload12	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload12_ipd,
        TestSignalName => "payload12",
        Period => tperiod_payload12,
        PulseWidthHigh => tpw_payload12_posedge,
        PulseWidthLow => tpw_payload12_negedge,
        PeriodData => periodcheckinfo_payload12,
        Violation => tviol_payload12_payload12,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload12_ipd'last_event,
                           PathDelay => tpd_payload12_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_11_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_11_B";

      tipd_payload11  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload11_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload11 	: VitalDelayType := 0 ns;
      tpw_payload11_posedge	: VitalDelayType := 0 ns;
      tpw_payload11_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload11: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_11_B : ENTITY IS TRUE;

  end payload_11_B;

  architecture Structure of payload_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload11_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_11: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload11_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload11_ipd, payload11, tipd_payload11);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload11_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload11_payload11          	: x01 := '0';
    VARIABLE periodcheckinfo_payload11	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload11_ipd,
        TestSignalName => "payload11",
        Period => tperiod_payload11,
        PulseWidthHigh => tpw_payload11_posedge,
        PulseWidthLow => tpw_payload11_negedge,
        PeriodData => periodcheckinfo_payload11,
        Violation => tviol_payload11_payload11,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload11_ipd'last_event,
                           PathDelay => tpd_payload11_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_10_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_10_B";

      tipd_payload10  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload10_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload10 	: VitalDelayType := 0 ns;
      tpw_payload10_posedge	: VitalDelayType := 0 ns;
      tpw_payload10_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload10: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_10_B : ENTITY IS TRUE;

  end payload_10_B;

  architecture Structure of payload_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload10_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_10: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload10_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload10_ipd, payload10, tipd_payload10);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload10_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload10_payload10          	: x01 := '0';
    VARIABLE periodcheckinfo_payload10	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload10_ipd,
        TestSignalName => "payload10",
        Period => tperiod_payload10,
        PulseWidthHigh => tpw_payload10_posedge,
        PulseWidthLow => tpw_payload10_negedge,
        PeriodData => periodcheckinfo_payload10,
        Violation => tviol_payload10_payload10,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload10_ipd'last_event,
                           PathDelay => tpd_payload10_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_9_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_9_B";

      tipd_payload9  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload9_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload9 	: VitalDelayType := 0 ns;
      tpw_payload9_posedge	: VitalDelayType := 0 ns;
      tpw_payload9_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload9: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_9_B : ENTITY IS TRUE;

  end payload_9_B;

  architecture Structure of payload_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload9_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_9: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload9_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload9_ipd, payload9, tipd_payload9);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload9_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload9_payload9          	: x01 := '0';
    VARIABLE periodcheckinfo_payload9	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload9_ipd,
        TestSignalName => "payload9",
        Period => tperiod_payload9,
        PulseWidthHigh => tpw_payload9_posedge,
        PulseWidthLow => tpw_payload9_negedge,
        PeriodData => periodcheckinfo_payload9,
        Violation => tviol_payload9_payload9,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload9_ipd'last_event,
                           PathDelay => tpd_payload9_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_8_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_8_B";

      tipd_payload8  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload8_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload8 	: VitalDelayType := 0 ns;
      tpw_payload8_posedge	: VitalDelayType := 0 ns;
      tpw_payload8_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload8: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_8_B : ENTITY IS TRUE;

  end payload_8_B;

  architecture Structure of payload_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload8_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_8: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload8_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload8_ipd, payload8, tipd_payload8);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload8_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload8_payload8          	: x01 := '0';
    VARIABLE periodcheckinfo_payload8	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload8_ipd,
        TestSignalName => "payload8",
        Period => tperiod_payload8,
        PulseWidthHigh => tpw_payload8_posedge,
        PulseWidthLow => tpw_payload8_negedge,
        PeriodData => periodcheckinfo_payload8,
        Violation => tviol_payload8_payload8,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload8_ipd'last_event,
                           PathDelay => tpd_payload8_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_7_B";

      tipd_payload7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload7 	: VitalDelayType := 0 ns;
      tpw_payload7_posedge	: VitalDelayType := 0 ns;
      tpw_payload7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_7_B : ENTITY IS TRUE;

  end payload_7_B;

  architecture Structure of payload_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload7_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_7: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload7_ipd, payload7, tipd_payload7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload7_payload7          	: x01 := '0';
    VARIABLE periodcheckinfo_payload7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload7_ipd,
        TestSignalName => "payload7",
        Period => tperiod_payload7,
        PulseWidthHigh => tpw_payload7_posedge,
        PulseWidthLow => tpw_payload7_negedge,
        PeriodData => periodcheckinfo_payload7,
        Violation => tviol_payload7_payload7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload7_ipd'last_event,
                           PathDelay => tpd_payload7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_6_B";

      tipd_payload6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload6 	: VitalDelayType := 0 ns;
      tpw_payload6_posedge	: VitalDelayType := 0 ns;
      tpw_payload6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_6_B : ENTITY IS TRUE;

  end payload_6_B;

  architecture Structure of payload_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload6_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_6: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload6_ipd, payload6, tipd_payload6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload6_payload6          	: x01 := '0';
    VARIABLE periodcheckinfo_payload6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload6_ipd,
        TestSignalName => "payload6",
        Period => tperiod_payload6,
        PulseWidthHigh => tpw_payload6_posedge,
        PulseWidthLow => tpw_payload6_negedge,
        PeriodData => periodcheckinfo_payload6,
        Violation => tviol_payload6_payload6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload6_ipd'last_event,
                           PathDelay => tpd_payload6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_5_B";

      tipd_payload5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload5 	: VitalDelayType := 0 ns;
      tpw_payload5_posedge	: VitalDelayType := 0 ns;
      tpw_payload5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_5_B : ENTITY IS TRUE;

  end payload_5_B;

  architecture Structure of payload_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload5_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_5: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload5_ipd, payload5, tipd_payload5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload5_payload5          	: x01 := '0';
    VARIABLE periodcheckinfo_payload5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload5_ipd,
        TestSignalName => "payload5",
        Period => tperiod_payload5,
        PulseWidthHigh => tpw_payload5_posedge,
        PulseWidthLow => tpw_payload5_negedge,
        PeriodData => periodcheckinfo_payload5,
        Violation => tviol_payload5_payload5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload5_ipd'last_event,
                           PathDelay => tpd_payload5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_4_B";

      tipd_payload4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload4 	: VitalDelayType := 0 ns;
      tpw_payload4_posedge	: VitalDelayType := 0 ns;
      tpw_payload4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_4_B : ENTITY IS TRUE;

  end payload_4_B;

  architecture Structure of payload_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload4_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_4: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload4_ipd, payload4, tipd_payload4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload4_payload4          	: x01 := '0';
    VARIABLE periodcheckinfo_payload4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload4_ipd,
        TestSignalName => "payload4",
        Period => tperiod_payload4,
        PulseWidthHigh => tpw_payload4_posedge,
        PulseWidthLow => tpw_payload4_negedge,
        PeriodData => periodcheckinfo_payload4,
        Violation => tviol_payload4_payload4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload4_ipd'last_event,
                           PathDelay => tpd_payload4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_3_B";

      tipd_payload3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload3 	: VitalDelayType := 0 ns;
      tpw_payload3_posedge	: VitalDelayType := 0 ns;
      tpw_payload3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_3_B : ENTITY IS TRUE;

  end payload_3_B;

  architecture Structure of payload_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload3_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_3: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload3_ipd, payload3, tipd_payload3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload3_payload3          	: x01 := '0';
    VARIABLE periodcheckinfo_payload3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload3_ipd,
        TestSignalName => "payload3",
        Period => tperiod_payload3,
        PulseWidthHigh => tpw_payload3_posedge,
        PulseWidthLow => tpw_payload3_negedge,
        PeriodData => periodcheckinfo_payload3,
        Violation => tviol_payload3_payload3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload3_ipd'last_event,
                           PathDelay => tpd_payload3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_2_B";

      tipd_payload2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload2 	: VitalDelayType := 0 ns;
      tpw_payload2_posedge	: VitalDelayType := 0 ns;
      tpw_payload2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_2_B : ENTITY IS TRUE;

  end payload_2_B;

  architecture Structure of payload_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload2_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_2: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload2_ipd, payload2, tipd_payload2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload2_payload2          	: x01 := '0';
    VARIABLE periodcheckinfo_payload2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload2_ipd,
        TestSignalName => "payload2",
        Period => tperiod_payload2,
        PulseWidthHigh => tpw_payload2_posedge,
        PulseWidthLow => tpw_payload2_negedge,
        PeriodData => periodcheckinfo_payload2,
        Violation => tviol_payload2_payload2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload2_ipd'last_event,
                           PathDelay => tpd_payload2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_1_B";

      tipd_payload1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload1 	: VitalDelayType := 0 ns;
      tpw_payload1_posedge	: VitalDelayType := 0 ns;
      tpw_payload1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_1_B : ENTITY IS TRUE;

  end payload_1_B;

  architecture Structure of payload_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload1_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_1: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload1_ipd, payload1, tipd_payload1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload1_payload1          	: x01 := '0';
    VARIABLE periodcheckinfo_payload1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload1_ipd,
        TestSignalName => "payload1",
        Period => tperiod_payload1,
        PulseWidthHigh => tpw_payload1_posedge,
        PulseWidthLow => tpw_payload1_negedge,
        PeriodData => periodcheckinfo_payload1,
        Violation => tviol_payload1_payload1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload1_ipd'last_event,
                           PathDelay => tpd_payload1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity payload_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity payload_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "payload_0_B";

      tipd_payload0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_payload0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_payload0 	: VitalDelayType := 0 ns;
      tpw_payload0_posedge	: VitalDelayType := 0 ns;
      tpw_payload0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; payload0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF payload_0_B : ENTITY IS TRUE;

  end payload_0_B;

  architecture Structure of payload_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal payload0_ipd 	: std_logic := 'X';

    component xo2iobuf0008
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    payload_pad_0: xo2iobuf0008
      port map (Z=>PADDI_out, PAD=>payload0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(payload0_ipd, payload0, tipd_payload0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, payload0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_payload0_payload0          	: x01 := '0';
    VARIABLE periodcheckinfo_payload0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => payload0_ipd,
        TestSignalName => "payload0",
        Period => tperiod_payload0,
        PulseWidthHigh => tpw_payload0_posedge,
        PulseWidthLow => tpw_payload0_negedge,
        PeriodData => periodcheckinfo_payload0,
        Violation => tviol_payload0_payload0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => payload0_ipd'last_event,
                           PathDelay => tpd_payload0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: INV
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity lcd_wrapper
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lcd_wrapper is
    port (clk: in Std_logic; rst: in Std_logic; 
          lcd_bus: out Std_logic_vector (15 downto 0); 
          lcd_write: out Std_logic; lcd_reset: out Std_logic; 
          lcd_rs: out Std_logic; go: in Std_logic; data1Command0: in Std_logic; 
          busy: out Std_logic; payload: in Std_logic_vector (15 downto 0));



  end lcd_wrapper;

  architecture Structure of lcd_wrapper is
    signal payload_c_1: Std_logic;
    signal payload_c_2: Std_logic;
    signal sender_clk_c_enable_16: Std_logic;
    signal clk_c: Std_logic;
    signal lcd_bus_c_2: Std_logic;
    signal lcd_bus_c_1: Std_logic;
    signal payload_c_3: Std_logic;
    signal payload_c_4: Std_logic;
    signal lcd_bus_c_4: Std_logic;
    signal lcd_bus_c_3: Std_logic;
    signal payload_c_5: Std_logic;
    signal payload_c_6: Std_logic;
    signal lcd_bus_c_6: Std_logic;
    signal lcd_bus_c_5: Std_logic;
    signal payload_c_7: Std_logic;
    signal payload_c_8: Std_logic;
    signal lcd_bus_c_8: Std_logic;
    signal lcd_bus_c_7: Std_logic;
    signal payload_c_15: Std_logic;
    signal payload_c_14: Std_logic;
    signal GND_net: Std_logic;
    signal lcd_bus_c_14: Std_logic;
    signal lcd_bus_c_15: Std_logic;
    signal sender_PS_vivaz_state_0: Std_logic;
    signal sender_PS_vivaz_state_1: Std_logic;
    signal sender_PS_vivaz_state_2: Std_logic;
    signal sender_n159: Std_logic;
    signal sender_clk_c_enable_17: Std_logic;
    signal lcd_write_c: Std_logic;
    signal sender_PS_vivaz_state_2_N_17_1: Std_logic;
    signal sender_PS_vivaz_state_2_N_17_0: Std_logic;
    signal sender_n182: Std_logic;
    signal payload_c_0: Std_logic;
    signal payload_c_9: Std_logic;
    signal lcd_bus_c_9: Std_logic;
    signal lcd_bus_c_0: Std_logic;
    signal payload_c_10: Std_logic;
    signal payload_c_11: Std_logic;
    signal lcd_bus_c_11: Std_logic;
    signal lcd_bus_c_10: Std_logic;
    signal payload_c_12: Std_logic;
    signal payload_c_13: Std_logic;
    signal lcd_bus_c_13: Std_logic;
    signal lcd_bus_c_12: Std_logic;
    signal rst_c: Std_logic;
    signal VCCI: Std_logic;
    component sender_SLICE_1
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component sender_SLICE_2
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component sender_SLICE_3
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component sender_SLICE_4
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_7
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component sender_SLICE_8
      port (B1: in Std_logic; A1: in Std_logic; A0: in Std_logic; 
            DI0: in Std_logic; CE: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic);
    end component;
    component sender_SLICE_9
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI1: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component sender_SLICE_10
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic);
    end component;
    component sender_SLICE_15
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component sender_SLICE_16
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component sender_SLICE_17
      port (M1: in Std_logic; M0: in Std_logic; CE: in Std_logic; 
            CLK: in Std_logic; Q0: out Std_logic; Q1: out Std_logic);
    end component;
    component lcd_bus_13_B
      port (PADDO: in Std_logic; lcdbus13: out Std_logic);
    end component;
    component lcd_bus_14_B
      port (PADDO: in Std_logic; lcdbus14: out Std_logic);
    end component;
    component lcd_bus_15_B
      port (PADDO: in Std_logic; lcdbus15: out Std_logic);
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
    component lcd_bus_0_B
      port (PADDO: in Std_logic; lcdbus0: out Std_logic);
    end component;
    component lcd_writeB
      port (PADDO: in Std_logic; lcdwrite: out Std_logic);
    end component;
    component lcd_resetB
      port (PADDO: in Std_logic; lcdreset: out Std_logic);
    end component;
    component lcd_rsB
      port (PADDO: in Std_logic; lcdrs: out Std_logic);
    end component;
    component busyB
      port (PADDO: in Std_logic; busyS: out Std_logic);
    end component;
    component clkB
      port (PADDI: out Std_logic; clkS: in Std_logic);
    end component;
    component rstB
      port (PADDI: out Std_logic; rstS: in Std_logic);
    end component;
    component payload_15_B
      port (PADDI: out Std_logic; payload15: in Std_logic);
    end component;
    component payload_14_B
      port (PADDI: out Std_logic; payload14: in Std_logic);
    end component;
    component payload_13_B
      port (PADDI: out Std_logic; payload13: in Std_logic);
    end component;
    component payload_12_B
      port (PADDI: out Std_logic; payload12: in Std_logic);
    end component;
    component payload_11_B
      port (PADDI: out Std_logic; payload11: in Std_logic);
    end component;
    component payload_10_B
      port (PADDI: out Std_logic; payload10: in Std_logic);
    end component;
    component payload_9_B
      port (PADDI: out Std_logic; payload9: in Std_logic);
    end component;
    component payload_8_B
      port (PADDI: out Std_logic; payload8: in Std_logic);
    end component;
    component payload_7_B
      port (PADDI: out Std_logic; payload7: in Std_logic);
    end component;
    component payload_6_B
      port (PADDI: out Std_logic; payload6: in Std_logic);
    end component;
    component payload_5_B
      port (PADDI: out Std_logic; payload5: in Std_logic);
    end component;
    component payload_4_B
      port (PADDI: out Std_logic; payload4: in Std_logic);
    end component;
    component payload_3_B
      port (PADDI: out Std_logic; payload3: in Std_logic);
    end component;
    component payload_2_B
      port (PADDI: out Std_logic; payload2: in Std_logic);
    end component;
    component payload_1_B
      port (PADDI: out Std_logic; payload1: in Std_logic);
    end component;
    component payload_0_B
      port (PADDI: out Std_logic; payload0: in Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
  begin
    sender_SLICE_1I: sender_SLICE_1
      port map (M1=>payload_c_1, M0=>payload_c_2, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_2, Q1=>lcd_bus_c_1);
    sender_SLICE_2I: sender_SLICE_2
      port map (M1=>payload_c_3, M0=>payload_c_4, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_4, Q1=>lcd_bus_c_3);
    sender_SLICE_3I: sender_SLICE_3
      port map (M1=>payload_c_5, M0=>payload_c_6, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_6, Q1=>lcd_bus_c_5);
    sender_SLICE_4I: sender_SLICE_4
      port map (M1=>payload_c_7, M0=>payload_c_8, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_8, Q1=>lcd_bus_c_7);
    SLICE_7I: SLICE_7
      port map (M1=>payload_c_15, M0=>payload_c_14, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, F0=>GND_net, Q0=>lcd_bus_c_14, Q1=>lcd_bus_c_15);
    sender_SLICE_8I: sender_SLICE_8
      port map (B1=>sender_PS_vivaz_state_0, A1=>sender_PS_vivaz_state_1, 
                A0=>sender_PS_vivaz_state_2, DI0=>sender_n159, 
                CE=>sender_clk_c_enable_17, CLK=>clk_c, F0=>sender_n159, 
                Q0=>lcd_write_c, F1=>sender_clk_c_enable_17);
    sender_SLICE_9I: sender_SLICE_9
      port map (C1=>sender_PS_vivaz_state_1, B1=>sender_PS_vivaz_state_2, 
                A1=>sender_PS_vivaz_state_0, C0=>sender_PS_vivaz_state_1, 
                B0=>sender_PS_vivaz_state_2, A0=>sender_PS_vivaz_state_0, 
                DI1=>sender_PS_vivaz_state_2_N_17_1, 
                DI0=>sender_PS_vivaz_state_2_N_17_0, CLK=>clk_c, 
                F0=>sender_PS_vivaz_state_2_N_17_0, 
                Q0=>sender_PS_vivaz_state_0, 
                F1=>sender_PS_vivaz_state_2_N_17_1, 
                Q1=>sender_PS_vivaz_state_1);
    sender_SLICE_10I: sender_SLICE_10
      port map (C1=>sender_PS_vivaz_state_0, B1=>sender_PS_vivaz_state_1, 
                A1=>sender_PS_vivaz_state_2, C0=>sender_PS_vivaz_state_2, 
                B0=>sender_PS_vivaz_state_0, A0=>sender_PS_vivaz_state_1, 
                DI0=>sender_n182, CLK=>clk_c, F0=>sender_n182, 
                Q0=>sender_PS_vivaz_state_2, F1=>sender_clk_c_enable_16);
    sender_SLICE_15I: sender_SLICE_15
      port map (M1=>payload_c_0, M0=>payload_c_9, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_9, Q1=>lcd_bus_c_0);
    sender_SLICE_16I: sender_SLICE_16
      port map (M1=>payload_c_10, M0=>payload_c_11, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_11, Q1=>lcd_bus_c_10);
    sender_SLICE_17I: sender_SLICE_17
      port map (M1=>payload_c_12, M0=>payload_c_13, CE=>sender_clk_c_enable_16, 
                CLK=>clk_c, Q0=>lcd_bus_c_13, Q1=>lcd_bus_c_12);
    lcd_bus_13_I: lcd_bus_13_B
      port map (PADDO=>lcd_bus_c_13, lcdbus13=>lcd_bus(13));
    lcd_bus_14_I: lcd_bus_14_B
      port map (PADDO=>lcd_bus_c_14, lcdbus14=>lcd_bus(14));
    lcd_bus_15_I: lcd_bus_15_B
      port map (PADDO=>lcd_bus_c_15, lcdbus15=>lcd_bus(15));
    lcd_bus_12_I: lcd_bus_12_B
      port map (PADDO=>lcd_bus_c_12, lcdbus12=>lcd_bus(12));
    lcd_bus_11_I: lcd_bus_11_B
      port map (PADDO=>lcd_bus_c_11, lcdbus11=>lcd_bus(11));
    lcd_bus_10_I: lcd_bus_10_B
      port map (PADDO=>lcd_bus_c_10, lcdbus10=>lcd_bus(10));
    lcd_bus_9_I: lcd_bus_9_B
      port map (PADDO=>lcd_bus_c_9, lcdbus9=>lcd_bus(9));
    lcd_bus_8_I: lcd_bus_8_B
      port map (PADDO=>lcd_bus_c_8, lcdbus8=>lcd_bus(8));
    lcd_bus_7_I: lcd_bus_7_B
      port map (PADDO=>lcd_bus_c_7, lcdbus7=>lcd_bus(7));
    lcd_bus_6_I: lcd_bus_6_B
      port map (PADDO=>lcd_bus_c_6, lcdbus6=>lcd_bus(6));
    lcd_bus_5_I: lcd_bus_5_B
      port map (PADDO=>lcd_bus_c_5, lcdbus5=>lcd_bus(5));
    lcd_bus_4_I: lcd_bus_4_B
      port map (PADDO=>lcd_bus_c_4, lcdbus4=>lcd_bus(4));
    lcd_bus_3_I: lcd_bus_3_B
      port map (PADDO=>lcd_bus_c_3, lcdbus3=>lcd_bus(3));
    lcd_bus_2_I: lcd_bus_2_B
      port map (PADDO=>lcd_bus_c_2, lcdbus2=>lcd_bus(2));
    lcd_bus_1_I: lcd_bus_1_B
      port map (PADDO=>lcd_bus_c_1, lcdbus1=>lcd_bus(1));
    lcd_bus_0_I: lcd_bus_0_B
      port map (PADDO=>lcd_bus_c_0, lcdbus0=>lcd_bus(0));
    lcd_writeI: lcd_writeB
      port map (PADDO=>lcd_write_c, lcdwrite=>lcd_write);
    lcd_resetI: lcd_resetB
      port map (PADDO=>GND_net, lcdreset=>lcd_reset);
    lcd_rsI: lcd_rsB
      port map (PADDO=>GND_net, lcdrs=>lcd_rs);
    busyI: busyB
      port map (PADDO=>GND_net, busyS=>busy);
    clkI: clkB
      port map (PADDI=>clk_c, clkS=>clk);
    rstI: rstB
      port map (PADDI=>rst_c, rstS=>rst);
    payload_15_I: payload_15_B
      port map (PADDI=>payload_c_15, payload15=>payload(15));
    payload_14_I: payload_14_B
      port map (PADDI=>payload_c_14, payload14=>payload(14));
    payload_13_I: payload_13_B
      port map (PADDI=>payload_c_13, payload13=>payload(13));
    payload_12_I: payload_12_B
      port map (PADDI=>payload_c_12, payload12=>payload(12));
    payload_11_I: payload_11_B
      port map (PADDI=>payload_c_11, payload11=>payload(11));
    payload_10_I: payload_10_B
      port map (PADDI=>payload_c_10, payload10=>payload(10));
    payload_9_I: payload_9_B
      port map (PADDI=>payload_c_9, payload9=>payload(9));
    payload_8_I: payload_8_B
      port map (PADDI=>payload_c_8, payload8=>payload(8));
    payload_7_I: payload_7_B
      port map (PADDI=>payload_c_7, payload7=>payload(7));
    payload_6_I: payload_6_B
      port map (PADDI=>payload_c_6, payload6=>payload(6));
    payload_5_I: payload_5_B
      port map (PADDI=>payload_c_5, payload5=>payload(5));
    payload_4_I: payload_4_B
      port map (PADDI=>payload_c_4, payload4=>payload(4));
    payload_3_I: payload_3_B
      port map (PADDI=>payload_c_3, payload3=>payload(3));
    payload_2_I: payload_2_B
      port map (PADDI=>payload_c_2, payload2=>payload(2));
    payload_1_I: payload_1_B
      port map (PADDI=>payload_c_1, payload1=>payload(1));
    payload_0_I: payload_0_B
      port map (PADDI=>payload_c_0, payload0=>payload(0));
    GSR_INST: GSR_INSTB
      port map (GSRNET=>rst_c);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of lcd_wrapper is
    for Structure
    end for;
  end Structure_CON;


