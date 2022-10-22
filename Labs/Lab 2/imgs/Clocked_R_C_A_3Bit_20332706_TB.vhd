----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Prof. Michael Manzke
-- 
-- Create Date: 07.10.2022 18:03:55
-- Design Name: 
-- Module Name: Clocked_R_C_A_3Bit_20332706_TB - Sim
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clocked_R_C_A_3Bit_20332706_TB is
--  Port ( );
end Clocked_R_C_A_3Bit_20332706_TB;

architecture Sim of Clocked_R_C_A_3Bit_20332706_TB is

COMPONENT Clocked_R_C_A_3Bit_20332706
    PORT(
      Source_A : in STD_LOGIC_VECTOR (2 downto 0);
      EN_Source_A : in STD_LOGIC;
      Source_B : in STD_LOGIC_VECTOR (2 downto 0);
      EN_Source_B : in STD_LOGIC;
      C_IN : in STD_LOGIC;
      CLOCK : in STD_LOGIC;
      EN_SUM : in STD_LOGIC;
      SUM : out STD_LOGIC_VECTOR (2 downto 0);
      C : out STD_LOGIC;
      V : out STD_LOGIC
    ); 
end COMPONENT;  

    signal Source_A_TB : std_logic_vector(2 downto 0):= (others => '0');
    signal EN_Source_A_TB : std_logic:= '0';
    signal Source_B_TB : std_logic_vector(2 downto 0):= (others => '0');
    signal EN_Source_B_TB : std_logic:= '0';
    signal C_IN_TB : std_logic:= '0';
    signal CLOCK_TB : std_logic:= '0';
    signal EN_SUM_TB : std_logic:= '0';

    signal SUM_TB : std_logic_vector(2 downto 0):= (others => '0');
    signal C_TB : std_logic:= '0';
    signal V_TB : std_logic:= '0';
    
    constant PERIOD : time := 60ns;

begin
	
   uut: Clocked_R_C_A_3Bit_20332706 port map (
      Source_A => Source_A_TB,
      EN_Source_A => EN_Source_A_TB,
      Source_B => Source_B_TB,
      EN_Source_B => EN_Source_B_TB,
      C_IN => C_IN_TB,
      CLOCK => CLOCK_TB,
      EN_SUM => EN_SUM_TB,
      SUM => SUM_TB,
      C => C_TB,
      V => V_TB
    );
        
   CLOCK_TB <= not CLOCK_TB after PERIOD/2;
stim_proc: process
    begin
      wait until CLOCK_TB'event and CLOCK_TB='1';
        EN_Source_A_TB <= '1' after PERIOD/2;
        EN_Source_B_TB <= '1' after PERIOD/2;
        EN_SUM_TB <= '1' after PERIOD/2;
        C_IN_TB <= '0' after PERIOD/2;
         
      wait until CLOCK_TB'event and CLOCK_TB='1';
      -- Test vector A 
        Source_A_TB <= "101" after PERIOD/2;
        Source_B_TB <= "110" after PERIOD/2;
        C_IN_TB <= '0' after PERIOD/2;
         
    --   wait until CLOCK_TB'event and CLOCK_TB='1';
    --   -- Test vector B 
        -- Source_A_TB <= "101" after PERIOD/2;
        -- Source_B_TB <= "111" after PERIOD/2;
        -- C_IN_TB <= '0' after PERIOD/2;
         
    --   wait until CLOCK_TB'event and CLOCK_TB='1';
    --   -- Test vector C
        -- Source_A_TB <= "001" after PERIOD/2;
        -- Source_B_TB <= "011" after PERIOD/2;
        -- C_IN_TB <= '0' after PERIOD/2;
         
    --   wait until CLOCK_TB'event and CLOCK_TB='1';
    --   -- Test vector D 
        -- Source_A_TB <= "001" after PERIOD/2;
        -- Source_B_TB <= "010" after PERIOD/2;
        -- C_IN_TB <= '0' after PERIOD/2;

    --   wait until CLOCK_TB'event and CLOCK_TB='1';
    --   -- Test vector E
        -- Source_A_TB <= "010" after PERIOD/2;
        -- Source_B_TB <= "110" after PERIOD/2;
        -- C_IN_TB <= '0' after PERIOD/2;
         
    --   wait until CLOCK_TB'event and CLOCK_TB='1';
    --   -- Test vector F 
        -- Source_A_TB <= "110"  after PERIOD/2;
        -- Source_B_TB <= "001" after PERIOD/2;
        -- C_IN_TB <= '1' after PERIOD/2;

    end process;

end Sim;
