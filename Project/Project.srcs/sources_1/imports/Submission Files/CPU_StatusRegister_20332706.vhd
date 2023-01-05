library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_StatusRegister_20332706 is
    Port (
        C_Flag, Clock, LoadFlags, N_Flag, Reset_C, Reset_N, Reset_V, Reset_Z, V_Flag, Z_Flag : in STD_LOGIC;
        StatusVector : out STD_LOGIC_VECTOR(3 downto 0)
    );
end CPU_StatusRegister_20332706;

architecture Behavioural of CPU_StatusRegister_20332706 is
    component CPU_DFlipFlop_20332706
        Port ( 
            Clock, D, Enable, Reset : in STD_LOGIC;
            Q : out STD_LOGIC
        );
    end component;
    begin
        CFlag: CPU_DFlipFlop_20332706
        Port Map (
            Clock => Clock,
            D => C_Flag,
            Enable => LoadFlags,
            Reset => Reset_C,
            Q => StatusVector(0)
        );

        NFlag: CPU_DFlipFlop_20332706
        Port Map (
            Clock => Clock,
            D => N_Flag,
            Enable => LoadFlags,
            Reset => Reset_N,
            Q => StatusVector(2)
        );

        VFlag: CPU_DFlipFlop_20332706
        Port Map (
            Clock => Clock,
            D => V_Flag,
            Enable => LoadFlags,
            Reset => Reset_V,
            Q => StatusVector(1)
        );

        ZFlag: CPU_DFlipFlop_20332706
        Port Map (
            Clock => Clock,
            D => Z_Flag,
            Enable => LoadFlags,
            Reset => Reset_Z,
            Q => StatusVector(3)
        );


    end Behavioural;