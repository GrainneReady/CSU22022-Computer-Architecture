library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_CFlagMux2_1Bit_20332706_TB is
end DP_CFlagMux2_1Bit_20332706_TB;

architecture Behavioural of DP_CFlagMux2_1Bit_20332706_TB is
    component DP_CFlagMux2_1Bit_20332706
        Port (
            C_ALU, C_Shift, FS4 : in STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;

    signal C_ALU_TB, C_Shift_TB, FS4_TB, C_TB : STD_LOGIC := '0';

    begin
        uut: DP_CFlagMux2_1Bit_20332706 PORT MAP (
            C_ALU => C_ALU_TB,
            C_Shift => C_Shift_TB,
            FS4 => FS4_TB,
            C => C_TB
        );

        stim: process
        begin
            
        C_ALU_TB <= '0';
        C_Shift_TB <= '1';
        FS4_TB <= '0';
        wait for 5ns;

        FS4_TB <= '1';
        wait for 5ns;
        end process;
    end Behavioural;