library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_SingleBit_LogicCircuit_20332706_TB is
end DP_SingleBit_LogicCircuit_20332706_TB;

architecture Behavioural of DP_SingleBit_LogicCircuit_20332706_TB is
    component DP_SingleBit_LogicCircuit_20332706 is
        Port (
            A, B, S0, S1 : in STD_LOGIC;
            G : out STD_LOGIC
        );
    end component;
    signal A_TB, B_TB, S0_TB, S1_TB, G_TB : STD_LOGIC := '0';

    begin
        uut: DP_SingleBit_LogicCircuit_20332706 Port Map (
            A => A_TB,
            B => B_TB,
            S0 => S0_TB,
            S1 => S1_TB,
            G => G_TB
        );

        stim: process
        begin
            A_TB <= '1';
            B_TB <= '1';
            
            S1_TB <= '0'; --in0
            S0_TB <= '0';
            wait for 6ns;
            
            S1_TB <= '0'; --in1
            S0_TB <= '1';
            wait for 6ns;

            S1_TB <= '1'; --in2
            S0_TB <= '0';
            wait for 6ns;

            S1_TB <= '1'; --in3
            S0_TB <= '1';
            wait for 6ns;

        end process;
    end Behavioural;