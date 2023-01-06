library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity DP_32Bit_B_Logic_20332706_TB is
end DP_32Bit_B_Logic_20332706_TB;

architecture Behavioural of DP_32Bit_B_Logic_20332706_TB is
    component DP_32Bit_B_Logic_20332706
    Port (
        B : in STD_LOGIC_VECTOR (31 downto 0);
        S0, S1 : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (31 downto 0)
    );
    end component;

    --Inputs
    signal B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal S0_TB, S1_TB : STD_LOGIC := '0';
    
    --Outputs
    signal Y_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');


    begin
        uut: DP_32Bit_B_Logic_20332706
        Port Map (
            B => B_TB,
            S0 => S0_TB,
            S1 => S1_TB,
            Y => Y_TB  
        );

        stim: process
        begin
        B_TB <= "00000001001101100100000010100010"; -- 20332706

        -- Test A: Output 0's
        S1_TB <= '0';
        S0_TB <= '0';
        wait for 50ns;

        -- Test B: Output student number (20332706)
        S1_TB <= '0';
        S0_TB <= '1';
        wait for 50ns;

        -- Test C: Output negated student number (-20332706)
        S1_TB <= '1';
        S0_TB <= '0';
        wait for 50ns;

        -- Test D: Output all 1's
        S1_TB <= '1';
        S0_TB <= '1';
        wait for 50ns;

        end process;
    end Behavioural;
