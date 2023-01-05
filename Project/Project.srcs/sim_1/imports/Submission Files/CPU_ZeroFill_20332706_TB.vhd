library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_ZeroFill_20332706_TB is
end entity CPU_ZeroFill_20332706_TB;

architecture Behavioural of CPU_ZeroFill_20332706_TB is
    component CPU_ZeroFill_20332706
        Port (
            SB : in STD_LOGIC_VECTOR(4 downto 0);
            MuxB : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    signal SB_TB : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal MuxB_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    begin
        ZeroFill: CPU_ZeroFill_20332706
        Port Map (
            SB => SB_TB,
            MuxB => MuxB_TB
        );

        stim:process
        begin
    
        SB_TB <= "00000";
        wait for 20ns;


        SB_TB <= "00001";
        wait for 20ns;


        SB_TB <= "00010";
        wait for 20ns;


        SB_TB <= "00011";
        wait for 20ns;


        SB_TB <= "00100";
        wait for 20ns;


        SB_TB <= "00101";
        wait for 20ns;


        SB_TB <= "00110";
        wait for 20ns;


        SB_TB <= "00111";
        wait for 20ns;


        SB_TB <= "01000";
        wait for 20ns;


        SB_TB <= "01001";
        wait for 20ns;


        SB_TB <= "01010";
        wait for 20ns;


        SB_TB <= "01011";
        wait for 20ns;


        SB_TB <= "01100";
        wait for 20ns;


        SB_TB <= "01101";
        wait for 20ns;


        SB_TB <= "01110";
        wait for 20ns;


        SB_TB <= "01111";
        wait for 20ns;


        SB_TB <= "10000";
        wait for 20ns;


        SB_TB <= "10001";
        wait for 20ns;


        SB_TB <= "10010";
        wait for 20ns;


        SB_TB <= "10011";
        wait for 20ns;


        SB_TB <= "10100";
        wait for 20ns;


        SB_TB <= "10101";
        wait for 20ns;


        SB_TB <= "10110";
        wait for 20ns;


        SB_TB <= "10111";
        wait for 20ns;


        SB_TB <= "11000";
        wait for 20ns;


        SB_TB <= "11001";
        wait for 20ns;


        SB_TB <= "11010";
        wait for 20ns;


        SB_TB <= "11011";
        wait for 20ns;


        SB_TB <= "11100";
        wait for 20ns;


        SB_TB <= "11101";
        wait for 20ns;


        SB_TB <= "11110";
        wait for 20ns;


        SB_TB <= "11111";
        wait for 20ns;
        
        end process;
    end Behavioural;
        