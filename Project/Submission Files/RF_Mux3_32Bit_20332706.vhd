library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux3_32Bit_20332706 is
    Port(
        in00, in01, in02 : in std_logic_vector(31 downto 0);
        A : in std_logic_vector(1 downto 0);
        Z : out std_logic_vector(31 downto 0)
    );
end RF_Mux3_32Bit_20332706;

architecture Behavioral of RF_Mux3_32Bit_20332706 is
    begin
        process(A, in00, in01, in02)
                begin
                    case A is
                        WHEN "00" => Z <= in00;
                        WHEN "01" => Z <= in01;
                        WHEN "10" => Z <= in02;
                        WHEN OTHERS  => Z <= "00000000000000000000000000000000";
                    end case;
        end process;
    end Behavioral;