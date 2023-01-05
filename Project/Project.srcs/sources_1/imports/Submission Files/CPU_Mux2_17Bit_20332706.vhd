library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_Mux2_17Bit_20332706 is
    Port (
        In0, In1 : in STD_LOGIC_VECTOR(16 downto 0);
        Sel : in STD_LOGIC;
        Z : out STD_LOGIC_VECTOR(16 downto 0)
    );
end CPU_Mux2_17Bit_20332706;

architecture Behavioural of CPU_Mux2_17Bit_20332706 is
    begin
        Z <= In0 after 2ns when Sel = '0' else
             In1 after 2ns when Sel = '1';
    end Behavioural;