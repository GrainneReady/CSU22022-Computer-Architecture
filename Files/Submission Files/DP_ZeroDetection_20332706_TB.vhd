library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DP_ZeroDetection_20332706_TB is
end DP_ZeroDetection_20332706_TB;

architecture Behavioural of DP_ZeroDetection_20332706_TB is
    component DP_ZeroDetection_20332706
    Port (
        MuxF_to_F : in STD_LOGIC_VECTOR (31 downto 0);
        Z : out STD_LOGIC
    );
    end component;
    signal MuxF_to_F_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal Z_TB : STD_LOGIC := '0';
    begin
        uut: DP_ZeroDetection_20332706 Port Map (
            MuxF_to_F => MuxF_to_F_TB,
            Z => Z_TB
        );

        stim: process
        begin
            MuxF_to_F_TB <= "00000001001101100100000010100010"; -- Student number (20332706) will output 0
            wait for 10ns;
            
            MuxF_to_F_TB <= "00000000000000000000000000000000"; -- Will Output 1
            wait for 10ns;

            MuxF_to_F_TB <= "11111111111111111111111111111111"; -- Will Output 0
            wait for 10ns;

            MuxF_to_F_TB <= "11110000111100001111000011110000"; -- Will Output 0
            wait for 10ns;
        end process;
    end Behavioural;