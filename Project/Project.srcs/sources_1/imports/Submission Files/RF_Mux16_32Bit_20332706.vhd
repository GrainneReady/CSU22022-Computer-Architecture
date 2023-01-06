library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux16_32Bit_20332706 is
    Port(
        in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15 : in std_logic_vector(31 downto 0);
        S : in std_logic_vector (3 downto 0);
        Z : out std_logic_vector(31 downto 0)
    );
end RF_Mux16_32Bit_20332706;

architecture Behavioral of RF_Mux16_32Bit_20332706 is
    begin
        process(S, in00, in01, in02, in03, in04, in05, in06, in07, in08, in09, in10, in11, in12, in13, in14, in15)
            begin
                case S is
                    WHEN "0000" => Z <= in00 after 3ns;
                    WHEN "0001" => Z <= in01 after 3ns;
                    WHEN "0010" => Z <= in02 after 3ns;
                    WHEN "0011" => Z <= in03 after 3ns;
                    WHEN "0100" => Z <= in04 after 3ns;
                    WHEN "0101" => Z <= in05 after 3ns;
                    WHEN "0110" => Z <= in06 after 3ns;
                    WHEN "0111" => Z <= in07 after 3ns;
                    WHEN "1000" => Z <= in08 after 3ns;
                    WHEN "1001" => Z <= in09 after 3ns;
                    WHEN "1010" => Z <= in10 after 3ns;
                    WHEN "1011" => Z <= in11 after 3ns;
                    WHEN "1100" => Z <= in12 after 3ns;
                    WHEN "1101" => Z <= in13 after 3ns;
                    WHEN "1110" => Z <= in14 after 3ns;
                    WHEN "1111" => Z <= in15 after 3ns;
                    WHEN OTHERS => Z <= "00000000000000000000000000000000" after 3ns;
                end case;
    end process;
end Behavioral;