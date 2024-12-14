----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 10:34:52 AM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is

component Decoder_3_to_8 
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

SIGNAL O1,O2: STD_LOGIC_VECTOR(7 downto 0);

begin

Decoder_3_to_8_0 : Decoder_3_to_8
    port map(
        I=>S,
        EN=>EN,
        Y => O1 );
        
O2(0) <= O1(0) AND D(0);
O2(1) <= O1(1) AND D(1);
O2(2) <= O1(2) AND D(2);
O2(3) <= O1(3) AND D(3);
O2(4) <= O1(4) AND D(4);
O2(5) <= O1(5) AND D(5);
O2(6) <= O1(6) AND D(6);
O2(7) <= O1(7) AND D(7);

Y<= O2(0) OR O2(1) OR O2(2) OR O2(3) OR O2(4) OR O2(5) OR O2(6) OR O2(7) ;

end Behavioral;
