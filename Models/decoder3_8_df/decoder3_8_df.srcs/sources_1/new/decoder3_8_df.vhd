----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 15:40:20
-- Design Name: 
-- Module Name: decoder3_8_df - Behavioral
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

entity decoder3_8_df is
    Port ( Ip : in STD_LOGIC_VECTOR (2 downto 0);
           Op : out STD_LOGIC_VECTOR (7 downto 0));
end decoder3_8_df;

architecture Behavioral of decoder3_8_df is

begin

Op(0)<=(not Ip(2))and(not Ip(1))and(not Ip(0));
Op(1)<=(not Ip(2))and(not Ip(1))and(Ip(0));
Op(2)<=(not Ip(2))and(Ip(1))and(not Ip(0));
Op(3)<=(not Ip(2))and(Ip(1))and(Ip(0));
Op(4)<=(Ip(2))and(not Ip(1))and(not Ip(0));
Op(5)<=(Ip(2))and(not Ip(1))and(Ip(0));
Op(6)<=(Ip(2))and(Ip(1))and(not Ip(0));
Op(7)<=(Ip(2))and(Ip(1))and(Ip(0));

end Behavioral;
