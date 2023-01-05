library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_SMux_20332706 is
    Port (
        C_Flag, N_Flag, V_Flag, Z_Flag : in STD_LOGIC;
        MS : in STD_LOGIC_VECTOR(2 downto 0);
        CAR : out STD_LOGIC
    );
end CPU_SMux_20332706;

architecture Behavioural of CPU_SMux_20332706 is
    signal not_C, not_Z, w_one, w_zero : STD_LOGIC;
    begin
    not_C <= not(C_Flag) after 1ns;
    not_Z <= not(Z_Flag) after 1ns;
    w_one <= '1';
    w_zero <= '0';
            CAR <= C_Flag after 2ns when MS = "000" else
                   N_Flag after 2ns when MS = "001" else
                   not_C  after 2ns when MS = "010" else
                   not_Z  after 2ns when MS = "011" else
                   w_one  after 2ns when MS = "100" else
                   V_Flag after 2ns when MS = "101" else
                   Z_Flag after 2ns when MS = "110" else
                   w_zero after 2ns when MS = "111" ;
    end Behavioural;