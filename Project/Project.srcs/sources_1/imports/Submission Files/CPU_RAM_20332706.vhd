library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
entity CPU_RAM_20332706 is
    Port (
        Address, DataIn : in STD_LOGIC_VECTOR(31 downto 0);
        Clock, WriteEnable : in STD_LOGIC;
        DataOut : out STD_LOGIC_VECTOR(31 downto 0)
    );
end CPU_RAM_20332706;

architecture Behavioural of CPU_RAM_20332706 is
    type RAM_array is array(0 to 127) of STD_LOGIC_VECTOR (31 downto 0);
    -- Last Digits: 06
    signal RAM : RAM_array := (
        x"00000006", x"00000007", x"00000008", x"00000009", x"0000000a", x"0000000b", x"0000000c", x"0000000d",
        x"0000000e", x"0000000f", x"00000010", x"00000011", x"00000012", x"00000013", x"00000014", x"00000015",  
        x"00000016", x"00000017", x"00000018", x"00000019", x"0000001a", x"0000001b", x"0000001c", x"0000001d", 
        x"0000001e", x"0000001f", x"00000020", x"00000021", x"00000022", x"00000023", x"00000024", x"00000025",
        x"00000026", x"00000027", x"00000028", x"00000029", x"0000002a", x"0000002b", x"0000002c", x"0000002d", 
        x"0000002e", x"0000002f", x"00000030", x"00000031", x"00000032", x"00000033", x"00000034", x"00000035", 
        x"00000036", x"00000037", x"00000038", x"00000039", x"0000003a", x"0000003b", x"0000003c", x"0000003d", 
        x"0000003e", x"0000003f", x"00000040", x"00000041", x"00000042", x"00000043", x"00000044", x"00000045", 
        x"00000046", x"00000047", x"00000048", x"00000049", x"0000004a", x"0000004b", x"0000004c", x"0000004d", 
        x"0000004e", x"0000004f", x"00000050", x"00000051", x"00000052", x"00000053", x"00000054", x"00000055", 
        x"00000056", x"00000057", x"00000058", x"00000059", x"0000005a", x"0000005b", x"0000005c", x"0000005d", 
        x"0000005e", x"0000005f", x"00000060", x"00000061", x"00000062", x"00000063", x"00000064", x"00000065", 
        x"00000066", x"00000067", x"00000068", x"00000069", x"0000006a", x"0000006b", x"0000006c", x"0000006d", 
        x"0000006e", x"0000006f", x"00000070", x"00000071", x"00000072", x"00000073", x"00000074", x"00000075", 
        x"00000076", x"00000077", x"00000078", x"00000079", x"0000007a", x"0000007b", x"0000007c", x"0000007d", 
        x"0000007e", x"0000007f", x"00000080", x"00000081", x"00000082", x"00000083", x"00000084", x"00000085"
    );
    begin
        process(Clock)
        begin
            if Clock'event and Clock='1' then
                if WriteEnable = '1' then
                    RAM(to_integer(unsigned(Address(6 downto 0)))) <= DataIn;
                end if;
            end if;
        end process;

        DataOut <= RAM(to_integer(unsigned(Address(6 downto 0))));
end Behavioural;