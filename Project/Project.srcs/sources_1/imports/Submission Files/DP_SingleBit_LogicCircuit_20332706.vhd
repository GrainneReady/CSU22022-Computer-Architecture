library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_SingleBit_LogicCircuit_20332706 is
    Port (
        A, B, S0, S1 : in STD_LOGIC;
        G : out STD_LOGIC
    );
end DP_SingleBit_LogicCircuit_20332706;

architecture Behavioural of DP_SingleBit_LogicCircuit_20332706 is
    signal in0, in1, in2, in3 : STD_LOGIC := '0';
    begin
        in0 <= (A and B);
        in1 <= (A or B);
        in2 <= (A xor B);
        in3 <= (not A);
        G <= in0 after 10ns when S1 = '0' and S0 = '0' else
             in1 after 10ns when S1 = '0' and S0 = '1' else
             in2 after 10ns when S1 = '1' and S0 = '0' else
             in3 after 10ns when S1 = '1' and S0 = '1' else
             '0' after 10ns;

    end Behavioural;