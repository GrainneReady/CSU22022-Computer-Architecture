library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_RAM_20332706_TB is
end CPU_RAM_20332706_TB;

architecture Behavioural of CPU_RAM_20332706_TB is
    component CPU_RAM_20332706
        Port (
            Address, DataIn : in STD_LOGIC_VECTOR(31 downto 0);
            Clock, WriteEnable : in STD_LOGIC;
            DataOut : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    signal Address_TB, DataIn_TB, DataOut_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal WriteEnable_TB, Clock_TB : STD_LOGIC := '0';

    begin
    Clock_TB <= not Clock_TB after 20ns;

    RAM: CPU_RAM_20332706
    Port Map (
        Address => Address_TB,
        DataIn => DataIn_TB,
        DataOut => DataOut_TB,
        WriteEnable => WriteEnable_TB,
        Clock => Clock_TB
    );

        stim: process
        begin
            -- Reading all 128 memory addresses
            wait until Clock_TB'event and Clock_TB = '1';
            WriteEnable_TB <= '0';
            Address_TB <="00000000000000000000000000000000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000101111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000110111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000111111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001000111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001001111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001010111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001011111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001100111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001101111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001110111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000001111111";


            -- Overwriting memory locations starting at the address of the last digit of your StudentID [6]
            wait until Clock_TB'event and Clock_TB = '1';
            WriteEnable_TB <= '1';
            DataIn_TB <= "01010101010101010101010101010101";
            Address_TB <="00000000000000000000000000000110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100110";

            -- Demonstrate that the overwriting doesn't work if the MW signal is unset
            DataIn_TB <= "00000000000000000000000000000000";
            WriteEnable_TB <= '0';
            Address_TB <="00000000000000000000000000000110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000000111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000001111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000010111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011110";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000011111";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100000";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100001";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100010";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100011";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100100";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100101";

            wait until Clock_TB'event and Clock_TB = '1';
            Address_TB <="00000000000000000000000000100110";


        end process;
    end Behavioural;
