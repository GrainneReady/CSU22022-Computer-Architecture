library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_SingleBit_B_Logic_20332706 is
    Port (
        B, S0, S1 : in std_logic;
        Y : out std_logic
    );
end DP_SingleBit_B_Logic_20332706;

architecture Behavioural of DP_SingleBit_B_Logic_20332706 is
    begin
        Y <= (S0 and B) or (S1 and not B);
    end Behavioural;