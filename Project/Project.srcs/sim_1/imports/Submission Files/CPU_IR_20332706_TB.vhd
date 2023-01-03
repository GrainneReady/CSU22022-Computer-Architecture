library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_IR_20332706_TB is
end CPU_IR_20332706_TB;

architecture Behavioural of CPU_IR_20332706_TB is
    component CPU_IR_20332706
        Port (
            Clock, IL : STD_LOGIC;
            Instruction : STD_LOGIC_VECTOR(31 downto 0);
            DR, SA, SB : STD_LOGIC_VECTOR(4 downto 0);
            Opcode : STD_LOGIC_VECTOR(16 downto 0)
        );
    end component;
    signal Clock_TB, IL_TB : STD_LOGIC := '0';
    signal Instruction_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal DR_TB, SA_TB, SB_TB : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal Opcode_TB : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
    constant PERIOD : time := 20ns;
    begin
        Clock_TB <= not Clock_TB after PERIOD/2;
        InstReg: CPU_IR_20332706
        Port Map (
            Clock => Clock_TB,
            IL => IL_TB,
            Instruction => Instruction_TB,
            DR => DR_TB,
            SA => SA_TB,
            SB => SB_TB,
            Opcode => Opcode_TB
        );
        stim:process
        begin
            wait until Clock_TB'event and Clock_TB = '1';
            IL_TB <= '1';
            --20332706
            -- |      Opcode      |  DR   |  SA   |  SB  |
            -- "00000000000000000"&"00000"&"00000"&"00000"
            --                         32          6   0     7
            Instruction_TB <= "00000000000100000001100000000111";
        end process;
    end Behavioural;