library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RF_RegisterFile_32_15_20332706_TB is
end RF_RegisterFile_32_15_20332706_TB;

architecture Behavioral of RF_RegisterFile_32_15_20332706_TB is
    component RF_RegisterFile_32_15_20332706
        Port(
            SA, DR, SB : in std_logic_vector (4 downto 0);
            TB, TD, TA : in std_logic_vector (3 downto 0);
            Clock, RW : in std_logic;
            D : in std_logic_vector (31 downto 0);
            A, B : out std_logic_vector(31 downto 0)
        );
    end component;
    
    constant delay : time := 40ns;

    signal SA_TB, DR_TB, SB_TB : std_logic_vector(4 downto 0) := (others => '0');
    signal TB_TB, TD_TB, TA_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal D_TB, A_TB, B_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal Clock_TB, RW_TB : std_logic := '0';

begin
    Clock_TB <= not Clock_TB after 20ns;

    RegFile: RF_RegisterFile_32_15_20332706 Port Map (
       SA => SA_TB,
       DR => DR_TB,
       SB => SB_TB,
       TB => TB_TB,
       TD => TD_TB,
       TA => TA_TB,
       D  => D_TB,
       RW => RW_TB,
       Clock => Clock_TB,
       A => A_TB,
       B => B_TB
    );

    stim: process

        begin

            TD_TB <= "0000";
            TB_TB <= "0000";
            TA_TB <= "0000";
            SA_TB <= "00000";
            SB_TB <= "00000";
            RW_TB <= '1';
            DR_TB <= "00000";
            D_TB <= "00000001001101100100000010100010";
    
            wait for delay;
            DR_TB <= "00001";
            SA_TB <= "00000";
            SB_TB <= "00000";
            D_TB <= "00000001001101100100000010100011";
    
            wait for delay;
            DR_TB <= "00010";
            SA_TB <= "00001";
            SB_TB <= "00001";
            D_TB <= "00000001001101100100000010100100";

            wait for delay;
            DR_TB <= "00011";
            SA_TB <= "00010";
            SB_TB <= "00010";
            D_TB <= "00000001001101100100000010100101";
    
            wait for delay;
            DR_TB <= "00100";
            SA_TB <= "00011";
            SB_TB <= "00011";
            D_TB <= "00000001001101100100000010100110";

            wait for delay;
            DR_TB <= "00101";
            SA_TB <= "00100";
            SB_TB <= "00100";
            D_TB <= "00000001001101100100000010100111";

            wait for delay;
            DR_TB <= "00110";
            SA_TB <= "00101";
            SB_TB <= "00101";
            D_TB <= "00000001001101100100000010101000";
        
            wait for delay;
            DR_TB <= "00111";
            SA_TB <= "00110";
            SB_TB <= "00110";
            D_TB <= "00000001001101100100000010101001";
    
            wait for delay;
            DR_TB <= "01000";
            SA_TB <= "00111";
            SB_TB <= "00111";
            D_TB <= "00000001001101100100000010101010";
    
            wait for delay;
            DR_TB <= "01001";
            SA_TB <= "01000";
            SB_TB <= "01000";
            D_TB <= "00000001001101100100000010101011";
    
            wait for delay;
            DR_TB <= "01010";
            SA_TB <= "01001";
            SB_TB <= "01001";
            D_TB <= "00000001001101100100000010101100";
    
            wait for delay;
            DR_TB <= "01011";
            SA_TB <= "01010";
            SB_TB <= "01010";
            D_TB <= "00000001001101100100000010101101";
    
            wait for delay;
            DR_TB <= "01100";
            SA_TB <= "01011";
            SB_TB <= "01011";
            D_TB <= "00000001001101100100000010101110";
    
            wait for delay;
            DR_TB <= "01101";
            SA_TB <= "01100";
            SB_TB <= "01100";
            D_TB <= "00000001001101100100000010101111";
    
            wait for delay;
            DR_TB <= "01110";
            SA_TB <= "01101";
            SB_TB <= "01101";
            D_TB <= "00000001001101100100000010110000";
    
            wait for delay;
            DR_TB <= "01111";
            SA_TB <= "01110";
            SB_TB <= "01110";
            D_TB <= "00000001001101100100000010110001";
    
            wait for delay;
            DR_TB <= "10000";
            SA_TB <= "01111";
            SB_TB <= "01111";
            D_TB <= "00000001001101100100000010110010";
    
            wait for delay;
            DR_TB <= "10001";
            SA_TB <= "10000";
            SB_TB <= "10000";
            D_TB <= "00000001001101100100000010110011";
    
            wait for delay;
            DR_TB <= "10010";
            SA_TB <= "10001";
            SB_TB <= "10001";
            D_TB <= "00000001001101100100000010110100";
    
            wait for delay;
            DR_TB <= "10011";
            SA_TB <= "10010";
            SB_TB <= "10010";
            D_TB <= "00000001001101100100000010110101";
    
            wait for delay;
            DR_TB <= "10100";
            SA_TB <= "10011";
            SB_TB <= "10011";
            D_TB <= "00000001001101100100000010110110";
    
            wait for delay;
            DR_TB <= "10101";
            SA_TB <= "10100";
            SB_TB <= "10100";
            D_TB <= "00000001001101100100000010110111";
    
            wait for delay;
            DR_TB <= "10110";
            SA_TB <= "10101";
            SB_TB <= "10101";
            D_TB <= "00000001001101100100000010111000";
    
            wait for delay;
            DR_TB <= "10111";
            SA_TB <= "10110";
            SB_TB <= "10110";
            D_TB <= "00000001001101100100000010111001";
    
            wait for delay;
            DR_TB <= "11000";
            SA_TB <= "10111";
            SB_TB <= "10111";
            D_TB <= "00000001001101100100000010111010";
    
            wait for delay;
            DR_TB <= "11001";
            SA_TB <= "11000";
            SB_TB <= "11000";
            D_TB <= "00000001001101100100000010111011";
    
            wait for delay;
            DR_TB <= "11010";
            SA_TB <= "11001";
            SB_TB <= "11001";
            D_TB <= "00000001001101100100000010111100";
    
            wait for delay;
            DR_TB <= "11011";
            SA_TB <= "11010";
            SB_TB <= "11010";
            D_TB <= "00000001001101100100000010111101";
    
            wait for delay;
            DR_TB <= "11100";
            SA_TB <= "11011";
            SB_TB <= "11011";
            D_TB <= "00000001001101100100000010111110";
    
            wait for delay;
            DR_TB <= "11101";
            SA_TB <= "11100";
            SB_TB <= "11100";
            D_TB <= "00000001001101100100000010111111";
    
            wait for delay;
            DR_TB <= "11110";
            SA_TB <= "11101";
            SB_TB <= "11101";
            D_TB <= "00000001001101100100000011000000";
    
            wait for delay; --reg 32
            DR_TB <= "11111";
            SA_TB <= "11110";
            SB_TB <= "11110";
            D_TB <= "00000001001101100100000011000001";

            wait for delay;
            SA_TB <= "11111";
            SB_TB <= "11111";
            DR_TB <= "00000";
            TA_TB <= "0000";
            TB_TB <= "0000";
            TD_TB <= "0001";
            D_TB <= "00000001001101100100000011000010";
    
            wait for delay; -- tempReg 02
            SA_TB <= "00000";
            SB_TB <= "00000";
            TA_TB <= "0001";
            TB_TB <= "0001";
            TD_TB <= "0010";
            D_TB <= "00000001001101100100000011000011";
    
            wait for delay; -- tempReg 03
            TA_TB <= "0010";
            TB_TB <= "0010";
            TD_TB <= "0011";
            D_TB <= "00000001001101100100000011000100";

            wait for delay; -- tempReg 04
            TA_TB <= "0011";
            TB_TB <= "0011";
            TD_TB <= "0100";
            D_TB <= "00000001001101100100000011000101";
    
            wait for delay; -- tempReg 05
            TA_TB <= "0100";
            TB_TB <= "0100";
            TD_TB <= "0101";
            D_TB <= "00000001001101100100000011000110";

            wait for delay; -- tempReg 06
            TA_TB <= "0101";
            TB_TB <= "0101";
            TD_TB <= "0110";
            D_TB <= "00000001001101100100000011000111";

            wait for delay; -- tempReg 07
            TA_TB <= "0110";
            TB_TB <= "0110";
            TD_TB <= "0111";
            D_TB <= "00000001001101100100000011001000";
        
            wait for delay; -- tempReg 08
            TA_TB <= "0111";
            TB_TB <= "0111";
            TD_TB <= "1000";
            D_TB <= "00000001001101100100000011001001";
    
            wait for delay; -- tempReg 09
            TA_TB <= "1000";
            TB_TB <= "1000";
            TD_TB <= "1001";
            D_TB <= "00000001001101100100000011001010";
    
            wait for delay; -- tempReg 10
            TA_TB <= "1001";
            TB_TB <= "1001";
            TD_TB <= "1010";
            D_TB <= "00000001001101100100000011001011";
    
            wait for delay; -- tempReg 11
            TA_TB <= "1010";
            TB_TB <= "1010";
            TD_TB <= "1011";
            D_TB <= "00000001001101100100000011001100";
    
            wait for delay; -- tempReg 12
            TA_TB <= "1011";
            TB_TB <= "1011";
            TD_TB <= "1100";
            D_TB <= "00000001001101100100000011001101";
    
            wait for delay; -- tempReg 13
            TA_TB <= "1100";
            TB_TB <= "1100";
            TD_TB <= "1101";
            D_TB <= "00000001001101100100000011001110";
    
            wait for delay; -- tempReg 14
            TA_TB <= "1101";
            TB_TB <= "1101";
            TD_TB <= "1110";
            D_TB <= "00000001001101100100000011001111";
    
            wait for delay; -- tempReg 15
            TA_TB <= "1110";
            TB_TB <= "1110";
            TD_TB <= "1111";
            D_TB <= "00000001001101100100000011010000";

            wait for delay;
            TA_TB <= "1111";
            TB_TB <= "1111";
            wait for delay;
    
    end process;
end Behavioral;