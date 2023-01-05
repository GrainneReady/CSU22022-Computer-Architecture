library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_SMux_20332706_TB is
end CPU_SMux_20332706_TB;

architecture Behavioural of CPU_SMux_20332706_TB is
    component CPU_SMux_20332706
        Port (
            C_Flag, N_Flag, V_Flag, Z_Flag : in STD_LOGIC;
            MS : in STD_LOGIC_VECTOR(2 downto 0);
            CAR : out STD_LOGIC
        );
    end component;
    signal C_Flag_TB, N_Flag_TB, V_Flag_TB, Z_Flag_TB, CAR_TB : STD_LOGIC := '0';
    signal MS_TB : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');

    begin
        MuxS: CPU_SMux_20332706
        Port Map (
            C_Flag => C_Flag_TB, 
            N_Flag => N_Flag_TB, 
            V_Flag => V_Flag_TB, 
            Z_Flag => Z_Flag_TB,
            MS => MS_TB,
            CAR => CAR_TB
        );
    stim:process
    begin
        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "000";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "000";
        wait for 25ns;

        -- MS_TB <= "001";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "001";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "001";
        wait for 25ns;


        -- MS_TB <= "010";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "010";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "010";
        wait for 25ns;


        --MS_TB <= "011";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "011";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "011";
        wait for 25ns;


        --MS_TB <= "100";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "100";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "100";
        wait for 25ns;


        --MS_TB <= "101";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "101";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "101";
        wait for 25ns;


        --MS_TB <= "110";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "110";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "110";
        wait for 25ns;


        --MS_TB <= "111";

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '0';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '0';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '0';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '0';
        Z_Flag_TB <= '1';       
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';
        MS_TB <= "111";
        wait for 25ns;

        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';
        MS_TB <= "111";
        wait for 25ns;

        end process;
    end Behavioural;