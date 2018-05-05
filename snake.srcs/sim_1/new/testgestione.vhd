----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2018 11:56:03
-- Design Name: 
-- Module Name: testgestione - Behavioral
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

entity testgestione is
--  Port ( );
end testgestione;

architecture Behavioral of testgestione is
component gestione 
 Port (
clk,rst: in std_logic;
sincH, sincV: out std_logic;
r,g,b: out std_logic_vector (3 downto 0)
 );
 end component;
 signal clk,rst,sinch,sincv: std_logic;
 signal r,g,b: std_logic_vector (3 downto 0);
begin
U1: gestione port map (clk,rst,sinch,sincv,r,g,b);
rst<='1';
process
begin
clk<='1';
wait for 1ns;
clk<='0';
wait for 1ns;
end process;

end Behavioral;
