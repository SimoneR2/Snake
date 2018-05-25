----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2018 13:30:58
-- Design Name: 
-- Module Name: animazioni - Behavioral
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

entity animazioni is
 Port (
    enable1hz, rst, gameover: in std_logic;
    LED: out std_logic_vector(15 downto 0)
  );
end animazioni;

architecture Behavioral of animazioni is
signal counter: natural range 0 to 100;
begin

process (enable1hz, rst) begin
if ((rst='0')or(gameover='0')) then counter<=0;
elsif (rising_edge(enable1hz)) then
    if(counter<41) then counter<=counter+1;
    else counter<=0;
    end if;
end if;
end process;

process (enable1hz) begin
case counter is
    when 0 =>  led<=(others=>'0'); --tutto spento
    when 1 =>  led<="1000000000000001"; -- solo estremi
    when 2 =>  led<="1100000000000011"; --avanti così
    when 3 =>  led<="1110000000000111";
    when 4 =>  led<="1111000000001111";
    when 5 =>  led<="1111100000011111";
    when 6 =>  led<="1111110000111111";
    when 7 =>  led<="1111111001111111";
    when 8 =>  led<="1111111111111111";
    when 9 =>  led<="1111111001111111";
    when 10 => led<="1111110000111111";
    when 11 => led<="1111100000011111";
    when 12 => led<="1111000000001111";
    when 13 => led<="1110000000000111";
    when 14 => led<="1100000000000011";
    when 15 => led<="1000000000000001";
    when 16 => led<="0100000000000010";
    when 17 => led<="0010000000000100";
    when 18 => led<="0001000000001000";
    when 19 => led<="0000100000010000";
    when 20 => led<="0000010000100000";
    when 21 => led<="0000001001000000";
    when 22 => led<="0000000110000000";
    when 23 => led<="0000001001000000";
    when 24 => led<="0000010000100000";
    when 25 => led<="0000100000010000";
    when 26 => led<="0001000000001000";
    when 27 => led<="0010000000000100";
    when 28 => led<="0100000000000010";
    when 29 => led<="1000000000000001";
    when 30 => led<="0000000000000000";
    when 31 => led<="1010101010101010";
    when 32 => led<="0101010101010101";
    when 33 => led<="1010101010101010";
    when 34 => led<="0101010101010101";
    when 35 => led<="1010101010101010";
    when 36 => led<="0101010101010101";
    when 37 => led<="0000000000000000";
    when 38 => led<="1111111111111111";
    when 39 => led<="0000000000000000";
    when 40 => led<="1111111111111111";
    when others=> led<="0000000000000000";
    end case;
    end process;
end Behavioral;
