library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux_32Bit20332706 is
    Port(
        in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25,
        in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
        S : in std_logic_vector(4 downto 0);
        Z : out std_logic_vector(31 downto 0)
    );
end RF_Mux_32Bit20332706;

architecture Behavioral of RF_Mux_32Bit20332706 is
begin
    process(S, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25,
        in26, in27, in28, in29, in30, in31)
            begin
                case S is
                    WHEN "00000" => Z <= in0;
                    WHEN "00001" => Z <= in1;
                    WHEN "00010" => Z <= in2;
                    WHEN "00011" => Z <= in3;
                    WHEN "00100" => Z <= in4;
                    WHEN "00101" => Z <= in5;
                    WHEN "00110" => Z <= in6;
                    WHEN "00111" => Z <= in7;
                    WHEN "01000" => Z <= in8;
                    WHEN "01001" => Z <= in9;
                    WHEN "01010" => Z <= in10;
                    WHEN "01011" => Z <= in11;
                    WHEN "01100" => Z <= in12;
                    WHEN "01101" => Z <= in13;
                    WHEN "01110" => Z <= in14;
                    WHEN "01111" => Z <= in15;
                    WHEN "10000" => Z <= in16;
                    WHEN "10001" => Z <= in17;
                    WHEN "10010" => Z <= in18;
                    WHEN "10011" => Z <= in19;
                    WHEN "10100" => Z <= in20;
                    WHEN "10101" => Z <= in21;
                    WHEN "10110" => Z <= in22;
                    WHEN "10111" => Z <= in23;
                    WHEN "11000" => Z <= in24;
                    WHEN "11001" => Z <= in25;
                    WHEN "11010" => Z <= in26;
                    WHEN "11011" => Z <= in27;
                    WHEN "11100" => Z <= in28;
                    WHEN "11101" => Z <= in29;
                    WHEN "11110" => Z <= in30;
                    WHEN "11111" => Z <= in31;
                    WHEN OTHERS  => Z <= "00000000000000000000000000000000";
                end case;
    end process;
end Behavioral;