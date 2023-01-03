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
        Opcode <= Instruction(31 downto 15) when IL = '1';
        DR <= Instruction(14 downto 10) when IL = '1';
        SA <= Instruction(9 downto 5) when IL = '1';
        SB <= Instruction(4 downto 0) when IL = '1';
    end Behavioural;