library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Shifter_20332706_TB is
end DP_Shifter_20332706_TB;

architecture Behavioural of DP_Shifter_20332706_TB is
    signal B_TB, G_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal S1_TB, S2_TB, C_TB : STD_LOGIC := '0';
    component DP_Shifter_20332706
        Port (
            B : in STD_LOGIC_VECTOR (31 downto 0);
            S1, S2 : in STD_LOGIC;
            G : out STD_LOGIC_VECTOR (31 downto 0);
            C : out STD_LOGIC
        );
    end component;

    begin
        uut: DP_Shifter_20332706 PORT MAP (
            B => B_TB,
            S1 => S1_TB,
            S2 => S2_TB,
            G => G_TB,
            C => C_TB
        );

        stim: process
        begin
        B_TB <= "00000001001101100100000010100010"; -- Student Number 20332706
        S2_TB <= '0';
        S1_TB <= '0';
        wait for 200ns; -- 20332706

        S2_TB <= '0';
        S1_TB <= '1';
        wait for 200ns; -- MSB

        S2_TB <= '1';
        S1_TB <= '0';
        wait for 200ns; -- LSB

        S2_TB <= '0';
        S1_TB <= '1'; -- MSB
        B_TB <= "11111111111111111111111111111111"; -- Setting C Flag
        wait for 200ns;

        S2_TB <= '1';
        S1_TB <= '0';
        wait for 200ns; -- LSB -- Unsetting C Flag
        
        S2_TB <= '1';
        S1_TB <= '1';
        wait for 200ns;
        end process;
    end Behavioural;