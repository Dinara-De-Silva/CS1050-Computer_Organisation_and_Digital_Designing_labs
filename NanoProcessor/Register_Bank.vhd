----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2024 06:43:27 PM
-- Design Name: 
-- Module Name: Register_Bank - Behavioral
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

entity Register_Bank is
    Port (  Clk : in STD_LOGIC;
          Res : in STD_LOGIC;
          RegEn : in STD_LOGIC_VECTOR (2 downto 0);
          Reg_in : in STD_LOGIC_VECTOR (3 downto 0);
          Reg_0_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_1_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_2_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_3_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_4_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_5_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_6_out : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_7_out : out STD_LOGIC_VECTOR (3 downto 0));
end Register_Bank;

architecture Behavioral of Register_Bank is
component Reg 
    Port ( En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Input : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Decoder_3_to_8 
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal en : std_logic_vector (7 downto 0);

begin

Decoder : Decoder_3_to_8 
    Port MAP( 
           I =>RegEn,
           EN =>'1',
           Y =>en
           );
           
R0 : Reg
    PORT MAP(
        EN=> en(0),
        Clk=> Clk,
        Reset=> Res,
        Input=> Reg_in,
        Output=>Reg_0_out
        );

R1 : Reg
    PORT MAP(
        EN=> en(1),
        Clk=> Clk,
        Reset=> Res,
        Input=> Reg_in,
        Output=>Reg_1_out
        );

R2 : Reg
    PORT MAP(
        EN=> en(2),
        Clk=> Clk,
        Reset=> Res,
        Input=> Reg_in,
        Output=>Reg_2_out
        );
        
R3 : Reg
        PORT MAP(
            EN=> en(3),
            Clk=> Clk,
            Reset=> Res,
            Input=> Reg_in,
            Output=>Reg_3_out
            );
            
R4 : Reg
        PORT MAP(
            EN=> en(4),
            Clk=> Clk,
            Reset=> Res,
            Input=> Reg_in,
            Output=>Reg_4_out
            );           
            
 R5 : Reg
        PORT MAP(
            EN=> en(5),
            Clk=> Clk,
            Reset=> Res,
            Input=> Reg_in,
            Output=>Reg_5_out
            ); 
            
R6 : Reg
        PORT MAP(
            EN=> en(6),
            Clk=> Clk,
            Reset=> Res,
            Input=> Reg_in,
            Output=>Reg_6_out
            );       
            
R7 : Reg
        PORT MAP(
            EN=> en(7),
            Clk=> Clk,
            Reset=> Res,
            Input=> Reg_in,
            Output=>Reg_7_out
            );            
            
            
            
            
                        
Reg_0_out <="0000";

end Behavioral;
