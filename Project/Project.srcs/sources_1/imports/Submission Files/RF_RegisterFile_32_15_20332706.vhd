library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RF_RegisterFile_32_15_20332706 is
    Port(
        SA, DR, SB : in std_logic_vector (4 downto 0);
        TB, TD, TA : in std_logic_vector (3 downto 0);
        Clock, RW : in std_logic;
        D : in std_logic_vector (31 downto 0);
        A, B : out std_logic_vector(31 downto 0)
    );
end RF_RegisterFile_32_15_20332706;

architecture Behavioral of RF_RegisterFile_32_15_20332706 is

    signal register_Q00, register_Q01, register_Q02, register_Q03, register_Q04, register_Q05, register_Q06, register_Q07, register_Q08, register_Q09, register_Q10, register_Q11, 
    register_Q12, register_Q13, register_Q14, register_Q15, register_Q16, register_Q17, register_Q18, register_Q19, register_Q20, register_Q21, register_Q22, register_Q23, register_Q24,
    register_Q25, register_Q26, register_Q27, register_Q28, register_Q29, register_Q30, register_Q31, load,
    tempRegister_Q01, tempRegister_Q02, tempRegister_Q03, tempRegister_Q04, tempRegister_Q05, tempRegister_Q06, tempRegister_Q07, tempRegister_Q08, tempRegister_Q09,
    tempRegister_Q10, tempRegister_Q11, tempRegister_Q12, tempRegister_Q13, tempRegister_Q14, tempRegister_Q15, 
    mux32_A_Out, mux32_B_Out : std_logic_vector(31 downto 0);
    signal tempLoad : std_logic_vector(15 downto 0);
    signal r00_load, r01_load, r02_load, r03_load, r04_load, r05_load, r06_load, r07_load, r08_load, r09_load, r10_load, r11_load, r12_load, 
    r13_load, r14_load, r15_load, r16_load, r17_load, r18_load, r19_load, r20_load, r21_load, r22_load, r23_load, r24_load, r25_load, r26_load, 
    r27_load, r28_load, r29_load, r30_load, r31_load : std_logic;


    component RF_Register32Bit_20332706
        Port (
            D : in std_logic_vector(31 downto 0);
            Clock, Load : in std_logic;
            Q : out std_logic_vector(31 downto 0)
        );
    end component;

    component RF_DestReg_Decoder_20332706
        Port( A : in std_logic_vector(4 downto 0);
              D : out std_logic_vector(31 downto 0)
        );
    end component;

    component RF_TempDestReg_Decoder_20332706
        Port ( 
            A : in std_logic_vector(3 downto 0);
            D : out std_logic_vector(15 downto 0)
       );
    end component;
 
    component RF_Mux32_32Bit_20332706
        Port(
            in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15, in16, in17, in18, 
            in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
            S : in std_logic_vector(4 downto 0);
            Z : out std_logic_vector(31 downto 0)
        );
    end component;

    component RF_Mux16_32Bit_20332706
        Port (
            in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15 : in std_logic_vector(31 downto 0);
            S : in std_logic_vector(3 downto 0);
            Z : out std_logic_vector(31 downto 0)
        );
    end component;

begin


    DestReg_Decoder: RF_DestReg_Decoder_20332706 Port Map (
        A => DR,
        D => load
    );
    DestTempReg_Decoder: RF_TempDestReg_Decoder_20332706 Port Map (
        A => TD,
        D => tempLoad
    );
    
    r00_load <= load(0) and RW and tempLoad(0); 
    r01_load <= load(1) and RW and tempLoad(0); 
    r02_load <= load(2) and RW and tempLoad(0); 
    r03_load <= load(3) and RW and tempLoad(0); 
    r04_load <= load(4) and RW and tempLoad(0); 
    r05_load <= load(5) and RW and tempLoad(0); 
    r06_load <= load(6) and RW and tempLoad(0); 
    r07_load <= load(7) and RW and tempLoad(0); 
    r08_load <= load(8) and RW and tempLoad(0); 
    r09_load <= load(9) and RW and tempLoad(0); 
    r10_load <= load(10) and RW and tempLoad(0); 
    r11_load <= load(11) and RW and tempLoad(0); 
    r12_load <= load(12) and RW and tempLoad(0); 
    r13_load <= load(13) and RW and tempLoad(0); 
    r14_load <= load(14) and RW and tempLoad(0); 
    r15_load <= load(15) and RW and tempLoad(0); 
    r16_load <= load(16) and RW and tempLoad(0); 
    r17_load <= load(17) and RW and tempLoad(0); 
    r18_load <= load(18) and RW and tempLoad(0); 
    r19_load <= load(19) and RW and tempLoad(0); 
    r20_load <= load(20) and RW and tempLoad(0); 
    r21_load <= load(21) and RW and tempLoad(0); 
    r22_load <= load(22) and RW and tempLoad(0); 
    r23_load <= load(23) and RW and tempLoad(0); 
    r24_load <= load(24) and RW and tempLoad(0); 
    r25_load <= load(25) and RW and tempLoad(0); 
    r26_load <= load(26) and RW and tempLoad(0); 
    r27_load <= load(27) and RW and tempLoad(0); 
    r28_load <= load(28) and RW and tempLoad(0); 
    r29_load <= load(29) and RW and tempLoad(0); 
    r30_load <= load(30) and RW and tempLoad(0); 
    r31_load <= load(31) and RW and tempLoad(0); 


    Register00: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r00_load,
            Clock => Clock,
            Q => register_Q00
    );

    Register01: RF_Register32Bit_20332706 Port Map (
            D => D, 
            Load => r01_load,
            Clock => Clock,
            Q => register_Q01
    );

    Register02: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r02_load,
            Clock => Clock,
            Q => register_Q02
    );

    Register03: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r03_load,
            Clock => Clock,
            Q => register_Q03
    );

    Register04: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r04_load,
            Clock => Clock,
            Q => register_Q04
    );

    Register05: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r05_load,
            Clock => Clock,
            Q => register_Q05
    );

    Register06: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r06_load,
            Clock => Clock,
            Q => register_Q06
    );

    Register07: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r07_load,
            Clock => Clock,
            Q => register_Q07
    );

    Register08: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r08_load,
            Clock => Clock,
            Q => register_Q08
    );

    Register09: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r09_load,
            Clock => Clock,
            Q => register_Q09
    );

    Register10: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r10_load,
            Clock => Clock,
            Q => register_Q10
    );

    Register11: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r11_load,
            Clock => Clock,
            Q => register_Q11
    );

    Register12: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r12_load,
            Clock => Clock,
            Q => register_Q12
    );

    Register13: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r13_load,
            Clock => Clock,
            Q => register_Q13
    );

    Register14: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r14_load,
            Clock => Clock,
            Q => register_Q14
    );

    Register15: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r15_load,
            Clock => Clock,
            Q => register_Q15
    );

    Register16: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r16_load,
            Clock => Clock,
            Q => register_Q16
    );

    Register17: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r17_load,
            Clock => Clock,
            Q => register_Q17
    );

    Register18: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r18_load,
            Clock => Clock,
            Q => register_Q18
    );

    Register19: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r19_load,
            Clock => Clock,
            Q => register_Q19
    );

    Register20: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r20_load,
            Clock => Clock,
            Q => register_Q20
    );

    Register21: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r21_load,
            Clock => Clock,
            Q => register_Q21
    );

    Register22: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r22_load,
            Clock => Clock,
            Q => register_Q22
    );

    Register23: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r23_load,
            Clock => Clock,
            Q => register_Q23
    );

    Register24: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r24_load,
            Clock => Clock,
            Q => register_Q24
    );

    Register25: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r25_load,
            Clock => Clock,
            Q => register_Q25
    );

    Register26: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r26_load,
            Clock => Clock,
            Q => register_Q26
    );

    Register27: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r27_load,
            Clock => Clock,
            Q => register_Q27
    );

    Register28: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r28_load,
            Clock => Clock,
            Q => register_Q28
    );

    Register29: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r29_load,
            Clock => Clock,
            Q => register_Q29
    );

    Register30: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r30_load,
            Clock => Clock,
            Q => register_Q30
    );

    Register31: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => r31_load,
            Clock => Clock,
            Q => register_Q31
    );

    -- Multiplexers 
    Mux32_A: RF_Mux32_32Bit_20332706 Port Map (
        in00 => register_Q00,
        in01 => register_Q01,
        in02 => register_Q02,
        in03 => register_Q03,
        in04 => register_Q04,
        in05 => register_Q05,
        in06 => register_Q06,
        in07 => register_Q07,
        in08 => register_Q08,
        in09 => register_Q09,
        in10 => register_Q10,
        in11 => register_Q11,
        in12 => register_Q12,
        in13 => register_Q13,
        in14 => register_Q14,
        in15 => register_Q15,
        in16 => register_Q16,
        in17 => register_Q17,
        in18 => register_Q18,
        in19 => register_Q19,
        in20 => register_Q20,
        in21 => register_Q21,
        in22 => register_Q22,
        in23 => register_Q23,
        in24 => register_Q24,
        in25 => register_Q25,
        in26 => register_Q26,
        in27 => register_Q27,
        in28 => register_Q28,
        in29 => register_Q29,
        in30 => register_Q30,
        in31 => register_Q31,
        S => SA,
        Z => mux32_A_Out
    );

    Mux32_B: RF_Mux32_32Bit_20332706 Port Map (
        in00 => register_Q00,
        in01 => register_Q01,
        in02 => register_Q02,
        in03 => register_Q03,
        in04 => register_Q04,
        in05 => register_Q05,
        in06 => register_Q06,
        in07 => register_Q07,
        in08 => register_Q08,
        in09 => register_Q09,
        in10 => register_Q10,
        in11 => register_Q11,
        in12 => register_Q12,
        in13 => register_Q13,
        in14 => register_Q14,
        in15 => register_Q15,
        in16 => register_Q16,
        in17 => register_Q17,
        in18 => register_Q18,
        in19 => register_Q19,
        in20 => register_Q20,
        in21 => register_Q21,
        in22 => register_Q22,
        in23 => register_Q23,
        in24 => register_Q24,
        in25 => register_Q25,
        in26 => register_Q26,
        in27 => register_Q27,
        in28 => register_Q28,
        in29 => register_Q29,
        in30 => register_Q30,
        in31 => register_Q31,
        S => SB,
        Z => mux32_B_Out
    );

    TempReg01: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(1) and RW,
            Clock => Clock,
            Q => tempRegister_Q01
    );

    TempReg02: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(2) and RW,
            Clock => Clock,
            Q => tempRegister_Q02
    );

    TempReg03: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(3) and RW,
            Clock => Clock,
            Q => tempRegister_Q03
    );

    TempReg04: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(4) and RW,
            Clock => Clock,
            Q => tempRegister_Q04
    );

    TempReg05: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(5) and RW,
            Clock => Clock,
            Q => tempRegister_Q05
    );

    TempReg06: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(6) and RW,
            Clock => Clock,
            Q => tempRegister_Q06
    );

    TempReg07: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(7) and RW,
            Clock => Clock,
            Q => tempRegister_Q07
    );

    TempReg08: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(8) and RW,
            Clock => Clock,
            Q => tempRegister_Q08
    );

    TempReg09: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(9) and RW,
            Clock => Clock,
            Q => tempRegister_Q09
    );

    TempReg10: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(10) and RW,
            Clock => Clock,
            Q => tempRegister_Q10
    );

    TempReg11: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(11) and RW,
            Clock => Clock,
            Q => tempRegister_Q11
    );

    TempReg12: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(12) and RW,
            Clock => Clock,
            Q => tempRegister_Q12
    );

    TempReg13: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(13) and RW,
            Clock => Clock,
            Q => tempRegister_Q13
    );

    TempReg14: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(14) and RW,
            Clock => Clock,
            Q => tempRegister_Q14
    );

    TempReg15: RF_Register32Bit_20332706 Port Map (
            D => D,
            Load => tempLoad(15) and RW,
            Clock => Clock,
            Q => tempRegister_Q15
    );

    Mux16_A: RF_Mux16_32Bit_20332706 Port Map (
        in00 => mux32_A_Out,
        in01 => tempRegister_Q01,
        in02 => tempRegister_Q02,
        in03 => tempRegister_Q03,
        in04 => tempRegister_Q04,
        in05 => tempRegister_Q05,
        in06 => tempRegister_Q06,
        in07 => tempRegister_Q07,
        in08 => tempRegister_Q08,
        in09 => tempRegister_Q09,
        in10 => tempRegister_Q10,
        in11 => tempRegister_Q11,
        in12 => tempRegister_Q12,
        in13 => tempRegister_Q13,
        in14 => tempRegister_Q14,
        in15 => tempRegister_Q15,
        S => TA,
        Z => A
    );

    Mux16_B: RF_Mux16_32Bit_20332706 Port Map (
        in00 => mux32_B_Out,
        in01 => tempRegister_Q01,
        in02 => tempRegister_Q02,
        in03 => tempRegister_Q03,
        in04 => tempRegister_Q04,
        in05 => tempRegister_Q05,
        in06 => tempRegister_Q06,
        in07 => tempRegister_Q07,
        in08 => tempRegister_Q08,
        in09 => tempRegister_Q09,
        in10 => tempRegister_Q10,
        in11 => tempRegister_Q11,
        in12 => tempRegister_Q12,
        in13 => tempRegister_Q13,
        in14 => tempRegister_Q14,
        in15 => tempRegister_Q15,
        S => TB,
        Z => B
    );


end Behavioral;