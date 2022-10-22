library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_SingleBit_LogicCircuit_20332706 is
    Port (
        A, B, S0, S1 : in STD_LOGIC;
        G : out STD_LOGIC
    );
end DP_SingleBit_LogicCircuit_20332706;

architecture Behavioural of DP_SingleBit_LogicCircuit_20332706 is
    component DP_Mux_4_to_1_20332706 is
        Port (
            in0, in1, in2, in3 : in STD_LOGIC;
            S0, S1 : in STD_LOGIC;
            G : out STD_LOGIC
        );
    end component;

    begin
        uut: DP_Mux_4_to_1_20332706 Port Map(
            in0 =>(A and B),
            in1 => (A or B),
            in2 => (A xor B),
            in3 => (not A),
            S0 => S0,
            S1 => S1,
            G => G
        );

    end Behavioural;