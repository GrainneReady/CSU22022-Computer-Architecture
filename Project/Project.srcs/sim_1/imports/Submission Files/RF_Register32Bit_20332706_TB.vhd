library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Register32Bit_20332706_TB is
end RF_Register32Bit_20332706_TB;

architecture Behavioral of RF_Register32Bit_20332706_TB is
    component RF_Register32Bit_20332706
        Port (
            D : in std_logic_vector(31 downto 0);
            Clock, Load : in std_logic;
            Q : out std_logic_vector(31 downto 0)
        );
    end component;

    signal D_TB, Q_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal Load_TB, Clock_TB : std_logic := '0';

    constant PERIOD : time := 10ns;

begin
    uut: RF_Register32Bit_20332706
        Port Map(
            D => D_TB,
            Clock => Clock_TB,
            Load => Load_TB,
            Q => Q_TB
        );
    
        Clock_TB <= (not Clock_TB) after PERIOD/2;

        stim: process

        begin
            wait until Clock_TB'event and Clock_TB='1';
                Load_TB <= '0';
                D_TB <= "00000001001101100100000010100010";

            wait until Clock_TB'event and Clock_TB='1';
                Load_TB <= '1';
        end process;
    end Behavioral;