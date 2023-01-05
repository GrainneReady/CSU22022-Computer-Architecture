library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_PC_20332706_TB is
end CPU_PC_20332706_TB;

architecture Behavioural of CPU_PC_20332706_TB is
    component CPU_PC_20332706
        Port (
            Clock, PI, PL, Reset : in STD_LOGIC;
            Displacement : in STD_LOGIC_VECTOR(31 downto 0);
            InstAdd : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    -- PI - Increment Enable Signal PC++
    -- PL - PC Load Signal, PC += se AD
    signal Clock_TB, PI_TB, PL_TB, Reset_TB : STD_LOGIC := '0';
    signal Displacement_TB, InstAdd_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    begin
        Clock_TB <= not Clock_TB after 20ns;
        PC: CPU_PC_20332706
        Port Map (
            Clock => Clock_TB,
            Displacement => Displacement_TB,
            PI => PI_TB,
            PL => PL_TB,
            Reset => Reset_TB,
            InstAdd => InstAdd_TB
        );
        stim:process
        begin
        
        Reset_TB <= '1';
        PI_TB <= '0';
        PL_TB <= '0';
        Displacement_TB <= x"00000006";
        wait for 20ns;
        
        Reset_TB <= '0';
        PI_TB <= '1';
        wait for 20ns;
        
        PI_TB <= '0';
        Displacement_TB <= x"00000006";
        PL_TB <= '1';
        wait for 20ns;
        
        PL_TB <= '0';
        Displacement_TB <= x"00000000";
        
        end process;


    end Behavioural;