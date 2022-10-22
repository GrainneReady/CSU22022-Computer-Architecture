library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RF_Test_RegisterFile_32_15_20332706 is
end RF_Test_RegisterFile_32_15_20332706;

architecture Behavioral of RF_Test_RegisterFile_32_15_20332706 is
    component RF_RegisterFile_32_15_20332706
        Port(
            SA, DR, SB : in std_logic_vector (4 downto 0);
            TB, TD, TA : in std_logic_vector (3 downto 0);
            Clock, RW : in std_logic;
            D : in std_logic_vector (31 downto 0);
            A, B : out std_logic_vector(31 downto 0)
        );
    end component;

    component RF_Mux3_32Bit_20332706 is
        Port(
            in00, in01, in02 : in std_logic_vector(31 downto 0);
            A : in std_logic_vector(1 downto 0);
            Z : out std_logic_vector(31 downto 0)
        );
    end component;

    constant delay : time := 45ns;

    signal A_B_DataIN_Test : (1 downto 0) := (others => '0');
    signal D_Test, A, B, In00, In01, In02 : (31 downto 0) := (others => '0');
    signal Clock_Test, RW_Test : std_logic := '0';
    signal DR_Test, SA_Test, SB_Test : (4 downto 0) := (others => '0');
    signal TA_Test, TB_Test, TD_Test : (3 downto 0) := (others => '0');

begin
    RegFile: RF_RegisterFile_32_15_20332706 Port Map (
        SA => SA_Test,
        DR => DR_Test,
        SB => SB_Test,
        TB => TB_Test,
        TD => TD_Test,
        TA => TA_Test,
        D  => D_Test,
        RW => RW_Test,
        Clock => Clock_Test,
        A => A,
        B => B
    );

    Mux3: RF_Mux3_32Bit_20332706 Port Map (
        A => A_B_DataIN_Test,
        in00 => In00,
        in01 => In01,
        in02 => In02,
        Z => D_Test
    );

begin
    wait for delay;
    A_B_DataIN_Test = "00";
    D_Test = "00000001001101100100000010100010";

    wait for delay;
    A_B_DataIn_Test = "01"
    D_Test = "00000001001101100100000010100011";

    wait for delay;
    A_B_DataIn_Test = "10"
    D_Test = "00000001001101100100000010100100";

end Behavioral;