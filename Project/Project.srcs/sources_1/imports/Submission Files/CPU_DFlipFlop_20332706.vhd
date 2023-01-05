library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_DFlipFlop_20332706 is
    Port ( 
        Clock, D, Enable, Reset : in STD_LOGIC;
        Q : out STD_LOGIC
    );
end CPU_DFlipFlop_20332706;

architecture Behavioural of CPU_DFlipFlop_20332706 is
    begin
    process(Clock)
    begin
        
        if Reset = '1' then
            Q <= '0' after 2ns;
        else if Clock'event and Clock='1' then
            if Enable = '1' then
                Q <= D after 2ns;
            end if;
        end if;
        end if;

    end process;

end Behavioural;