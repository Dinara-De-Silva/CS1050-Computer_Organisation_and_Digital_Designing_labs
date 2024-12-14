----------------------------------------------------------------------------------
-- Company: 
-- Engineer: DE SILVA A D D T 
-- 
-- Create Date: 04/12/2024 09:25:44 PM
-- Design Name: 
-- Module Name: Two_way_3_bit_Mux - Behavioral
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

entity Two_way_3_bit_Mux is
    Port ( I0 : in STD_LOGIC_VECTOR (2 downto 0);
           I1 : in STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC;
           O : OUT STD_LOGIC_VECTOR (2 downto 0));
end Two_way_3_bit_Mux;

architecture Behavioral of Two_way_3_bit_Mux is

begin

PROCESS(I0,I1,S)
BEGIN
    IF S = '0' THEN 
        O<=I0;
    ELSE 
        O<=I1;
    END IF;
END PROCESS;


end Behavioral;
