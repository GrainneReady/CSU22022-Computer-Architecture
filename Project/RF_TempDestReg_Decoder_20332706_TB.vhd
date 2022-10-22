library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_TempDestReg_Decoder_20332706_TB is
end RF_TempDestReg_Decoder_20332706_TB;

architecture Behavioral of RF_TempDestReg_Decoder_20332706_TB is

    component RF_TempDestReg_Decoder_20332706
        Port ( 
            A : in std_logic_vector(3 downto 0);
            D : out std_logic_vector(15 downto 0)
        );
    end component;

    signal A : std_logic_vector(3 downto 0) := (others => '0');
    signal D : std_logic_vector(15 downto 0) := (others => '0');

    constant delay : time := 30ns;

begin

    uut: RF_TempDestReg_Decoder_20332706
        Port Map ( 
            A => A,
            D => D
        );

    stim: process
    begin
        wait for delay;
        A <= "0000";

        wait for delay;
        A <= "0001";

        wait for delay;
        A <= "0010";

        wait for delay;
        A <= "0011";

        wait for delay;
        A <= "0100";

        wait for delay;
        A <= "0101";

        wait for delay;
        A <= "0110";

        wait for delay;
        A <= "0111";

        wait for delay;
        A <= "1000";

        wait for delay;
        A <= "1001";

        wait for delay;
        A <= "1010";

        wait for delay;
        A <= "1011";

        wait for delay;
        A <= "1100";

        wait for delay;
        A <= "1101";

        wait for delay;
        A <= "1110";

        wait for delay;
        A <= "1111";
    end process;

end Behavioral;