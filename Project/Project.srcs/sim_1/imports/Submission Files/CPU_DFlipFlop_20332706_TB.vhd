library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_DFlipFlop_20332706_TB is
end CPU_DFlipFlop_20332706_TB;

architecture Behavioural of CPU_DFlipFlop_20332706_TB is
    component CPU_DFlipFlop_20332706
        Port ( 
            Clock, D, Enable, Reset : in STD_LOGIC;
            Q : out STD_LOGIC
        );
    end component;
    signal Clock_TB, D_TB, Enable_TB, Reset_TB, Q_TB : STD_LOGIC := '0';
    begin
        FlipFlop: CPU_DFlipFlop_20332706
        Port Map (
            Clock => Clock_TB,
            D => D_TB,
            Enable => Enable_TB,
            Reset => Reset_TB,
            Q => Q_TB
        );

        Clock_TB <= not Clock_TB after 5ns;
        stim:process
        begin

            wait for 20ns;
            D_TB <= '1';
            Enable_TB <= '0';
            
            wait for 20ns;
            Enable_TB <= '1';
            
            wait for 20ns;
            Enable_TB <= '0';
            Reset_TB <= '1';
            
            wait for 20ns;
            Reset_TB <= '0';
            D_TB <= '1';
            Enable_TB <= '1';
            
            wait for 20ns;
            Enable_TB <= '0';

        end process;
    end Behavioural;


