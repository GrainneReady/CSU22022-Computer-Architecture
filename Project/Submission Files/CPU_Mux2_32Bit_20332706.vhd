library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_Mux2_32Bit_20332706 is
    Port(
        in0, in1 : in STD_LOGIC_VECTOR (31 downto 0);
        Sel : in STD_LOGIC;
        Z : out STD_LOGIC_VECTOR (31 downto 0)
    );
end CPU_Mux2_32Bit_20332706;

architecture Behavioural of CPU_Mux2_32Bit_20332706 is
    begin
        process(Sel)
        begin
            case Sel is
                WHEN '0' => Z <= in0;
                WHEN '1' => Z <= in1;
                WHEN OTHERS => Z <= "00000000000000000000000000000000";
            end case;
        end process;
    end Behavioural;