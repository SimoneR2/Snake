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
    Port ( ck, ck1hz : in STD_LOGIC;
           button: in STD_LOGIC;
           buttonout: out  STD_LOGIC);
            
end edgebutton;

architecture Behavioral of edgebutton is
type std_logic is (zero,edge,one); --non premuto, fronte, premuto
signal present_state, next_state: std_logic;
begin

process (ck) begin
if (rising_edge(ck)) then
present_state<=next_state;
end if;
end process;

process (present_state, button) begin
case present_state is
when zero => if button = '0' then next_state<=zero; else next_state<=edge; end if;
when edge => if ck1hz = '0' then next_state<=edge; else next_state<=one; end if;
when one => if button = '0' then next_state<=zero; else next_state<=one; end if;
end case;
end process;

process (present_state) begin
if (present_state = edge) then buttonout<='1';
else buttonout<='0';
end if;
end process;

end Behavioral;
