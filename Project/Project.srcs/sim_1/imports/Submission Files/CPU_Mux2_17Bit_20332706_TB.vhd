library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_Mux2_17Bit_20332706_TB is
end CPU_Mux2_17Bit_20332706_TB;

architecture Behavioural of CPU_Mux2_17Bit_20332706_TB is
    component CPU_Mux2_17Bit_20332706
        Port (
            In0, In1 : in STD_LOGIC_VECTOR(16 downto 0);
            Sel : in STD_LOGIC;
            Z : out STD_LOGIC_VECTOR(16 downto 0)
        );
    end component;
    signal In0_TB, In1_TB, Z_TB : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
    signal Sel_TB : STD_LOGIC := '0';
    begin

    MuxC: CPU_Mux2_17Bit_20332706
    Port Map (
        In0 => In0_TB,
        In1 => In1_TB,
        Z => Z_TB,
        Sel => Sel_TB
    );
    stim:process
    begin
    In0_TB <= "11111111111111111";
    In1_TB <= "00000000000000000";
    Sel_TB <= '0';
    wait for 20ns;

    Sel_TB <= '1';
    wait for 20ns;
    end process;
    end Behavioural;