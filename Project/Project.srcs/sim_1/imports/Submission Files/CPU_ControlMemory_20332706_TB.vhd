library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_ControlMemory_20332706_TB is
end CPU_ControlMemory_20332706_TB;

architecture Behavioural of CPU_ControlMemory_20332706_TB is
    component CPU_ControlMemory_20332706
        Port (
            Address : in STD_LOGIC_VECTOR(16 downto 0);
            FL, IL, MB, MC, MD, MM, MW, PI, PL, RC, RN, RV, RW, RZ : out STD_LOGIC;
            FS : out STD_LOGIC_VECTOR(4 downto 0);
            MS : out STD_LOGIC_VECTOR(2 downto 0);
            NA : out STD_LOGIC_VECTOR(16 downto 0);
            TA, TB, TD : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal Address_TB, NA_TB : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
    signal FL_TB, IL_TB, MB_TB, MC_TB, MD_TB, MM_TB, MW_TB, PI_TB, PL_TB, RC_TB, RN_TB, RV_TB, RW_TB, RZ_TB : STD_LOGIC := '0';
    signal FS_TB : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal MS_TB : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal TA_TB, TB_TB, TD_TB : STD_LOGIC_VECTOR(3 downto 0) := (others => '0'); 

    
    begin
    ControlROM: CPU_ControlMemory_20332706
        Port Map (
            Address => Address_TB,
            FL => FL_TB,
            IL => IL_TB,
            MB => MB_TB,
            MC => MC_TB,
            MD => MD_TB,
            MM => MM_TB,
            MW => MW_TB,
            PI => PI_TB,
            PL => PL_TB,
            RC => RC_TB,
            RN => RN_TB,
            RV => RV_TB,
            RW => RW_TB,
            RZ => RZ_TB,
            FS => FS_TB,
            MS => MS_TB,
            NA => NA_TB,
            TA => TA_TB,
            TB => TB_TB,
            TD => TD_TB
        );
    stim:process
    begin        
    Address_TB <= "00000000000000110";
    wait for 50ns;

    Address_TB <= "00000000000000111";
    wait for 50ns;

    Address_TB <= "00000000000001000";
    wait for 50ns;

    Address_TB <= "00000000000001001";
    wait for 50ns;

    Address_TB <= "00000000000001010";
    wait for 50ns;

    Address_TB <= "00000000000001011";
    wait for 50ns;

    Address_TB <= "00000000000001100";
    wait for 50ns;

    Address_TB <= "00000000000001101";
    wait for 50ns;

    Address_TB <= "00000000000001110";
    wait for 50ns;

    Address_TB <= "00000000000001111";
    wait for 50ns;

    Address_TB <= "00000000000010000";
    wait for 50ns;

    Address_TB <= "00000000000010001";
    wait for 50ns;

    Address_TB <= "00000000000010010";
    wait for 50ns;

    Address_TB <= "00000000000010011";
    wait for 50ns;

    Address_TB <= "00000000000010100";
    wait for 50ns;

    Address_TB <= "00000000000010101";
    wait for 50ns;

    Address_TB <= "00000000000010110";
    wait for 50ns;

    Address_TB <= "00000000000010111";
    wait for 50ns;

    Address_TB <= "00000000000011000";
    wait for 50ns;

    Address_TB <= "00000000000011001";
    wait for 50ns;

    Address_TB <= "00000000000011010";
    wait for 50ns;

    Address_TB <= "00000000000011011";
    wait for 50ns;

    Address_TB <= "00000000000011100";
    wait for 50ns;

    Address_TB <= "00000000000011101";
    wait for 50ns;

    Address_TB <= "00000000000011110";
    wait for 50ns;

    Address_TB <= "00000000000011111";
    wait for 50ns;

    Address_TB <= "00000000000100000";
    wait for 50ns;

    Address_TB <= "00000000000100001";
    wait for 50ns;

    Address_TB <= "00000000000100010";
    wait for 50ns;

    Address_TB <= "00000000000100011";
    wait for 50ns;

    Address_TB <= "00000000000100100";
    wait for 50ns;

    Address_TB <= "00000000000100101";
    wait for 50ns;

    Address_TB <= "00000000000100110";
    wait for 50ns;

    Address_TB <= "00000000000100111";
    wait for 50ns;

    Address_TB <= "00000000000101000";
    wait for 50ns;

    Address_TB <= "00000000000101001";
    wait for 50ns;

    Address_TB <= "00000000000101010";
    wait for 50ns;

    Address_TB <= "00000000000101011";
    wait for 50ns;

    Address_TB <= "00000000000101100";
    wait for 50ns;

    Address_TB <= "00000000000101101";
    wait for 50ns;

    Address_TB <= "00000000000101110";
    wait for 50ns;

    Address_TB <= "00000000000101111";
    wait for 50ns;

    Address_TB <= "00000000000110000";
    wait for 50ns;

    Address_TB <= "00000000000110001";
    wait for 50ns;

    Address_TB <= "00000000000110010";
    wait for 50ns;

    Address_TB <= "00000000000110011";
    wait for 50ns;

    Address_TB <= "00000000000110100";
    wait for 50ns;

    Address_TB <= "00000000000110101";
    wait for 50ns;

    Address_TB <= "00000000000110110";
    wait for 50ns;

    Address_TB <= "00000000000110111";
    wait for 50ns;

    Address_TB <= "00000000000111000";
    wait for 50ns;

    Address_TB <= "00000000000111001";
    wait for 50ns;

    Address_TB <= "00000000000111010";
    wait for 50ns;

    Address_TB <= "00000000000111011";
    wait for 50ns;

    Address_TB <= "00000000000111100";
    wait for 50ns;

    Address_TB <= "00000000000111101";
    wait for 50ns;

    Address_TB <= "00000000000111110";
    wait for 50ns;

    Address_TB <= "00000000000111111";
    wait for 50ns;

    Address_TB <= "00000000001000000";
    wait for 50ns;

    Address_TB <= "00000000001000001";
    wait for 50ns;

    Address_TB <= "00000000001000010";
    wait for 50ns;

    Address_TB <= "00000000001000011";
    wait for 50ns;

    Address_TB <= "00000000001000100";
    wait for 50ns;

    Address_TB <= "00000000001000101";
    wait for 50ns;

    Address_TB <= "00000000001000110";
    wait for 50ns;

    Address_TB <= "00000000001000111";
    wait for 50ns;

    Address_TB <= "00000000001001000";
    wait for 50ns;

    Address_TB <= "00000000001001001";
    wait for 50ns;

    Address_TB <= "00000000001001010";
    wait for 50ns;

    Address_TB <= "00000000001001011";
    wait for 50ns;

    Address_TB <= "00000000001001100";
    wait for 50ns;

    Address_TB <= "00000000001001101";
    wait for 50ns;

    Address_TB <= "00000000001001110";
    wait for 50ns;

    Address_TB <= "00000000001001111";
    wait for 50ns;

    Address_TB <= "00000000001010000";
    wait for 50ns;

    Address_TB <= "00000000001010001";
    wait for 50ns;

    Address_TB <= "00000000001010010";
    wait for 50ns;

    Address_TB <= "00000000001010011";
    wait for 50ns;

    Address_TB <= "00000000001010100";
    wait for 50ns;

    Address_TB <= "00000000001010101";
    wait for 50ns;

    Address_TB <= "00000000001010110";
    wait for 50ns;

    Address_TB <= "00000000001010111";
    wait for 50ns;

    Address_TB <= "00000000001011000";
    wait for 50ns;

    Address_TB <= "00000000001011001";
    wait for 50ns;

    Address_TB <= "00000000001011010";
    wait for 50ns;

    Address_TB <= "00000000001011011";
    wait for 50ns;

    Address_TB <= "00000000001011100";
    wait for 50ns;

    Address_TB <= "00000000001011101";
    wait for 50ns;

    Address_TB <= "00000000001011110";
    wait for 50ns;

    Address_TB <= "00000000001011111";
    wait for 50ns;

    Address_TB <= "00000000001100000";
    wait for 50ns;

    Address_TB <= "00000000001100001";
    wait for 50ns;

    Address_TB <= "00000000001100010";
    wait for 50ns;

    Address_TB <= "00000000001100011";
    wait for 50ns;

    Address_TB <= "00000000001100100";
    wait for 50ns;

    Address_TB <= "00000000001100101";
    wait for 50ns;

    Address_TB <= "00000000001100110";
    wait for 50ns;

    Address_TB <= "00000000001100111";
    wait for 50ns;

    Address_TB <= "00000000001101000";
    wait for 50ns;

    Address_TB <= "00000000001101001";
    wait for 50ns;

    Address_TB <= "00000000001101010";
    wait for 50ns;

    Address_TB <= "00000000001101011";
    wait for 50ns;

    Address_TB <= "00000000001101100";
    wait for 50ns;

    Address_TB <= "00000000001101101";
    wait for 50ns;

    Address_TB <= "00000000001101110";
    wait for 50ns;

    Address_TB <= "00000000001101111";
    wait for 50ns;

    Address_TB <= "00000000001110000";
    wait for 50ns;

    Address_TB <= "00000000001110001";
    wait for 50ns;

    Address_TB <= "00000000001110010";
    wait for 50ns;

    Address_TB <= "00000000001110011";
    wait for 50ns;

    Address_TB <= "00000000001110100";
    wait for 50ns;

    Address_TB <= "00000000001110101";
    wait for 50ns;

    Address_TB <= "00000000001110110";
    wait for 50ns;

    Address_TB <= "00000000001110111";
    wait for 50ns;

    Address_TB <= "00000000001111000";
    wait for 50ns;

    Address_TB <= "00000000001111001";
    wait for 50ns;

    Address_TB <= "00000000001111010";
    wait for 50ns;

    Address_TB <= "00000000001111011";
    wait for 50ns;

    Address_TB <= "00000000001111100";
    wait for 50ns;

    Address_TB <= "00000000001111101";
    wait for 50ns;

    Address_TB <= "00000000001111110";
    wait for 50ns;

    Address_TB <= "00000000001111111";
    wait for 50ns;

    Address_TB <= "00000000010000000";
    wait for 50ns;

    Address_TB <= "00000000010000001";
    wait for 50ns;

    Address_TB <= "00000000010000010";
    wait for 50ns;

    Address_TB <= "00000000010000011";
    wait for 50ns;

    Address_TB <= "00000000010000100";
    wait for 50ns;

    Address_TB <= "00000000010000101";
    wait for 50ns;
        
    end process;
        
    end Behavioural;