library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DP_SingleBit_B_Logic_20332706_TB is
end DP_SingleBit_B_Logic_20332706_TB;

architecture Behavioural of DP_SingleBit_B_Logic_20332706_TB is
    component DP_SingleBit_B_Logic_20332706
    Port (
        B, S0, S1 : in std_logic;
        Y : out std_logic
    );
    end component;

    --Inputs
    signal B_TB, S0_TB, S1_TB : std_logic := '0';

    --Outputs
    signal Y_TB : std_logic := '0';

    begin
    uut: DP_SingleBit_B_Logic_20332706
    Port Map (
        B => B_TB,
        S0 => S0_TB,
        S1 => S1_TB,
        Y => Y_TB
    );

    stim: process
    begin

        B_TB <= '0';
        S1_TB <= '0';
        S0_TB <= '0';
        wait for 10ns;

        B_TB <= '0';
        S1_TB <= '0';
        S0_TB <= '1';
        wait for 10ns;
        
        B_TB <= '0';
        S1_TB <= '1';
        S0_TB <= '0';
        wait for 10ns;
        
        B_TB <= '0';
        S1_TB <= '1';
        S0_TB <= '1';
        wait for 10ns;
        
        B_TB <= '1';
        S1_TB <= '0';
        S0_TB <= '0';
        wait for 10ns;
        
        B_TB <= '1';
        S1_TB <= '0';
        S0_TB <= '1';
        wait for 10ns;
        
        B_TB <= '1';
        S1_TB <= '1';
        S0_TB <= '0';
        wait for 10ns;
        
        B_TB <= '1';
        S1_TB <= '1';
        S0_TB <= '1';
        wait for 10ns;
    end process;

    end Behavioural;
    

