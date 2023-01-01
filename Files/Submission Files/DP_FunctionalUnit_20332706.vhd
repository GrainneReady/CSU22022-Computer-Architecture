library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DP_FunctionalUnit_20332706 is
    Port (
        B, A : in STD_LOGIC_VECTOR (31 downto 0);
        FS : in STD_LOGIC_VECTOR (4 downto 0);
        C, N, Z, V : out STD_LOGIC;
        F : out STD_LOGIC_VECTOR (31 downto 0)
    );
end DP_FunctionalUnit_20332706;

architecture Behavioural of DP_FunctionalUnit_20332706 is
    component DP_Shifter_20332706
        Port (
            B : in STD_LOGIC_VECTOR (31 downto 0);
            S1, S2 : in STD_LOGIC;
            G : out STD_LOGIC_VECTOR (31 downto 0);
            C : out STD_LOGIC
        );
    end component;

    component DP_ArithmeticLogicUnit_20332706
        Port (
            A, B : in STD_LOGIC_VECTOR (31 downto 0);
            C_IN, S0, S1, S2 : in STD_LOGIC;
            C, V : out STD_LOGIC;
            G : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    component CPU_Mux2_32Bit_20332706
        Port (
            in0, in1 : in STD_LOGIC_VECTOR (31 downto 0);
            Sel : in STD_LOGIC;
            Z : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    component DP_ZeroDetection_20332706
        Port (
            MuxF_to_F : in STD_LOGIC_VECTOR (31 downto 0);
            Z : out STD_LOGIC
        );
    end component;

    component DP_CFlagMux2_1Bit_20332706
        Port (
            C_ALU, C_Shift, FS4 : in STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;
    signal in0, in1, ALU_Out_G, Mux_F_Out : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal C_Shift, C_ALU : STD_LOGIC := '0';
    begin
        Shifter: DP_Shifter_20332706 PORT MAP (
            B => B,
            S1 => FS(2),
            S2 => FS(3),
            G => in1,
            C => C_Shift
        );

        ALU: DP_ArithmeticLogicUnit_20332706 PORT MAP (
            A => A,
            B => B,
            C_IN => FS(0),
            S0 => FS(1),
            S1 => FS(2),
            S2 => FS(3),
            C => C_ALU,
            G => in0,
            V => V
        );

        MuxF: CPU_Mux2_32Bit_20332706 PORT MAP (
            in0 => in0,
            in1 => in1,
            Sel => FS(4),
            Z => Mux_F_Out
        );
        F <= Mux_F_Out;
        N <= Mux_F_Out(31);

        C_Flag: DP_CFlagMux2_1Bit_20332706 PORT MAP (
            C_ALU => C_ALU,
            C_Shift => C_Shift,
            FS4 => FS(4),
            C => C
        );

        Z_Flag: DP_ZeroDetection_20332706 PORT MAP (
            MuxF_to_F => Mux_F_Out,
            Z => Z
        );


    end Behavioural;