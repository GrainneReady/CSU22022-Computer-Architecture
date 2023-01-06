library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_ShifterCFlagMux2_1Bit_20332706 is
    Port (
        LSB, MSB : in STD_LOGIC;
        S1, S2 : in STD_LOGIC;
        C : out STD_LOGIC
    );
end DP_ShifterCFlagMux2_1Bit_20332706;

architecture Behavioural of DP_ShifterCFlagMux2_1Bit_20332706 is
    begin --LSB is right-most bit, MSB is left-most bit
        C <= '0' after 3ns when S1 = '0' and S2 = '0' else
             MSB after 3ns when S1 = '0' and S2 = '1' else
             LSB after 3ns when S1 = '1' and S2 = '0' else
             '0' after 3ns when S1 = '1' and S2 = '1';
    end Behavioural;