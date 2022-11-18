library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_ArithmeticLogicUnit_20332706_TB is
end DP_ArithmeticLogicUnit_20332706_TB;

architecture Behavioural of DP_ArithmeticLogicUnit_20332706_TB is
    component DP_ArithmeticLogicUnit_20332706
        Port (
            A, B : in STD_LOGIC_VECTOR (31 downto 0);
            C_IN, S0, S1, S2 : in STD_LOGIC;
            C, V : out STD_LOGIC;
            G : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    -- Inputs
    signal A_TB, B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal C_IN_TB, S0_TB, S1_TB, S2_TB : STD_LOGIC := '0';

    -- Outputs
    signal C_TB, V_TB : STD_LOGIC := '0';
    signal G_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

    begin
        uut: DP_ArithmeticLogicUnit_20332706 Port Map (
            A => A_TB,
            B => B_TB,
            C_IN => C_IN_TB,
            S0 => S0_TB,
            S1 => S1_TB,
            S2 => S2_TB,
            C => C_TB,
            V => V_TB,
            G => G_TB
        );

        stim: process
        begin
            A_TB <= "00000001001101100100000010100010"; -- Student Number (20332706)
            B_TB <= "00000000000000000000000000001111"; -- (19962002)
            
            S2_TB <= '0';
            S1_TB <= '0';
            S0_TB <= '0';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A

            S2_TB <= '0';
            S1_TB <= '0';
            S0_TB <= '0';
            C_IN_TB <= '1';
            wait for 50ns; -- Output A + 1

            S2_TB <= '0';
            S1_TB <= '0';
            S0_TB <= '1';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A + B

            S2_TB <= '0';
            S1_TB <= '0';
            S0_TB <= '1';
            C_IN_TB <= '1';
            wait for 50ns; -- Output A + B + 1
            
            S2_TB <= '0';
            S1_TB <= '1';
            S0_TB <= '0';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A + 1's compliment(B) [1's Compliment: -16]

            S2_TB <= '0';
            S1_TB <= '1';
            S0_TB <= '0';
            C_IN_TB <= '1';
            wait for 50ns; -- Output A + 1's complement(B) + 1

            S2_TB <= '0';
            S1_TB <= '1';
            S0_TB <= '1';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A - 1

            S2_TB <= '0';
            S1_TB <= '1';
            S0_TB <= '1';
            C_IN_TB <= '1';
            wait for 50ns; -- Output A

            S2_TB <= '1';
            S1_TB <= '0';
            S0_TB <= '0';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A AND B

            S2_TB <= '1';
            S1_TB <= '0';
            S0_TB <= '1';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A OR B

            S2_TB <= '1';
            S1_TB <= '1';
            S0_TB <= '0';
            C_IN_TB <= '0';
            wait for 50ns; -- Output A XOR B

            S2_TB <= '1';
            S1_TB <= '1';
            S0_TB <= '1';
            C_IN_TB <= '0';
            wait for 50ns; -- Output NOT A

        end process;
    end Behavioural;
