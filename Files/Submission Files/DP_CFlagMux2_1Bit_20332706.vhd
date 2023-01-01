library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_CFlagMux2_1Bit_20332706 is
    Port (
        C_ALU, C_Shift, FS4 : in STD_LOGIC;
        C : out STD_LOGIC
    );
end DP_CFlagMux2_1Bit_20332706;

architecture Behavioural of DP_CFlagMux2_1Bit_20332706 is
    begin
        C <= C_ALU when FS4 = '0' else
             C_Shift when FS4 = '1' else
             'U';
    end Behavioural;