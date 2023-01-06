library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Mux3_1Bit_20332706_TB is
end DP_Mux3_1Bit_20332706_TB;

architecture Behavioural of DP_Mux3_1Bit_20332706_TB is
    component DP_Mux3_1Bit_20332706
        Port (
            Bi, slBi, srBi : in STD_LOGIC;
            S1, S2 : in STD_LOGIC;
            Gi : out STD_LOGIC
        );
    end component;

    signal Bi_TB, slBi_TB, srBi_TB, S1_TB, S2_TB, G_TB : STD_LOGIC := '0';
    begin
        uut: DP_Mux3_1Bit_20332706 Port Map (
            Bi => Bi_TB,
            slBi => slBi_TB,
            srBi => srBi_TB,
            S1 => S1_TB,
            S2 => S2_TB,
            Gi => G_TB
        );
        stim: process
        begin
        Bi_TB <= '1';
        slBi_TB <= '0';
        srBi_TB <= '1';
        S2_TB <= '0';
        S1_TB <= '0';
        wait for 15ns; -- G = Bi

        S2_TB <= '0';
        S1_TB <= '1';
        wait for 15ns; -- G = srBi

        S2_TB <= '1';
        S1_TB <= '0';
        wait for 15ns; -- G = slBi

        S2_TB <= '1';
        S1_TB <= '1';
        wait for 15ns; -- G = '0'
        end process;
    end Behavioural;