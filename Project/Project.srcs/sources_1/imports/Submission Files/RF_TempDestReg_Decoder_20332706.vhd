library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_TempDestReg_Decoder_20332706 is
    Port ( 
        A : in std_logic_vector(3 downto 0);
        D : out std_logic_vector(15 downto 0)
   );
end RF_TempDestReg_Decoder_20332706;

architecture Behavioral of RF_TempDestReg_Decoder_20332706 is
    begin
        process(A)
            begin
            case A is
                WHEN "0000" => D <= "0000000000000001" after 3ns;
                WHEN "0001" => D <= "0000000000000010" after 3ns;
                WHEN "0010" => D <= "0000000000000100" after 3ns;
                WHEN "0011" => D <= "0000000000001000" after 3ns;
                WHEN "0100" => D <= "0000000000010000" after 3ns;
                WHEN "0101" => D <= "0000000000100000" after 3ns;
                WHEN "0110" => D <= "0000000001000000" after 3ns;
                WHEN "0111" => D <= "0000000010000000" after 3ns;
                WHEN "1000" => D <= "0000000100000000" after 3ns;
                WHEN "1001" => D <= "0000001000000000" after 3ns;
                WHEN "1010" => D <= "0000010000000000" after 3ns;
                WHEN "1011" => D <= "0000100000000000" after 3ns;
                WHEN "1100" => D <= "0001000000000000" after 3ns;
                WHEN "1101" => D <= "0010000000000000" after 3ns;
                WHEN "1110" => D <= "0100000000000000" after 3ns;
                WHEN "1111" => D <= "1000000000000000" after 3ns;
                WHEN OTHERS => D <= "0000000000000000" after 3ns;
            end case;
        end process;
end Behavioral;