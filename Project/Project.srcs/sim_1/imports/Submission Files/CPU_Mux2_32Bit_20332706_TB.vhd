library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_Mux2_32Bit_20332706_TB is
end CPU_Mux2_32Bit_20332706_TB;

architecture Behavioural of CPU_Mux2_32Bit_20332706_TB is
    component CPU_Mux2_32Bit_20332706
        Port (
            in0, in1 : in STD_LOGIC_VECTOR (31 downto 0);
            Sel : in STD_LOGIC;
            Z : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    --Inputs
    signal in0_TB, in1_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal Sel_TB : STD_LOGIC := '0';

    --Outputs
    signal Z_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

    begin
        uut: CPU_Mux2_32Bit_20332706 Port Map (
            in0 => in0_TB,
            in1 => in1_TB,
            Sel => Sel_TB,
            Z => Z_TB
        );
        stim: process
        begin
            Sel_TB <= '0';
            in0_TB <= "00000001001101100100000010100010";
            in1_TB <= "00000001001101100100000010100011";
            wait for 1ns;

            Sel_TB <= '0';
            wait for 3ns;

            Sel_TB <= '1';
            wait for 3ns;
        end process;
    end Behavioural;