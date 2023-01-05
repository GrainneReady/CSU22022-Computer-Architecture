library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_CAR_20332706_TB is
end CPU_CAR_20332706_TB;

architecture Behavioural of CPU_CAR_20332706_TB is
    component CPU_CAR_20332706
        Port (
            Address : in STD_LOGIC_VECTOR(16 downto 0);
            Clock, LoadAdd, Reset : in STD_LOGIC;
            CMAdd : out STD_LOGIC_VECTOR(16 downto 0)
        );
    end component;

    signal Address_TB, CMAdd_TB : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
    signal Clock_TB, LoadAdd_TB, Reset_TB : STD_LOGIC := '0';

    begin
        CAR: CPU_CAR_20332706
        Port Map (
            Address => Address_TB,
            CMAdd => CMAdd_TB,
            Clock => Clock_TB,
            LoadAdd => LoadAdd_TB,
            Reset => Reset_TB
        );

        Clock_TB <= not Clock_TB after 10ns;

        stim:process
        begin
            Reset_TB <= '1';
            wait for 20ns;

            Reset_TB <= '0';
            wait for 20ns;

            Address_TB <= "00000000000000110";
            LoadAdd_TB <= '1';
            wait for 20ns;

        end process;
    end Behavioural;