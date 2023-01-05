library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_SignExtend_20332706_TB is
end CPU_SignExtend_20332706_TB;

architecture Behavioural of CPU_SignExtend_20332706_TB is
    component CPU_SignExtend_20332706
        Port (
            Input : in STD_LOGIC_VECTOR(9 downto 0);
            Output : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    signal Input_TB : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
    signal Output_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    begin
        SignExt: CPU_SignExtend_20332706
        Port Map (
            Input => Input_TB,
            Output => Output_TB
        );

        stim:process
        begin
            
        Input_TB <= "1010101010";
        wait for 20ns;

        Input_TB <= "0000000000";
        wait for 20ns;

        Input_TB <= "1111111111";
        wait for 20ns;
        
        Input_TB <= "1000000000";
        wait for 20ns;
        
        Input_TB <= "0111111111";
        wait for 20ns;
        
        end process;
    end Behavioural;