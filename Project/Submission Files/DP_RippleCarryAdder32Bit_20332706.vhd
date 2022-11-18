library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_RippleCarryAdder32Bit_20332706 is
    Port (
        A, B : in std_logic_vector (31 downto 0);
        C_IN : in std_logic;
        SUM : out std_logic_vector (31 downto 0);
        C_OUT, V : out std_logic
    );
end DP_RippleCarryAdder32Bit_20332706;

architecture Behavioural of DP_RippleCarryAdder32Bit_20332706 is
    component DP_FullAdder_20332706
        Port (
            A, B, C_IN : in std_logic;
            SUM, C_OUT : out std_logic
        );
    end component;

    signal C_OUT0, C_OUT1, C_OUT2, C_OUT3, C_OUT4, C_OUT5, C_OUT6, C_OUT7, C_OUT8, C_OUT9,
    C_OUT10, C_OUT11, C_OUT12, C_OUT13, C_OUT14, C_OUT15, C_OUT16, C_OUT17, C_OUT18, C_OUT19,
    C_OUT20, C_OUT21, C_OUT22, C_OUT23, C_OUT24, C_OUT25, C_OUT26, C_OUT27, C_OUT28, C_OUT29,
    C_OUT30, C_OUT31 : std_logic;

    begin

    BIT00: DP_FullAdder_20332706 Port Map (
      A => A(0),
      B => B(0), 
      C_IN => C_IN, 
      SUM => SUM(0), 
      C_OUT => C_OUT0
    );
    BIT01: DP_FullAdder_20332706 Port Map (
      A => A(1),
      B => B(1),
      C_IN => C_OUT0,
      SUM => SUM(1),
      C_OUT => C_OUT1
    );
    BIT02: DP_FullAdder_20332706 Port Map (
      A => A(2),
      B => B(2),
      C_IN => C_OUT1,
      SUM => SUM(2),
      C_OUT => C_OUT2
    );
    BIT03: DP_FullAdder_20332706 Port Map (
      A => A(3),
      B => B(3),
      C_IN => C_OUT2,
      SUM => SUM(3),
      C_OUT => C_OUT3
    );
    BIT04: DP_FullAdder_20332706 Port Map (
      A => A(4),
      B => B(4),
      C_IN => C_OUT3,
      SUM => SUM(4),
      C_OUT => C_OUT4
    );
    BIT05: DP_FullAdder_20332706 Port Map (
      A => A(5),
      B => B(5),
      C_IN => C_OUT4,
      SUM => SUM(5),
      C_OUT => C_OUT5
    );
    BIT06: DP_FullAdder_20332706 Port Map (
      A => A(6),
      B => B(6),
      C_IN => C_OUT5,
      SUM => SUM(6),
      C_OUT => C_OUT6
    );
    BIT07: DP_FullAdder_20332706 Port Map (
      A => A(7),
      B => B(7),
      C_IN => C_OUT6,
      SUM => SUM(7),
      C_OUT => C_OUT7
    );
    BIT08: DP_FullAdder_20332706 Port Map (
      A => A(8),
      B => B(8),
      C_IN => C_OUT7,
      SUM => SUM(8),
      C_OUT => C_OUT8
    );
    BIT09: DP_FullAdder_20332706 Port Map (
      A => A(9),
      B => B(9),
      C_IN => C_OUT8,
      SUM => SUM(9),
      C_OUT => C_OUT9
    );
    BIT10: DP_FullAdder_20332706 Port Map (
      A => A(10),
      B => B(10),
      C_IN => C_OUT9,
      SUM => SUM(10),
      C_OUT => C_OUT10
    );
    BIT11: DP_FullAdder_20332706 Port Map (
      A => A(11),
      B => B(11),
      C_IN => C_OUT10,
      SUM => SUM(11),
      C_OUT => C_OUT11
    );
    BIT12: DP_FullAdder_20332706 Port Map (
      A => A(12),
      B => B(12),
      C_IN => C_OUT11,
      SUM => SUM(12),
      C_OUT => C_OUT12
    );
    BIT13: DP_FullAdder_20332706 Port Map (
      A => A(13),
      B => B(13),
      C_IN => C_OUT12,
      SUM => SUM(13),
      C_OUT => C_OUT13
    );
    BIT14: DP_FullAdder_20332706 Port Map (
      A => A(14),
      B => B(14),
      C_IN => C_OUT13,
      SUM => SUM(14),
      C_OUT => C_OUT14
    );
    BIT15: DP_FullAdder_20332706 Port Map (
      A => A(15),
      B => B(15),
      C_IN => C_OUT14,
      SUM => SUM(15),
      C_OUT => C_OUT15
    );
    BIT16: DP_FullAdder_20332706 Port Map (
      A => A(16),
      B => B(16),
      C_IN => C_OUT15,
      SUM => SUM(16),
      C_OUT => C_OUT16
    );
    BIT17: DP_FullAdder_20332706 Port Map (
      A => A(17),
      B => B(17),
      C_IN => C_OUT16,
      SUM => SUM(17),
      C_OUT => C_OUT17
    );
    BIT18: DP_FullAdder_20332706 Port Map (
      A => A(18),
      B => B(18),
      C_IN => C_OUT17,
      SUM => SUM(18),
      C_OUT => C_OUT18
    );
    BIT19: DP_FullAdder_20332706 Port Map (
      A => A(19),
      B => B(19),
      C_IN => C_OUT18,
      SUM => SUM(19),
      C_OUT => C_OUT19
    );
    BIT20: DP_FullAdder_20332706 Port Map (
      A => A(20),
      B => B(20),
      C_IN => C_OUT19,
      SUM => SUM(20),
      C_OUT => C_OUT20
    );
    BIT21: DP_FullAdder_20332706 Port Map (
      A => A(21),
      B => B(21),
      C_IN => C_OUT20,
      SUM => SUM(21),
      C_OUT => C_OUT21
    );
    BIT22: DP_FullAdder_20332706 Port Map (
      A => A(22),
      B => B(22),
      C_IN => C_OUT21,
      SUM => SUM(22),
      C_OUT => C_OUT22
    );
    BIT23: DP_FullAdder_20332706 Port Map (
      A => A(23),
      B => B(23),
      C_IN => C_OUT22,
      SUM => SUM(23),
      C_OUT => C_OUT23
    );
    BIT24: DP_FullAdder_20332706 Port Map (
      A => A(24),
      B => B(24),
      C_IN => C_OUT23,
      SUM => SUM(24),
      C_OUT => C_OUT24
    );
    BIT25: DP_FullAdder_20332706 Port Map (
      A => A(25),
      B => B(25),
      C_IN => C_OUT24,
      SUM => SUM(25),
      C_OUT => C_OUT25
    );
    BIT26: DP_FullAdder_20332706 Port Map (
      A => A(26),
      B => B(26),
      C_IN => C_OUT25,
      SUM => SUM(26),
      C_OUT => C_OUT26
    );
    BIT27: DP_FullAdder_20332706 Port Map (
      A => A(27),
      B => B(27),
      C_IN => C_OUT26,
      SUM => SUM(27),
      C_OUT => C_OUT27
    );
    BIT28: DP_FullAdder_20332706 Port Map (
      A => A(28),
      B => B(28),
      C_IN => C_OUT27,
      SUM => SUM(28),
      C_OUT => C_OUT28
    );
    BIT29: DP_FullAdder_20332706 Port Map (
      A => A(29),
      B => B(29),
      C_IN => C_OUT28,
      SUM => SUM(29),
      C_OUT => C_OUT29
    );
    BIT30: DP_FullAdder_20332706 Port Map (
      A => A(30),
      B => B(30),
      C_IN => C_OUT29,
      SUM => SUM(30),
      C_OUT => C_OUT30
    );
    BIT31: DP_FullAdder_20332706 Port Map (
      A => A(31),
      B => B(31),
      C_IN => C_OUT30,
      SUM => SUM(31),
      C_OUT => C_OUT31
    );

    C_OUT <= C_OUT31;
    V <= C_OUT31 xor C_OUT30;


    end Behavioural;