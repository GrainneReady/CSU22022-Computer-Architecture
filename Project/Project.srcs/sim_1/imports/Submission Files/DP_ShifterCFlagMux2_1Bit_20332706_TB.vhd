library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_ShifterCFlagMux2_1Bit_20332706_TB is
end DP_ShifterCFlagMux2_1Bit_20332706_TB;

architecture Behavioural of DP_ShifterCFlagMux2_1Bit_20332706_TB is
    component DP_ShifterCFlagMux2_1Bit_20332706
        Port (
            LSB, MSB : in STD_LOGIC;
            S1, S2 : in STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;

    signal LSB_TB, MSB_TB, S1_TB, S2_TB, C_TB : STD_LOGIC := '0';

    begin
        uut: DP_ShifterCFlagMux2_1Bit_20332706 Port Map (
            LSB => LSB_TB,
            MSB => MSB_TB,
            S1 => S1_TB,
            S2 => S2_TB,
            C => C_TB
        );
        stim: process
        begin
        LSB_TB <= '1';
        MSB_TB <= '0';
        
        S2_TB <= '0';
        S1_TB <= '0';
        wait for 10ns; -- Output 0's

        S2_TB <= '0';
        S1_TB <= '1';
        wait for 10ns; -- Output LSB

        S2_TB <= '1';
        S1_TB <= '0';
        wait for 10ns; -- Output MSB
        -- There is no case for S1 = 1 and S2 = 1
        end process;
    end Behavioural;