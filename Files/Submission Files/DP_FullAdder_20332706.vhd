library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_FullAdder_20332706 is
    Port (
        A, B, C_IN : in std_ulogic;
        C_OUT, SUM : out std_ulogic
    );
end DP_FullAdder_20332706;

architecture Behavioural of DP_FullAdder_20332706 is
    signal s1,s2,s3 : std_ulogic;
begin
    s1 <= (A xor B);
    s2 <= (C_IN and s1);
    s3 <= (A and B);
    sum <= (s1 xor C_IN);
    c_out <= (s2 or s3);

end Behavioural;
