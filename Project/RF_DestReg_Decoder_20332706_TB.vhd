library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_DestReg_Decoder_20332706_TB is
end RF_DestReg_Decoder_20332706_TB;

architecture Behavioral of RF_DestReg_Decoder_20332706_TB is

    component RF_DestReg_Decoder_20332706
        Port ( 
            A : in std_logic_vector(4 downto 0);
            D : out std_logic_vector(31 downto 0)
        );
    end component;

    signal A : std_logic_vector(4 downto 0) := (others => '0');
    signal D : std_logic_vector(31 downto 0) := (others => '0');

    constant delay : time := 30ns;

begin

    uut: RF_DestReg_Decoder_20332706
        Port Map ( 
            A => A,
            D => D
        );

    stim: process
    begin
        wait for delay;
        A <= "00000";

        wait for delay;
        A <= "00001";

        wait for delay;
        A <= "00010";

        wait for delay;
        A <= "00011";

        wait for delay;
        A <= "00100";

        wait for delay;
        A <= "00101";

        wait for delay;
        A <= "00110";

        wait for delay;
        A <= "00111";

        wait for delay;
        A <= "01000";

        wait for delay;
        A <= "01001";

        wait for delay;
        A <= "01010";

        wait for delay;
        A <= "01011";

        wait for delay;
        A <= "01100";

        wait for delay;
        A <= "01101";

        wait for delay;
        A <= "01110";

        wait for delay;
        A <= "01111";

        wait for delay;
        A <= "10000";

        wait for delay;
        A <= "10001";

        wait for delay;
        A <= "10010";

        wait for delay;
        A <= "10011";

        wait for delay;
        A <= "10100";

        wait for delay;
        A <= "10101";

        wait for delay;
        A <= "10110";

        wait for delay;
        A <= "10111";

        wait for delay;
        A <= "11000";

        wait for delay;
        A <= "11001";

        wait for delay;
        A <= "11010";

        wait for delay;
        A <= "11011";

        wait for delay;
        A <= "11100";

        wait for delay;
        A <= "11101";

        wait for delay;
        A <= "11110";

        wait for delay;
        A <= "11111";

    end process;

end Behavioral;