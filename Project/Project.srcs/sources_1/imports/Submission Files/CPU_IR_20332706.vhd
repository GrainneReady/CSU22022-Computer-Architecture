library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_IR_20332706 is
    Port (
        Clock, IL : in STD_LOGIC; -- IL - Load Enable control signal
        Instruction : in STD_LOGIC_VECTOR(31 downto 0);
        DR, SA, SB : out STD_LOGIC_VECTOR(4 downto 0);
        Opcode : out STD_LOGIC_VECTOR(16 downto 0)
    );
end CPU_IR_20332706;

architecture Behavioural of CPU_IR_20332706 is
    begin
        -- |      Opcode      |  DR   |  SA   |  SB  |
        -- "00000000000000000"&"00000"&"00000"&"00000"

        process(Clock)
        begin
        if Clock'event and Clock='1' then
            if IL='1' then
                Opcode <= Instruction(31 downto 15);
                DR <= Instruction(14 downto 10);
                SA <= Instruction(9 downto 5);
                SB <= Instruction(4 downto 0);
            end if;
        end if;
        end process;
    end Behavioural;