library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_Mux3_32Bit_20332706_TB is
end RF_Mux3_32Bit_20332706_TB;

architecture Behavioral of RF_Mux3_32Bit_20332706_TB is
    component RF_Mux3_32Bit_20332706
        Port (
            in00, in01, in02 : in std_logic_vector(31 downto 0);
            A : in std_logic_vector (1 downto 0);
            Z : out std_logic_vector(31 downto 0)
        );
    end component;

    signal in00_TB, in01_TB, in02_TB, Z_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal A_TB : std_logic_vector(1 downto 0) := (others => '0');

    constant delay : time := 10ns;

begin
    uut: RF_Mux3_32Bit_20332706
        Port Map (
            in00 => in00_TB,
            in01 => in01_TB,
            in02 => in02_TB,
            A => A_TB,
            Z => Z_TB
        );
    stim: process
    begin
        in00_TB  <= "00000001001101100100000010100010";
        in01_TB  <= "00000001001101100100000010100011";
        in02_TB  <= "00000001001101100100000010100100";

        A_TB <= "00";

        wait for delay;
        A_TB <= "01";

        wait for delay;
        A_TB <= "10";

        wait for delay;
        A_TB <= "11";
    end process;
end Behavioral;