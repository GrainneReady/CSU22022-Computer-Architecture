library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity CPU_PC_20332706 is
    Port (
        Clock, PI, PL, Reset : in STD_LOGIC;
        Displacement : in STD_LOGIC_VECTOR(31 downto 0);
        InstAdd : out STD_LOGIC_VECTOR(31 downto 0)
    );
end CPU_PC_20332706;

architecture Behavioural of CPU_PC_20332706 is
    component CPU_Mux2_32Bit_20332706
        Port(
            in0, in1 : in STD_LOGIC_VECTOR (31 downto 0);
            Sel : in STD_LOGIC;
            Z : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    
    component DP_RippleCarryAdder32Bit_20332706
        Port (
            A, B : in std_logic_vector (31 downto 0);
            C_IN : in std_logic;
            SUM : out std_logic_vector (31 downto 0);
            C_OUT, V : out std_logic
        );
    end component;

    component RF_Register32Bit_20332706
        Port (
            D : in std_logic_vector(31 downto 0);
            Clock, Load : in std_logic;
            Q : out std_logic_vector(31 downto 0)
        );
    end component;
    signal PL_PI_MuxOut, AdderOut, ResetMuxOut, PCOut : STD_LOGIC_VECTOR(31 downto 0);
    signal PCLoad : STD_LOGIC;
    begin
        PCLoad <= (Reset or PL) or (PI);
        PL_PI_Mux: CPU_Mux2_32Bit_20332706
        Port Map (
        	in0 => Displacement,
            in1 => x"00000001",
            Sel => PI,
            Z => PL_PI_MuxOut
        );

        Adder: DP_RippleCarryAdder32Bit_20332706
        Port Map (
            A => PCOut,
            B => PL_PI_MuxOut,
            C_IN => '0',
            SUM => AdderOut
        );

        ResetMux: CPU_Mux2_32Bit_20332706
        Port Map (
            in0 => AdderOut,
            in1 => x"00000006",
            Sel => Reset,
            Z => ResetMuxOut
        );

        PC: RF_Register32Bit_20332706
        Port Map (
            Clock => Clock,
            D => ResetMuxOut,
            Load => PCLoad,
            Q => PCOut
        );
        InstAdd <= PCOut;
    end Behavioural;
