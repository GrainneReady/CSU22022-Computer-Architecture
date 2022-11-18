library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_FunctionUnit_20332706_TB is
end DP_FunctionUnit_20332706_TB;

architecture Behavioural of DP_FunctionUnit_20332706_TB is
    component DP_FunctionalUnit_20332706
        Port (
            B, A : in STD_LOGIC_VECTOR (31 downto 0);
            FS : in STD_LOGIC_VECTOR (4 downto 0);
            C, N, Z, V : out STD_LOGIC;
            F : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    signal A_TB, B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal F_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal FS_TB : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
    signal V_TB, Z_TB, C_TB, N_TB : STD_LOGIC := '0';
    begin
        FunctionUnit: DP_FunctionalUnit_20332706 PORT MAP (
            B => B_TB,
            A => A_TB,
            FS => FS_TB,
            C => C_TB,
            N => N_TB,
            Z => Z_TB,
            F => F_TB
        );
        stim: process
        begin
        
        A_TB <= "00000001001101100100000010100010"; -- Student number (20332706)
        B_TB <= "00000001001101100100000010101000"; -- Student number plus last digit (20332712)

        FS_TB <= "01000"; -- A AND B
        wait for 80ns;

        FS_TB <= "01010"; -- A OR B
        wait for 80ns;

        FS_TB <= "00110"; -- A - 1
        wait for 80ns;

        FS_TB <= "10100"; -- srB
        wait for 80ns;

        FS_TB <= "00101"; -- A + (1's comp B) + 1
        wait for 80ns;

        FS_TB <= "01111"; -- 1's comp A
        wait for 80ns;

        FS_TB <= "00100"; -- A + (1's comp B)
        wait for 80ns;

        FS_TB <= "10000"; -- B
        wait for 80ns;

        FS_TB <= "00011"; -- A + B + 1
        wait for 80ns;

        FS_TB <= "11000"; -- slB
        wait for 80ns;

        FS_TB <= "00011"; -- A + B
        wait for 80ns;

        FS_TB <= "00111"; -- A
        wait for 80ns;

        FS_TB <= "00000"; -- A
        wait for 80ns;

        FS_TB <= "00001"; -- A + 1
        wait for 80ns;

        FS_TB <= "01100"; -- A XOR B
        wait for 80ns;
        
        end process;
    end Behavioural;

