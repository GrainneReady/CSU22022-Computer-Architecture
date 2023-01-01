library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Datapath_20332706_TB is
end DP_Datapath_20332706_TB;

architecture Behavioural of DP_Datapath_20332706_TB is
    component DP_Datapath_20332706
        Port (
            IR_IN, DATA_IN : in STD_LOGIC_VECTOR(31 downto 0);
            MB, MD, Clock, RW : in STD_LOGIC;
            FS, DR, SA, SB : in STD_LOGIC_VECTOR(4 downto 0);
            TA, TB, TD : in STD_LOGIC_VECTOR(3 downto 0);
            DATA_OUT, ADD : out STD_LOGIC_VECTOR(31 downto 0);
            C, N, V, Z : out STD_LOGIC
        );
    end component;

    signal IR_IN_TB, DATA_IN_TB, DATA_OUT_TB, ADD_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal MB_TB, MD_TB, Clock_TB, RW_TB, C_TB, N_TB, V_TB, Z_TB : STD_LOGIC := '0';
    signal FS_TB, DR_TB, SA_TB, SB_TB : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal TA_TB, TB_TB, TD_TB : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    constant PERIOD : time := 20ns;
    begin
        Datapath: DP_Datapath_20332706
        Port Map (
            DATA_IN => DATA_IN_TB,
            IR_IN => IR_IN_TB,
            MB => MB_TB,
            MD => MD_TB,
            Clock => Clock_TB,
            RW => RW_TB,
            FS => FS_TB,
            DR => DR_TB,
            SA => SA_TB,
            SB => SB_TB,
            TA => TA_TB,
            TB => TB_TB,
            TD => TD_TB,
            DATA_OUT => DATA_OUT_TB,
            ADD => ADD_TB,
            C => C_TB,
            N => N_TB,
            V => V_TB,
            Z => Z_TB
        );

        Clock_TB <= not Clock_TB after PERIOD/2;
        stim: process
        begin
            MD_TB <= '1';
            RW_TB <= '1';
            TD_TB <= "0000";

            -- Loading Registers
            DATA_IN_TB <= "00000001001101100100000010100010"; -- 20332706 (Student Number)
            DR_TB <= "00000"; -- Reg 1
            
            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010100001";
            DR_TB <= "00001";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010100000";
            DR_TB <= "00010";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011111";
            DR_TB <= "00011";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011110";
            DR_TB <= "00100";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011101";
            DR_TB <= "00101";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011100";
            DR_TB <= "00110";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011011";
            DR_TB <= "00111";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011010";
            DR_TB <= "01000";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011001";
            DR_TB <= "01001";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010011000";
            DR_TB <= "01010";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010111";
            DR_TB <= "01011";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010110";
            DR_TB <= "01100";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010101";
            DR_TB <= "01101";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010100";
            DR_TB <= "01110";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010011";
            DR_TB <= "01111";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010010";
            DR_TB <= "10000";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010001";
            DR_TB <= "10001";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010010000";
            DR_TB <= "10010";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001111";
            DR_TB <= "10011";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001110";
            DR_TB <= "10100";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001101";
            DR_TB <= "10101";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001100";
            DR_TB <= "10110";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001011";
            DR_TB <= "10111";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001010";
            DR_TB <= "11000";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001001";
            DR_TB <= "11001";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010001000";
            DR_TB <= "11010";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000111";
            DR_TB <= "11011";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000110";
            DR_TB <= "11100";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000101";
            DR_TB <= "11101";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000100";
            DR_TB <= "11110";

            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000011";
            DR_TB <= "11111";

            wait until Clock_TB'event and Clock_TB = '1';
            DATA_IN_TB <= "00000001001101100100000010000010";   
            TD_TB <= "0001";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000001";   
            TD_TB <= "0010";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000010000000";   
            TD_TB <= "0011";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111111";
            TD_TB <= "0100";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111110";
            TD_TB <= "0101";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111101";
            TD_TB <= "0110";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111100";
            TD_TB <= "0111";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111011";
            TD_TB <= "1000";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111010";
            TD_TB <= "1001";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111001";
            TD_TB <= "1010";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001111000";
            TD_TB <= "1011";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001110111";
            TD_TB <= "1100";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001110110";
            TD_TB <= "1101";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001110101";
            TD_TB <= "1110";


            wait until Clock_TB'event and Clock_TB = '1';

            DATA_IN_TB <= "00000001001101100100000001110100";
            TD_TB <= "1111";

            wait until Clock_TB'event and Clock_TB = '1';
            RW_TB <= '0';
            TD_TB <= "0000";

            -- Selecting Destination Register (Last Digit: 6)

            DR_TB <= "00110";
            -- Selecting source registers A and B

            SA_TB <= "01011"; -- 11 (Last Digit Student Num [6] + 5)
            SB_TB <= "10101"; -- 21 (Last Digit Student Num [6] + 15)
            wait until Clock_TB'event and Clock_TB = '1';

            -- Operations of Datapath

            FS_TB <= "01000"; -- A AND B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "01010"; -- A OR B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00110"; -- A - 1
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "10100"; -- srB
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00101"; -- A + (1's comp B) + 1
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "01110"; -- 1's comp A [aka NOT A]
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00100"; -- A + (1's comp B)
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "10000"; -- B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00011"; -- A + B + 1
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "11000"; -- slB
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00010"; -- A + B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00111"; -- A
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00000"; -- A
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00001"; -- A + 1
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "01100"; -- A XOR B
            wait until Clock_TB'event and Clock_TB = '1';
            
            -- MuxB switch to Constant in
            MB_TB <= '1';
            IR_IN_TB <= "00000001001101100100000010100010";

            FS_TB <= "01000"; -- A AND B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "01010"; -- A OR B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "10100"; -- srB
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00101"; -- A + (1's comp B) + 1
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00100"; -- A + (1's comp B)
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "10000"; -- B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00011"; -- A + B + 1
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "11000"; -- slB
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "00010"; -- A + B
            wait until Clock_TB'event and Clock_TB = '1';

            FS_TB <= "01100"; -- A XOR B
            wait until Clock_TB'event and Clock_TB = '1';

            
        end process;
    end Behavioural;