library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_ArithmeticLogicUnit_20332706 is
    Port (
        A, B : in STD_LOGIC_VECTOR (31 downto 0);
        C_IN, S0, S1, S2 : in STD_LOGIC;
        C, V : out STD_LOGIC;
        G : out STD_LOGIC_VECTOR (31 downto 0)
    );
end DP_ArithmeticLogicUnit_20332706;

architecture Behavioural of DP_ArithmeticLogicUnit_20332706 is
    component DP_32Bit_B_Logic_20332706
        Port (
            B : in STD_LOGIC_VECTOR (31 downto 0);
            S0, S1 : in STD_LOGIC;
            Y : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    component DP_RippleCarryAdder32Bit_20332706
        Port (
            A, B : in std_logic_vector (31 downto 0);
            C_IN : in std_logic;
            SUM : out std_logic_vector (31 downto 0);
            C_OUT, V : out std_logic
        );
    end component;

    component DP_32Bit_LogicCircuit_20332706
        Port (
            A, B : in STD_LOGIC_VECTOR (31 downto 0);
            S0, S1 : in STD_LOGIC;
            G : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    component CPU_Mux2_32Bit_20332706
        Port(
            in0, in1 : in STD_LOGIC_VECTOR (31 downto 0);
            Sel : in STD_LOGIC;
            Z : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    signal Y, SUM, LogicCircuitOut : std_logic_vector(31 downto 0);
    begin
        BLogic: DP_32Bit_B_Logic_20332706 Port Map (
            B => B,
            S0 => S0,
            S1 => S1,
            Y => Y
        );

        Adder: DP_RippleCarryAdder32Bit_20332706 Port Map (
            A => A,
            B => Y,
            C_IN => C_IN,
            C_OUT => C,
            SUM => SUM,
            V => V
        );

        LogicCircuit: DP_32Bit_LogicCircuit_20332706 Port Map (
            A => A,
            B => B,
            S0 => S0,
            S1 => S1,
            G => LogicCircuitOut
        );

        ALUMux: CPU_Mux2_32Bit_20332706 Port Map (
            in0 => SUM,
            in1 => LogicCircuitOut,
            Sel => S2,
            Z => G
        );

    end Behavioural;
