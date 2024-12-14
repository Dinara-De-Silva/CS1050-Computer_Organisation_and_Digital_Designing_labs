----------------------------------------------------------------------------------
-- Company: 
-- Engineer: DE SILVA A D D T
-- 
-- Create Date: 04/13/2024 10:58:33 AM
-- Design Name: 
-- Module Name: Program_ROM - Behavioral
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

use ieee.numeric_std.all; 

entity Program_ROM is
    Port ( Memo_sel : in STD_LOGIC_VECTOR (2 downto 0);
           Instruction :OUT STD_LOGIC_VECTOR (11 DOWNTO 0));    
end Program_ROM;

architecture Behavioral of Program_ROM is

type instructions is array (0 to 7) of std_logic_vector(11 downto 0);

signal program_ROM : instructions := (
    "100010001010", --0  MOVI R1 , 10  
    "100100000001", --1  MOVI R2 , 1
    "010100000000", --2  NEG R2
    "000010100000", --3  ADD R1 , R2
    "110010000111", --4  JZR R1 , 7
    "110000000011", --5  JZR R0 , 3
    "000000000000", --6  NULL
    "000000000000"  --7  NULL
);

begin

Instruction <= program_ROM(to_integer(unsigned(Memo_sel)));


end Behavioral;

-- "100010000001", -- MOVI R1 , 1
-- "100100000010", --MOVI R2 , 2
-- "100110000011", --MOVE R3 , 3
-- "0000100100000", -- ADD R1 , R2
-- "0000100110000" -- ADD R1 , R3
--
--
--




