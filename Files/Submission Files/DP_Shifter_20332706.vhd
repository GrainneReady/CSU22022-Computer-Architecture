library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Shifter_20332706 is
    Port (
        B : in STD_LOGIC_VECTOR (31 downto 0);
        S1, S2 : in STD_LOGIC;
        G : out STD_LOGIC_VECTOR (31 downto 0);
        C : out STD_LOGIC
    );
end DP_Shifter_20332706;

architecture Behavioural of DP_Shifter_20332706 is
    component DP_Mux3_1Bit_20332706
        Port (
            Bi, slBi, srBi : in STD_LOGIC;
            S1, S2 : in STD_LOGIC;
            Gi : out STD_LOGIC
        );
    end component;

    component DP_ShifterCFlagMux2_1Bit_20332706
        Port (
            LSB, MSB : in STD_LOGIC;
            S1, S2 : in STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;
    begin
    BIT00: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(0),
      slBi => '0',
      srBi => B(1),
      S1 => S1,
      S2 => S2,
      Gi => G(0)
    );

    BIT01: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(1),
      slBi => B(0),
      srBi => B(2),
      S1 => S1,
      S2 => S2,
      Gi => G(1)
    );

    BIT02: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(2),
      slBi => B(1),
      srBi => B(3),
      S1 => S1,
      S2 => S2,
      Gi => G(2)
    );

    BIT03: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(3),
      slBi => B(2),
      srBi => B(4),
      S1 => S1,
      S2 => S2,
      Gi => G(3)
    );

    BIT04: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(4),
      slBi => B(3),
      srBi => B(5),
      S1 => S1,
      S2 => S2,
      Gi => G(4)
    );

    BIT05: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(5),
      slBi => B(4),
      srBi => B(6),
      S1 => S1,
      S2 => S2,
      Gi => G(5)
    );

    BIT06: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(6),
      slBi => B(5),
      srBi => B(7),
      S1 => S1,
      S2 => S2,
      Gi => G(6)
    );

    BIT07: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(7),
      slBi => B(6),
      srBi => B(8),
      S1 => S1,
      S2 => S2,
      Gi => G(7)
    );

    BIT08: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(8),
      slBi => B(7),
      srBi => B(9),
      S1 => S1,
      S2 => S2,
      Gi => G(8)
    );

    BIT09: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(9),
      slBi => B(8),
      srBi => B(10),
      S1 => S1,
      S2 => S2,
      Gi => G(9)
    );

    BIT10: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(10),
      slBi => B(9),
      srBi => B(11),
      S1 => S1,
      S2 => S2,
      Gi => G(10)
    );

    BIT11: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(11),
      slBi => B(10),
      srBi => B(12),
      S1 => S1,
      S2 => S2,
      Gi => G(11)
    );

    BIT12: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(12),
      slBi => B(11),
      srBi => B(13),
      S1 => S1,
      S2 => S2,
      Gi => G(12)
    );

    BIT13: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(13),
      slBi => B(12),
      srBi => B(14),
      S1 => S1,
      S2 => S2,
      Gi => G(13)
    );

    BIT14: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(14),
      slBi => B(13),
      srBi => B(15),
      S1 => S1,
      S2 => S2,
      Gi => G(14)
    );

    BIT15: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(15),
      slBi => B(14),
      srBi => B(16),
      S1 => S1,
      S2 => S2,
      Gi => G(15)
    );

    BIT16: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(16),
      slBi => B(15),
      srBi => B(17),
      S1 => S1,
      S2 => S2,
      Gi => G(16)
    );

    BIT17: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(17),
      slBi => B(16),
      srBi => B(18),
      S1 => S1,
      S2 => S2,
      Gi => G(17)
    );

    BIT18: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(18),
      slBi => B(17),
      srBi => B(19),
      S1 => S1,
      S2 => S2,
      Gi => G(18)
    );

    BIT19: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(19),
      slBi => B(18),
      srBi => B(20),
      S1 => S1,
      S2 => S2,
      Gi => G(19)
    );

    BIT20: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(20),
      slBi => B(19),
      srBi => B(21),
      S1 => S1,
      S2 => S2,
      Gi => G(20)
    );

    BIT21: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(21),
      slBi => B(20),
      srBi => B(22),
      S1 => S1,
      S2 => S2,
      Gi => G(21)
    );

    BIT22: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(22),
      slBi => B(21),
      srBi => B(23),
      S1 => S1,
      S2 => S2,
      Gi => G(22)
    );

    BIT23: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(23),
      slBi => B(22),
      srBi => B(24), 
      S1 => S1,
      S2 => S2,
      Gi => G(23)
    );

    BIT24: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(24),
      slBi => B(23),
      srBi => B(25),
      S1 => S1,
      S2 => S2,
      Gi => G(24)
    );

    BIT25: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(25),
      slBi => B(24),
      srBi => B(26),
      S1 => S1,
      S2 => S2,
      Gi => G(25)
    );

    BIT26: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(26),
      slBi => B(25),
      srBi => B(27),
      S1 => S1,
      S2 => S2,
      Gi => G(26)
    );

    BIT27: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(27),
      slBi => B(26),
      srBi => B(28),
      S1 => S1,
      S2 => S2,
      Gi => G(27)
    );

    BIT28: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(28),
      slBi => B(27),
      srBi => B(29),
      S1 => S1,
      S2 => S2,
      Gi => G(28)
    );

    BIT29: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(29),
      slBi => B(28),
      srBi => B(30),
      S1 => S1,
      S2 => S2,
      Gi => G(29)
    );

    BIT30: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(30),
      slBi => B(29),
      srBi => B(31),
      S1 => S1,
      S2 => S2,
      Gi => G(30)
    );

    BIT31: DP_Mux3_1Bit_20332706 Port Map (
      Bi => B(31),
      slBi => B(30),
      srBi => '0',
      S1 => S1,
      S2 => S2,
      Gi => G(31)
    );

    CFlagMux: DP_ShifterCFlagMux2_1Bit_20332706 Port Map (
        LSB => B(0),
        MSB => B(31),
        S1 => S1,
        S2 => S2,
        C => C
    );
    end Behavioural;