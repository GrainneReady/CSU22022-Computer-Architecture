library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux32_32Bit_20332706_TB is
end RF_Mux32_32Bit_20332706_TB;

architecture Behavioral of RF_Mux32_32Bit_20332706_TB is
    component RF_Mux32_32Bit_20332706
        Port (
            in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15, in16, in17, 
            in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
            S : in std_logic_vector(4 downto 0);
            Z : out std_logic_vector(31 downto 0)
        );
    end component;

    signal in00_TB, in01_TB, in02_TB, in03_TB, in04_TB, in05_TB, in06_TB, in07_TB, in08_TB, in09_TB, in10_TB, in11_TB, 
    in12_TB, in13_TB, in14_TB, in15_TB, in16_TB, in17_TB, in18_TB, in19_TB, in20_TB, in21_TB, in22_TB, in23_TB, in24_TB, 
    in25_TB, in26_TB, in27_TB, in28_TB, in29_TB, in30_TB, in31_TB, Z_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal S_TB : std_logic_vector(4 downto 0) := (others => '0');

    constant delay : time := 10ns;

begin
    uut: RF_Mux32_32Bit_20332706
        Port Map (
            in00 => in00_TB,
            in01 => in01_TB,
            in02 => in02_TB,
            in03 => in03_TB,
            in04 => in04_TB,
            in05 => in05_TB,
            in06 => in06_TB,
            in07 => in07_TB,
            in08 => in08_TB,
            in09 => in09_TB,
            in10 => in10_TB,
            in11 => in11_TB,
            in12 => in12_TB,
            in13 => in13_TB,
            in14 => in14_TB,
            in15 => in15_TB,
            in16 => in16_TB,
            in17 => in17_TB,
            in18 => in18_TB,
            in19 => in19_TB,
            in20 => in20_TB,
            in21 => in21_TB,
            in22 => in22_TB,
            in23 => in23_TB,
            in24 => in24_TB,
            in25 => in25_TB,
            in26 => in26_TB,
            in27 => in27_TB,
            in28 => in28_TB,
            in29 => in29_TB,
            in30 => in30_TB,
            in31 => in31_TB,
            S => S_TB,
            Z => Z_TB
        );

    stim: process
    begin
        in00_TB <= "00000001001101100100000010100010";
        in01_TB <= "00000001001101100100000010100011";
        in02_TB <= "00000001001101100100000010100100";
        in03_TB <= "00000001001101100100000010100101";
        in04_TB <= "00000001001101100100000010100110";
        in05_TB <= "00000001001101100100000010100111";
        in06_TB <= "00000001001101100100000010101000";
        in07_TB <= "00000001001101100100000010101001";
        in08_TB <= "00000001001101100100000010101010";
        in09_TB <= "00000001001101100100000010101011";
        in10_TB <= "00000001001101100100000010101100";
        in11_TB <= "00000001001101100100000010101101";
        in12_TB <= "00000001001101100100000010101110";
        in13_TB <= "00000001001101100100000010101111";
        in14_TB <= "00000001001101100100000010110000";
        in15_TB <= "00000001001101100100000010110001";
        in16_TB <= "00000001001101100100000010110010";
        in17_TB <= "00000001001101100100000010110011";
        in18_TB <= "00000001001101100100000010110100";
        in19_TB <= "00000001001101100100000010110101";
        in20_TB <= "00000001001101100100000010110110";
        in21_TB <= "00000001001101100100000010110111";
        in22_TB <= "00000001001101100100000010111000";
        in23_TB <= "00000001001101100100000010111001";
        in24_TB <= "00000001001101100100000010111010";
        in25_TB <= "00000001001101100100000010111011";
        in26_TB <= "00000001001101100100000010111100";
        in27_TB <= "00000001001101100100000010111101";
        in28_TB <= "00000001001101100100000010111110";
        in29_TB <= "00000001001101100100000010111111";
        in30_TB <= "00000001001101100100000011000000";
        in31_TB <= "00000001001101100100000011000001";

        wait for delay;
        S_TB <= "00000";

        wait for delay;
        S_TB <= "00001";

        wait for delay;
        S_TB <= "00010";

        wait for delay;
        S_TB <= "00011";

        wait for delay;
        S_TB <= "00100";

        wait for delay;
        S_TB <= "00101";

        wait for delay;
        S_TB <= "00110";

        wait for delay;
        S_TB <= "00111";

        wait for delay;
        S_TB <= "01000";

        wait for delay;
        S_TB <= "01001";

        wait for delay;
        S_TB <= "01010";

        wait for delay;
        S_TB <= "01011";

        wait for delay;
        S_TB <= "01100";

        wait for delay;
        S_TB <= "01101";

        wait for delay;
        S_TB <= "01110";

        wait for delay;
        S_TB <= "01111";

        wait for delay;
        S_TB <= "10000";

        wait for delay;
        S_TB <= "10001";

        wait for delay;
        S_TB <= "10010";

        wait for delay;
        S_TB <= "10011";

        wait for delay;
        S_TB <= "10100";

        wait for delay;
        S_TB <= "10101";

        wait for delay;
        S_TB <= "10110";

        wait for delay;
        S_TB <= "10111";

        wait for delay;
        S_TB <= "11000";

        wait for delay;
        S_TB <= "11001";

        wait for delay;
        S_TB <= "11010";

        wait for delay;
        S_TB <= "11011";

        wait for delay;
        S_TB <= "11100";

        wait for delay;
        S_TB <= "11101";

        wait for delay;
        S_TB <= "11110";

        wait for delay;
        S_TB <= "11111";

    end process;

end Behavioral;
