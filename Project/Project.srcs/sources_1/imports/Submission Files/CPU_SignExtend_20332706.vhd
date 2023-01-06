library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_SignExtend_20332706 is
    Port (
        Input : in STD_LOGIC_VECTOR(9 downto 0);
        Output : out STD_LOGIC_VECTOR(31 downto 0)
    );
end CPU_SignExtend_20332706;

architecture Behavioural of CPU_SignExtend_20332706 is
    begin
        process(Input)
        begin
        if (Input(9)) = '1' then
            Output(31 downto 10) <= "1111111111111111111111" after 3ns;
        else
            Output(31 downto 10) <= "0000000000000000000000" after 3ns;
        end if;
        Output(9 downto 0) <= Input after 3ns;
        end process;
    end Behavioural;