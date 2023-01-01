library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DP_Datapath_20332706 is
    Port (
        IR_IN, DATA_IN : in STD_LOGIC_VECTOR(31 downto 0);
        MB, MD, Clock, RW : in STD_LOGIC;
        FS, DR, SA, SB : in STD_LOGIC_VECTOR(4 downto 0);
        TA, TB, TD : in STD_LOGIC_VECTOR(3 downto 0);
        DATA_OUT, ADD : out STD_LOGIC_VECTOR(31 downto 0);
        C, N, V, Z : out STD_LOGIC
    );
end DP_Datapath_20332706;

architecture Behavioural of DP_Datapath_20332706 is
    signal regFileA, regFileB, functionUnitF, muxBOut, muxDOut : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    component CPU_Mux2_32Bit_20332706
        Port(
            in0, in1 : in STD_LOGIC_VECTOR (31 downto 0);
            Sel : in STD_LOGIC;
            Z : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    component DP_FunctionalUnit_20332706
        Port (
            B, A : in STD_LOGIC_VECTOR (31 downto 0);
            FS : in STD_LOGIC_VECTOR (4 downto 0);
            C, N, Z, V : out STD_LOGIC;
            F : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    component RF_RegisterFile_32_15_20332706
        Port(
            SA, DR, SB : in STD_LOGIC_VECTOR (4 downto 0);
            TB, TD, TA : in STD_LOGIC_VECTOR (3 downto 0);
            Clock, RW : in STD_LOGIC;
            D : in STD_LOGIC_VECTOR (31 downto 0);
            A, B : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    begin
        MuxB: CPU_Mux2_32Bit_20332706
            Port Map(
                in0 => regFileB,
                in1 => IR_IN,
                Sel => MB,
                Z => muxBOut
            );

        MuxD: CPU_Mux2_32Bit_20332706
            Port Map(
                in0 => functionUnitF,
                in1 => DATA_IN,
                Sel => MD,
                Z => muxDOut
            );
        
        FunctionalUnit: DP_FunctionalUnit_20332706
            Port Map(
                A => regFileA,
                B => muxBOut,
                FS => FS,
                C => C,
                N => N,
                V => V,
                Z => Z,
                F => functionUnitF
            );
        
        RegFile: RF_RegisterFile_32_15_20332706
            Port Map(
                Clock => Clock,
                D => muxDOut,
                DR => DR,
                RW => RW,
                SA => SA,
                SB => SB,
                TA => TA,
                TB => TB,
                TD => TD,
                A => regFileA,
                B => regFileB
            );
        ADD <= regFileA;
        DATA_OUT <= muxBOut;
    end Behavioural;
