library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_StatusRegister_20332706_TB is
end CPU_StatusRegister_20332706_TB;

architecture Behavioural of CPU_StatusRegister_20332706_TB is
    component CPU_StatusRegister_20332706
        Port (
            C_Flag, Clock, LoadFlags, N_Flag, Reset_C, Reset_N, Reset_V, Reset_Z, V_Flag, Z_Flag : in STD_LOGIC;
            StatusVector : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal C_Flag_TB, Clock_TB, LoadFlags_TB, N_Flag_TB, Reset_C_TB, Reset_N_TB, Reset_V_TB, Reset_Z_TB, V_Flag_TB, Z_Flag_TB : STD_LOGIC := '0';
    signal StatusVector_TB : STD_LOGIC_VECTOR(3 downto 0);
    begin

        Clock_TB <= not Clock_TB after 10ns;

        StatReg: CPU_StatusRegister_20332706
        Port Map (
            C_Flag => C_Flag_TB,
            Clock => Clock_TB,
            LoadFlags => LoadFlags_TB,
            N_Flag => N_Flag_TB,
            Reset_C => Reset_C_TB,
            Reset_N => Reset_N_TB,
            Reset_V => Reset_V_TB,
            Reset_Z => Reset_Z_TB,
            V_Flag => V_Flag_TB,
            Z_Flag => Z_Flag_TB,
            StatusVector => StatusVector_TB
        );
        
        stim:process
        begin
        
        wait for 20ns;
        C_Flag_TB <= '1';
        N_Flag_TB <= '1';
        V_Flag_TB <= '1';
        Z_Flag_TB <= '1';
        LoadFlags_TB <= '1';

        wait for 20ns;
        LoadFlags_TB <= '0';
        Reset_C_TB <= '1';

        wait for 20ns;
        Reset_N_TB <= '1';

        wait for 20ns;
        Reset_V_TB <= '1';

        wait for 20ns;
        Reset_Z_TB <= '1';

        wait for 20ns;
        
        end process;
    end Behavioural;