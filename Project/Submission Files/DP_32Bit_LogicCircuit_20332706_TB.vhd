library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_32Bit_LogicCircuit_20332706_TB is
end DP_32Bit_LogicCircuit_20332706_TB;

architecture Behavioural of DP_32Bit_LogicCircuit_20332706_TB is
    component DP_32Bit_LogicCircuit_20332706 is
        Port (
            A, B : in STD_LOGIC_VECTOR (31 downto 0);
            S0, S1 : in STD_LOGIC;
            G : out STD_LOGIC_VECTOR
        );
    end component;

    --Inputs
    signal A_TB, B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal S0_TB, S1_TB : STD_LOGIC := '0';

    --Outputs
    signal G_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

    begin
        uut: DP_32Bit_LogicCircuit_20332706 PORT MAP (
            A => A_TB,
            B => B_TB,
            S0 => S0_TB,
            S1 => S1_TB,
            G => G_TB
        );
        stim: process
        begin
        A_TB <= x"013640A2"; -- Student number (20332706)
        B_TB <= x"05A466C3"; -- 94660291 in decimal
        -- Delay of 96 ns calculated by each single logic circuit bit having a delay of 3ns, 3ns x 32 = 96ns
        S1_TB <= '0';
        S0_TB <= '0';
        wait for 96ns;

        S1_TB <= '0';
        S0_TB <= '1';
        wait for 96ns;

        S1_TB <= '1';
        S0_TB <= '0';
        wait for 96ns;
        
        S1_TB <= '1';
        S0_TB <= '1';
        wait for 96ns;
        end process;
    end Behavioural;