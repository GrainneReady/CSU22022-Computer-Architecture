library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_FullAdder_20332706_TB is
end DP_FullAdder_20332706_TB;

architecture Behavioral of DP_FullAdder_20332706_TB is
    component DP_FullAdder_20332706
        Port (
            A, B, C_IN : in std_logic;
            C_OUT, SUM : out std_logic
        );
    end component;

    signal A_TB, B_TB, C_IN_TB, C_OUT_TB, SUM_TB : std_logic := '0';

begin
    uut: DP_FullAdder_20332706
        Port Map (
            A => A_TB,
            B => B_TB,
            C_IN => C_IN_TB,
            C_OUT => C_OUT_TB,
            SUM => SUM_TB
        );

        stim: process
        begin


        C_IN_TB <= '0';
        B_TB <= '0';
        A_TB <= '0';
        wait for 20ns;

        C_IN_TB <= '0';
        B_TB <= '0';
        A_TB <= '1';
        wait for 20ns;

        C_IN_TB <= '0';
        B_TB <= '1';
        A_TB <= '0';
        wait for 20ns;

        C_IN_TB <= '0';
        B_TB <= '1';
        A_TB <= '1';
        wait for 20ns;

        C_IN_TB <= '1';
        B_TB <= '0';
        A_TB <= '0';
        wait for 20ns;

        C_IN_TB <= '1';
        B_TB <= '0';
        A_TB <= '1';
        wait for 20ns;

        C_IN_TB <= '1';
        B_TB <= '1';
        A_TB <= '0';
        wait for 20ns;

        C_IN_TB <= '1';
        B_TB <= '1';
        A_TB <= '1';
        wait for 20ns;
    end process;
end Behavioral;