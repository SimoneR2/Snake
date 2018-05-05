----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2018 11:32:49
-- Design Name: 
-- Module Name: vgasim - Behavioral
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

entity vgasim is
--  Port ( );
end vgasim;

architecture Behavioral of vgasim is
component vga is
Port ( 
ck2, rst: in std_logic; --25mhz
redpixel, greenpixel: in std_logic;
--red,green,blue: in std_logic_vector (3 downto 0);
sincH, sincV: out std_logic;
addV: out std_logic_vector(8 downto 0);
addH: out std_logic_vector ( 9 downto 0);
r,g,b: out std_logic_vector(3 downto 0)
);
end component;
signal ck2,rst,sincH,sincV,red,green: std_logic;
signal addVV: std_logic_vector(8 downto 0);
signal addHH: std_logic_vector ( 9 downto 0);
signal r,g,b: std_logic_vector(3 downto 0);
begin
U1: vga port map (ck2,rst,red,green,sinch,sincv,addvv,addhh,r,g,b);

C:process is
begin
    ck2<='0';
    wait for 20ns;
    ck2<='1';
    wait for 20ns;
end process;

p: process is
begin
    rst<='0';
    red<='1';
    green<='0';
    wait for (10ns);
    rst<='1';
    wait;
end process;
end Behavioral;
