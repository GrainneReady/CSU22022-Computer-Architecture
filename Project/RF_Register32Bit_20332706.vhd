library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Register32Bit_20332706 is
    Port (
        Data : in std_logic_vector(31 downto 0);
        Clock, Load in std_logic;
        Q : out std_logic_vector(31 downto 0)
    );
end RF_Register32Bit_20332706;

architecture Behavioral of RF_Register32Bit_20332706 is
begin
process(Clock)
begin
    if Clock'event and Clock='1' then
        if Load='1' then
            Q <= D after 3ns;
        end if;
    end if;
end process;

end Behavioral;
    