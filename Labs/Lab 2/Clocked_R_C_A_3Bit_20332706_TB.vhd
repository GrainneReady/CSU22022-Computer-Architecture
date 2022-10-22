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

end Clocked_R_C_A_3Bit_20332706_TB;

architecture Sim of Clocked_R_C_A_3Bit_20332706_TB is
-- Component Declaration
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
    END COMPONENT;

--Inputs
    signal Source_SOURCE_A_TB : STD_LOGIC_VECTOR(2 downto 0):= (others => '0');
    signal EN_SOURCE_SOURCE_A_TB : STD_LOGIC := '0';
    signal Source_SOURCE_A_TB : STD_LOGIC_VECTOR(2 downto 0):= (others => '0');
    signal EN_SOURCE_SOURCE_A_TB : STD_LOGIC := '0';
    signal C_IN_TB : STD_LOGIC := '0';
    signal CLOCK_TB : STD_LOGIC := '0';
    signal EN_SUM_TB : STD_LOGIC := '0';

--Outputs
    signal SUM_TB : STD_LOGIC_VECTOR(2 downto 0):= (others => '0');
    signal C_TB : STD_LOGIC := '0';
    signal V_TB : STD_LOGIC := '0';

    constant PERIOD : time := 60ns;
begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Clocked_R_C_A_3Bit_20332706 PORT MAP (
        Source_A => Source_SOURCE_A_TB,
        EN_SOURCE_A => EN_SOURCE_SOURCE_A_TB,
        SOURCE_B => SOURCE_SOURCE_A_TB,
        EN_SOURCE_B => EN_SOURCE_SOURCE_A_TB,
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
    
    -- carry unset 
            
       SOURCE_A_TB <= "000" after PERIOD/2;
       SOURCE_A_TB <= "000" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
       
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "000" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
 
       wait until CLOCK_TB'event and CLOCK_TB='1';
           
       SOURCE_A_TB <= "001" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
       
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "010" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
 
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "011" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
    
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "100" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
 
       wait until CLOCK_TB'event and CLOCK_TB='1';
           
       SOURCE_A_TB <= "101" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
       
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "110" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
 
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "111" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '0' after PERIOD/2;
         
   -- carry set 
            
       SOURCE_A_TB <= "000" after PERIOD/2;
       SOURCE_A_TB <= "000" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;
       
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "000" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;     
 
       wait until CLOCK_TB'event and CLOCK_TB='1';
           
       SOURCE_A_TB <= "001" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2; 
       
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "010" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;
 
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "011" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;
       
       --
    
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "100" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;     
 
       wait until CLOCK_TB'event and CLOCK_TB='1';
           
       SOURCE_A_TB <= "101" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;
       
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "110" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;
 
       wait until CLOCK_TB'event and CLOCK_TB='1';	
 
       SOURCE_A_TB <= "111" after PERIOD/2;
       SOURCE_A_TB <= "001" after PERIOD/2;
       C_IN_TB <= '1' after PERIOD/2;
    end process;

end Sim;
        
        

