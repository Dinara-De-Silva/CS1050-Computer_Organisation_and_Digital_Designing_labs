----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2024 11:30:40 AM
-- Design Name: 
-- Module Name: Comparator_4_bit - Behavioral
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

entity Comparator_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Operator : in STD_LOGIC_VECTOR (1 downto 0);
           Output : out STD_LOGIC);
end Comparator_4_bit;

architecture Behavioral of Comparator_4_bit is

begin

--00 is equal
--01 grater than A>B
--10 less than A<B
process(operator)
begin

if operator = "00" then
    if A=B then
        Output <= '1';
    else 
        Output <= '0';
    end if;
    
elsif operator = "01" then
        if A>B then
            Output <= '1';
        else 
            Output <= '0';
        end if;
elsif operator = "10" then
        if A<B then
            Output <= '1';
        else 
            Output <= '0';
        end if;
            
end if;
end process;

end Behavioral;
