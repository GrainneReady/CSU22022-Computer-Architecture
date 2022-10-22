----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Prof. Michael Manzke
-- 
-- Create Date: 06.10.2022 20:31:08
-- Design Name: 
-- Module Name: Register3Bit_20332706 - Behavioral
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

entity Register3Bit_20332706 is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end Register3Bit_20332706;

architecture Behavioral of Register3Bit_20332706 is

begin

process (CLK)
begin
   if CLK'event and CLK='1' then
     if Load='1' then
       Q <= D after 3ns;
     end if;
   end if;
end process;

end Behavioral;
