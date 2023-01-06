library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux32_32Bit_20332706 is
    Port(
        in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15, in16, in17,
        in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30,
        in31 : in std_logic_vector(31 downto 0);
        S : in std_logic_vector(4 downto 0);
        Z : out std_logic_vector(31 downto 0)
    );
end RF_Mux32_32Bit_20332706;

architecture Behavioral of RF_Mux32_32Bit_20332706 is
begin
    process(S, in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15, in16, in17,
        in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31)
            begin
                case S is
                    WHEN "00000" => Z <= in00 after 3ns;
                    WHEN "00001" => Z <= in01 after 3ns;
                    WHEN "00010" => Z <= in02 after 3ns;
                    WHEN "00011" => Z <= in03 after 3ns;
                    WHEN "00100" => Z <= in04 after 3ns;
                    WHEN "00101" => Z <= in05 after 3ns;
                    WHEN "00110" => Z <= in06 after 3ns;
                    WHEN "00111" => Z <= in07 after 3ns;
                    WHEN "01000" => Z <= in08 after 3ns;
                    WHEN "01001" => Z <= in09 after 3ns;
                    WHEN "01010" => Z <= in10 after 3ns;
                    WHEN "01011" => Z <= in11 after 3ns;
                    WHEN "01100" => Z <= in12 after 3ns;
                    WHEN "01101" => Z <= in13 after 3ns;
                    WHEN "01110" => Z <= in14 after 3ns;
                    WHEN "01111" => Z <= in15 after 3ns;
                    WHEN "10000" => Z <= in16 after 3ns;
                    WHEN "10001" => Z <= in17 after 3ns;
                    WHEN "10010" => Z <= in18 after 3ns;
                    WHEN "10011" => Z <= in19 after 3ns;
                    WHEN "10100" => Z <= in20 after 3ns;
                    WHEN "10101" => Z <= in21 after 3ns;
                    WHEN "10110" => Z <= in22 after 3ns;
                    WHEN "10111" => Z <= in23 after 3ns;
                    WHEN "11000" => Z <= in24 after 3ns;
                    WHEN "11001" => Z <= in25 after 3ns;
                    WHEN "11010" => Z <= in26 after 3ns;
                    WHEN "11011" => Z <= in27 after 3ns;
                    WHEN "11100" => Z <= in28 after 3ns;
                    WHEN "11101" => Z <= in29 after 3ns;
                    WHEN "11110" => Z <= in30 after 3ns;
                    WHEN "11111" => Z <= in31 after 3ns;
                    WHEN OTHERS  => Z <= "00000000000000000000000000000000" after 3ns;
                end case;
    end process;
end Behavioral;