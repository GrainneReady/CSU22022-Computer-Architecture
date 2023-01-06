library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_ZeroDetection_20332706 is
    Port (
        MuxF_to_F : in STD_LOGIC_VECTOR (31 downto 0);
        Z : out STD_LOGIC
    );
end DP_ZeroDetection_20332706;

architecture Behavioural of DP_ZeroDetection_20332706 is
    begin
    
        Z <= '1' after 3ns when MuxF_to_F = "00000000000000000000000000000000" else
             '0' after 3ns;
    end Behavioural;