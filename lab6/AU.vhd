----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 01:44:20 PM
-- Design Name: 
-- Module Name: AU - Behavioral
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

entity AU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end AU;

architecture Behavioral of AU is

component Slow_Clk 
    Port ( Clk_in : in STD_LOGIC;
    Clk_out : out STD_LOGIC);
end component;


component Reg
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
    En : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;


component RCA_4
    Port ( A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    C_in : in STD_LOGIC;
    S0 : out STD_LOGIC;
    S1 : out STD_LOGIC;
    S2 : out STD_LOGIC;
    S3 : out STD_LOGIC;
    C_out : out STD_LOGIC);
end component;

signal A_output,B_output,S_output: std_logic_vector(3 downto 0);
signal Clk_slow,enable_A,enable_B,carry_out: std_logic;


begin

Slow_Clock: Slow_Clk
    port map(
    Clk_in=>Clk,
    Clk_out=>Clk_slow
    );

Reg_A: Reg
    port map(
    D=>A,
    En=>enable_A,
    Clk=>Clk_slow,
    Q=>A_output);
    
Reg_B: Reg
    port map(
    D=>A,
    En=>enable_B,
    Clk=>Clk_slow,
    Q=>B_output);

RCA:RCA_4
    port map(
    A0 =>A_output(0),
    A1=>A_output(1),
    A2 =>A_output(2),
    A3 =>A_output(3),
    B0 =>B_output(0),
    B1 =>B_output(1),
    B2 =>B_output(2),
    B3 =>B_output(3),
    C_in =>'0',
    S0 =>S_output(0),
    S1 =>S_output(1),
    S2 =>S_output(2),
    S3 =>S_output(3),
    C_out=>carry_out
    );

Zero<=NOT(S_output(0)) AND NOT(S_output(1)) AND NOT(S_output(2)) AND NOT(S_output(3)) AND NOT(carry_out);

S<=S_output;
carry<=carry_out;
enable_A<=not RegSel;
enable_B<=RegSel; 


end Behavioral;
