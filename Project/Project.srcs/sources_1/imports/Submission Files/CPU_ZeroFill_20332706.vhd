library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_ZeroFill_20332706 is
    Port (
        SB : in STD_LOGIC_VECTOR(4 downto 0);
        MuxB : out STD_LOGIC_VECTOR(31 downto 0)
    );
end entity CPU_ZeroFill_20332706;

architecture Behavioural of CPU_ZeroFill_20332706 is
    begin
        MuxB(4 downto 0) <= SB after 3ns;
        MuxB(31 downto 5) <= "000000000000000000000000000" after 3ns;
    end Behavioural;
