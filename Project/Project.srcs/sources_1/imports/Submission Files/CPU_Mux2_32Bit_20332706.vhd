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
            Z <= in0 when Sel = '0' else
                 in1 when Sel = '1' else
                 "00000000000000000000000000000000";
    end Behavioural;