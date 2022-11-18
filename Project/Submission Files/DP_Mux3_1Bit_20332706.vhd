library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Mux3_1Bit_20332706 is
    Port (
        Bi, slBi, srBi : in STD_LOGIC;
        S1, S2 : in STD_LOGIC;
        Gi : out STD_LOGIC
    );
end DP_Mux3_1Bit_20332706;

architecture Behavioural of DP_Mux3_1Bit_20332706 is
    begin
        Gi <= Bi when S2 = '0' and S1 = '0' else
              srBi when S2 = '1' and S1 = '0' else
              slBi when S2 = '0' and S1 = '1';
    end Behavioural;