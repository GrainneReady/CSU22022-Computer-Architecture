library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Mux_4_to_1_20332706 is
    Port (
        in0, in1, in2, in3 : in STD_LOGIC;
        S0, S1 : in STD_LOGIC;
        G : out STD_LOGIC
    );
end DP_Mux_4_to_1_20332706;

architecture Behavioural of DP_Mux_4_to_1_20332706 is
    begin
        G <= in0 after 3ns when S1 = '0' and S0 = '0' else
             in1 after 3ns when S1 = '0' and S0 = '1' else
             in2 after 3ns when S1 = '1' and S0 = '0' else
             in3 after 3ns when S1 = '1' and S0 = '1' else
             '0' after 3ns;
    end Behavioural;