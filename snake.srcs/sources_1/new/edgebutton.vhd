----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2018 09:38:05
-- Design Name: 
-- Module Name: edgebutton - Behavioral
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

entity edgebutton is
    Port ( ck : in STD_LOGIC;
           button: in STD_LOGIC;
           buttonout: out  STD_LOGIC);
            
end edgebutton;

architecture Behavioral of edgebutton is
type std_logic is (uno,due,tre); --non premuto, fronte, premuto
signal present_state, next_state: std_logic;
begin

process (ck) begin
if rising_edge(ck) then
present_state<=next_state;
end if;
end process;

process (present_state, button) begin
case present_state is
when uno => if button = '0' then next_state<=uno; else next_state<=due; end if;
when due => if button = '0' then next_state<=uno; else next_state<=tre; end if;
when tre => if button = '0' then next_state<=uno; else next_state<=tre; end if;
end case;
end process;

process (present_state) begin
buttonout <= '0';
if present_state = due then buttonout<='1';
end if;
end process;

end Behavioral;
