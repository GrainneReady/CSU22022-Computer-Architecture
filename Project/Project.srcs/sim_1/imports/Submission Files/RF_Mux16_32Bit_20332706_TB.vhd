library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux16_32Bit_20332706_TB is
end RF_Mux16_32Bit_20332706_TB;

architecture Behavioral of RF_Mux16_32Bit_20332706_TB is
    component RF_Mux16_32Bit_20332706
        Port (
            in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15 : in std_logic_vector(31 downto 0);
            S : in std_logic_vector (3 downto 0);
            Z : out std_logic_vector(31 downto 0)
        );
    end component;

    signal in00_TB, in01_TB, in02_TB, in03_TB, in04_TB, in05_TB, in06_TB, in07_TB, in08_TB, in09_TB, in10_TB, in11_TB, in12_TB, in13_TB, in14_TB, in15_TB, Z_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal S_TB : std_logic_vector(3 downto 0) := (others => '0');

    constant delay : time := 10ns;

begin
    uut: RF_Mux16_32Bit_20332706
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
            S => S_TB,
            Z => Z_TB
        );
    stim: process
    begin
        in00_TB  <= "00000001001101100100000010100010";
        in01_TB  <= "00000001001101100100000010100011";
        in02_TB  <= "00000001001101100100000010100100";
        in03_TB  <= "00000001001101100100000010100101";
        in04_TB  <= "00000001001101100100000010100110";
        in05_TB  <= "00000001001101100100000010100111";
        in06_TB  <= "00000001001101100100000010101000";
        in07_TB  <= "00000001001101100100000010101001";
        in08_TB  <= "00000001001101100100000010101010";
        in09_TB  <= "00000001001101100100000010101011";
        in10_TB <= "00000001001101100100000010101100";
        in11_TB <= "00000001001101100100000010101101";
        in12_TB <= "00000001001101100100000010101110";
        in13_TB <= "00000001001101100100000010101111";
        in14_TB <= "00000001001101100100000010110000";
        in15_TB <= "00000001001101100100000010110001";

        S_TB <= "0000";
        wait for delay;
        
        S_TB <= "0001";
        wait for delay;
        
        S_TB <= "0010";
        wait for delay;
        
        S_TB <= "0011";
        wait for delay;
        
        S_TB <= "0100";
        wait for delay;
        
        S_TB <= "0101";
        wait for delay;
        
        S_TB <= "0110";
        wait for delay;
        
        S_TB <= "0111";
        wait for delay;
        
        S_TB <= "1000";
        wait for delay;
        
        S_TB <= "1001";
        wait for delay;
        
        S_TB <= "1010";
        wait for delay;
        
        S_TB <= "1011";
        wait for delay;
        
        S_TB <= "1100";
        wait for delay;
        
        S_TB <= "1101";
        wait for delay;
        
        S_TB <= "1110";
        wait for delay;
        
        S_TB <= "1111";
        wait for delay;
    end process;
end Behavioral;