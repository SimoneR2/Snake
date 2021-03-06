----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2018 15:51:05
-- Design Name: 
-- Module Name: prescaler1hz - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prescaler1hz is
  Port (
        ck: in std_logic;
        enable: out std_logic 
        );
end prescaler1hz;

architecture Behavioral of prescaler1hz is
signal count: std_logic_vector(24 downto 0):="1111111110000000000000000";
signal clock: std_logic:='0';
begin
enable<=clock;
process (ck)
begin
if (rising_edge(ck)) then
if (count="1111111111111111111100000") then clock <= '1';
elsif (count = "1111111111111111111100010") then clock <= '0'; count<=(others=>'0');
end if;
count<=std_logic_vector(unsigned(count)+1);
end if;
end process;
end Behavioral;
