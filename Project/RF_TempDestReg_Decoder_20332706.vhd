library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RF_DestReg_Decoder_20332706 is
    Port ( 
        A : in std_logic_vector(3 downto 0);
        D : out std_logic_vector(15 downto 0)
   );
end RF_DestReg_Decoder_20332706;

architecture Behavioral of RF_DestReg_Decoder_20332706 is
    constant gate_delay : time := 3ns;
    signal not_A0, not_A1, not_A2, not_A3 : std_logic;
    begin
        not_A0 <= not A(0);
        not_A1 <= not A(1);
        not_A2 <= not A(2);
        not_A3 <= not A(3);
        D(0)  <= (not_A0) and (not_A1) and (not_A2) and (not_A3) after gate_delay;
        D(1)  <= (A(0))   and (not_A1) and (not_A2) and (not_A3) after gate_delay;
        D(2)  <= (not_A0) and (A(1))   and (not_A2) and (not_A3) after gate_delay;
        D(3)  <= (A(0))   and (A(1))   and (not_A2) and (not_A3) after gate_delay;
        D(4)  <= (not_A0) and (not_A1) and (A(2))   and (not_A3) after gate_delay;
        D(5)  <= (A(0))   and (not_A1) and (A(2))   and (not_A3) after gate_delay;
        D(6)  <= (not_A0) and (A(1))   and (A(2))   and (not_A3) after gate_delay;
        D(7)  <= (A(0))   and (A(1))   and (A(2))   and (not_A3) after gate_delay;
        D(8)  <= (not_A0) and (not_A1) and (not_A2) and (A(3))   after gate_delay;
        D(9)  <= (A(0))   and (not_A1) and (not_A2) and (A(3))   after gate_delay;
        D(10) <= (not_A0) and (A(1))   and (not_A2) and (A(3))   after gate_delay;
        D(11) <= (A(0))   and (A(1))   and (not_A2) and (A(3))   after gate_delay;
        D(12) <= (not_A0) and (not_A1) and (A(2))   and (A(3))   after gate_delay;
        D(13) <= (A(0))   and (not_A1) and (A(2))   and (A(3))   after gate_delay;
        D(14) <= (not_A0) and (A(1))   and (A(2))   and (A(3))   after gate_delay;
        D(15) <= (A(0))   and (A(1))   and (A(2))   and (A(3))   after gate_delay;
end Behavioral;