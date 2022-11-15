library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RF_RegisterFile_32_15_20332706 is
    Port(
        SA, DR, SB : in std_logic_vector (4 downto 0);
        TB, TD, TA : in std_logic_vector (3 downto 0);
        Clock, RW : in std_logic;
        D : in std_logic_vector (31 downto 0)
    );
end RF_RegisterFile_32_15_20332706;

architecture Behavioral of RF_RegisterFile_32_15_20332706 is

    signal register_Q00, register_Q01, register_Q02, register_Q03, register_Q04, register_Q05, register_Q06, register_Q07, register_Q08, register_Q09, register_Q10, register_Q11, 
    register_Q12, register_Q13, register_Q14, register_Q15, register_Q16, register_Q17, register_Q18, register_Q19, register_Q20, register_Q21, register_Q22, register_Q23, register_Q24,
    register_Q25, register_Q26, register_Q27, register_Q28, register_Q29, register_Q30, register_Q31, load,
    tempRegister_Q01, tempRegister_Q02, tempRegister_Q03, tempRegister_Q04, tempRegister_Q05, tempRegister_Q06, tempRegister_Q07, tempRegister_Q08, tempRegister_Q09,
    tempRegister_Q10, tempRegister_Q11,, tempRegister_Q12, tempRegister_Q13, tempRegister_Q14, tempRegister_Q15, A, B : std_logic_vector(31 downto 0);

    component RF_Register32Bit_20332706
        Port (
            Data : in std_logic_vector(31 downto 0);
            Clock, Load in std_logic;
            Q : out std_logic_vector(31 downto 0)
        );
    end component;

    component RF_DestReg_Decoder_20332706
        Port( A : in std_logic_vector(4 downto 0);
              D : out std_logic_vector(31 downto 0)
        );
    end component;

    component RF_DestReg_Decoder_20332706
        Port ( 
            A : in std_logic_vector(3 downto 0);
            D : out std_logic_vector(15 downto 0)
       );
    end component;

begin
    -- Register 1
    Register00: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(0),
            Clock => Clock,
            Q => register_Q00
    );

    Register01: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(1),
            Clock => Clock,
            Q => register_Q01
    );

    Register02: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(2),
            Clock => Clock,
            Q => register_Q02
    );

    Register03: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(3),
            Clock => Clock,
            Q => register_Q03
    );

    Register04: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(4),
            Clock => Clock,
            Q => register_Q04
    );

    Register05: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(5),
            Clock => Clock,
            Q => register_Q05
    );

    Register06: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(6),
            Clock => Clock,
            Q => register_Q06
    );

    Register07: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(7) and RW,
            Clock => Clock,
            Q => register_Q07
    );

    Register08: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(8) and RW,
            Clock => Clock,
            Q => register_Q08
    );

    Register09: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(9) and RW,
            Clock => Clock,
            Q => register_Q09
    );

    Register10: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(10) and RW,
            Clock => Clock,
            Q => register_Q10
    );

    Register11: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(11) and RW,
            Clock => Clock,
            Q => register_Q11
    );

    Register12: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(12) and RW,
            Clock => Clock,
            Q => register_Q12
    );

    Register13: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(13) and RW,
            Clock => Clock,
            Q => register_Q13
    );

    Register14: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(14),
            Clock => Clock,
            Q => register_Q14
    );

    Register15: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(15),
            Clock => Clock,
            Q => register_Q15
    );

    Register16: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(16),
            Clock => Clock,
            Q => register_Q16
    );

    Register17: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(17),
            Clock => Clock,
            Q => register_Q17
    );

    Register18: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(18),
            Clock => Clock,
            Q => register_Q18
    );

    Register19: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(19),
            Clock => Clock,
            Q => register_Q19
    );

    Register20: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(20),
            Clock => Clock,
            Q => register_Q20
    );

    Register21: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(21),
            Clock => Clock,
            Q => register_Q21
    );

    Register22: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(22),
            Clock => Clock,
            Q => register_Q22
    );

    Register23: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(23),
            Clock => Clock,
            Q => register_Q23
    );

    Register24: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(24),
            Clock => Clock,
            Q => register_Q24
    );

    Register25: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(25),
            Clock => Clock,
            Q => register_Q25
    );

    Register26: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(26),
            Clock => Clock,
            Q => register_Q26
    );

    Register27: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(27),
            Clock => Clock,
            Q => register_Q27
    );

    Register28: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(28),
            Clock => Clock,
            Q => register_Q28
    );

    Register29: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(29),
            Clock => Clock,
            Q => register_Q29
    );

    Register30: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(30),
            Clock => Clock,
            Q => register_Q30
    );

    Register31: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => load(31),
            Clock => Clock,
            Q => register_Q31
    );

    TempReg01: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q01
    );

    TempReg02: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q02
    );

    TempReg03: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q03
    );

    TempReg04: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q04
    );

    TempReg05: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q05
    );

    TempReg06: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q06
    );

    TempReg07: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q07
    );

    TempReg08: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q08
    );

    TempReg09: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q09
    );

    TempReg10: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q10
    );

    TempReg11: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q11
    );

    TempReg12: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q12
    );

    TempReg13: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q13
    );

    TempReg14: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => RWb
            Clock => Clock,
            Q => tempRegister_Q14
    );

    TempReg15: RF_Register32Bit_20332706 Port Map (
            Data => Data,
            Load => ?
            Clock => Clock,
            Q => tempRegister_Q15
    );



end Behavioral;