library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_CAR_20332706 is
    Port (
        Address : in STD_LOGIC_VECTOR(16 downto 0);
        Clock, LoadAdd, Reset : in STD_LOGIC;
        CMAdd : out STD_LOGIC_VECTOR(16 downto 0)
    );
end CPU_CAR_20332706;

architecture Behavioural of CPU_CAR_20332706 is
    signal addressWire : STD_LOGIC_VECTOR(16 downto 0);
    begin
        process(Reset, Address, LoadAdd, Clock)
        begin
        
        if Reset = '1' then
            addressWire <= "00000000000000110" after 3ns;
        else if rising_edge(Clock) then
            if LoadAdd = '1' then
                addressWire <= Address after 3ns;
            else
                addressWire <= addressWire + '1' after 3ns;
            end if;
        end if;
        end if;
        end process;
        CMAdd <= addressWire;
                
    end Behavioural;