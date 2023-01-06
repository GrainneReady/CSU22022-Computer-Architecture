library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_RippleCarryAdder32Bit_20332706_TB is
end DP_RippleCarryAdder32Bit_20332706_TB;

architecture Sim of DP_RippleCarryAdder32Bit_20332706_TB is
    component DP_RippleCarryAdder32Bit_20332706
    
    Port (
        A, B : in STD_LOGIC_VECTOR (31 downto 0);
        C_IN : in STD_LOGIC;
        SUM : out STD_LOGIC_VECTOR (31 downto 0);
        C_OUT, V : out STD_LOGIC 
    );
    end component;

    -- Inputs
    signal A_TB, B_TB : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal C_IN_TB : STD_LOGIC := '0';

    --Outputs
    signal SUM_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal C_OUT_TB, V_TB : STD_LOGIC := '0';

    begin

    -- Instantiate the Unit Under Test (UUT)
    uut: DP_RippleCarryAdder32Bit_20332706 PORT MAP (
        A => A_TB,
        B => B_TB,
        C_IN => C_IN_TB,
        SUM => SUM_TB,
        C_OUT => C_OUT_TB,
        V => V_TB
    );

    stim_proc: process
        begin

        -- Test Vector A [Negative number + Negative number with overflow flag (V-flag)]        
        A_TB <= "10100000000000000000000000000000";
        B_TB <= "11000000000000000000000000000000";
        C_IN_TB <= '0';
        wait for 400ns; -- SUM <= 1610712736 in 2's compliment
        
        -- Test Vector B [Negative number + negative number without overflow flag (V-flag)]
        A_TB <= "10100000000000000000000000000000";
        B_TB <= "11100000000000000000000000000000";
        C_IN_TB <= '0';
        wait for 400ns; -- SUM <= -2147483648 in 2's compliment
        
        -- Test Vector C [Positive number + positive number with overflow flag (V-flag)]
        A_TB <= "00100000000000000000000000000000";
        B_TB <= "01101000000000000000000000000000";
        C_IN_TB <= '0';
        wait for 400ns; -- SUM <= -2013265920 in 2's compliment
        
        -- Test Vector D [Positive number + positive number without overflow flag (V-flag)]
        A_TB <= "00100000000000000000000000000000";
        B_TB <= "01000000000000000000000000000000";
        C_IN_TB <= '0';
        wait for 400ns; -- SUM <= 1610712736 in 2's compliment
        
        -- Test Vector E [Positive number + nagative number without overflow flag (V-flag)]
        A_TB <= "01000000000000000000000000000000";
        B_TB <= "11000000000000000000000000000000";
        C_IN_TB <= '0';
        wait for 400ns; -- SUM <= 0 in 2's compliment
        
        -- Test Vector F, [Negative number + positive number without overflow flag (V-flag)... C0 is set]
        A_TB <= "11000000000000000000000000000000";
        B_TB <= "00000000000000000000000000000001";
        C_IN_TB <= '1';
        wait for 400ns; -- SUM <= -1073741822 in 2's compliment
        
        -- Test G, Setting C flag with student number (20332706)
        A_TB <= "00000001001101100100000010100010";
        B_TB <= "11111110110010011011111101011101";
        wait for 400ns;
        
        -- Test H, Setting V flag with student number (20332706)
        A_TB <= "00000001001101100100000010100010";
        B_TB <= "01111110110010011011111101011101";
        wait for 400ns;
        
        -- Test I, Worst case, delay of (2524ns - 2400 ns = 124ns)
        A_TB <= "11111111111111111111111111111111";
        B_TB <= "00000000000000000000000000000000";
        wait for 400ns;

        end process;
    end Sim; 
