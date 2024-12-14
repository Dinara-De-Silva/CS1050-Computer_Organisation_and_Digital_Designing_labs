----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2024 10:05:29 AM
-- Design Name: 
-- Module Name: Bitwise_Operator - Behavioral
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

entity Bitwise_Operator is
    Port ( Operation : in STD_LOGIC_VECTOR (2 downto 0);
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end Bitwise_Operator;

--000 And
--001 Or
--010 xor
--011 not
--100 leftshift
--101 rightshift

architecture Behavioral of Bitwise_Operator is

begin

process (Operation)
begin

if Operation = "000" then
    Output <= A and B;
    
elsif Operation = "001" then
    Output <= A or B;
    
elsif Operation = "010" then
    Output <= A xor B;
    
elsif Operation = "011" then
    Output <= not(A);
                             
elsif Operation = "100" then 
    Output(0) <= '0';
    Output(1) <= A(0);
    Output(2) <= A(1);
    Output(3) <= A(2);
                             
elsif Operation = "101" then 
        Output(0) <= A(1);
        Output(1) <= A(2);
        Output(2) <= A(3);
        Output(3) <= '0';    
        
end if;
end process;

--process (A)
--begin

--if Operation = "011" then
--    Output <= not(A);

--end if;

--end process;


end Behavioral;
