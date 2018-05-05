----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2018 09:39:17
-- Design Name: 
-- Module Name: snakemov - Behavioral
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

entity snakemov is
    Port ( ck1: in STD_LOGIC;--clock da 1 o 0.5 secondi
           BTNC,BTNU: in std_logic);--button di ingresso a caso...da verificare
end snakemov;

architecture Behavioral of snakemov is
   component edgebutton Port ( ck : in STD_LOGIC;
       button: in STD_LOGIC;
       buttonout: out  STD_LOGIC);
end component;

signal sx: std_logic;
signal dx: std_logic;
signal dir:std_logic_vector(1 downto 0):="01";--direzione 00 su    (inizialmente va verso dx
                                                  --01 dx
                                                  --10 giù
                                                   --11 sx      
--FSM snake
type std_logic is (up,dxx,down,sxx);
signal present_state, next_state: std_logic;                                    
begin
sxbut:edgebutton port map(ck1,btnc,sx);
dxbut:edgebutton port map(ck1,btnu,dx);

process(ck1)
begin
if rising_edge(ck1) then
    present_state<=next_state;
end if;
end process;

process (present_state)
begin
next_state<=present_state;
    case present_state is
    when up => if sx='1' then next_state<=sxx;
                elsif dx='1' then next_state<=dxx;
                else next_state<=up;
                end if;
    when sxx => if sx='1' then next_state<=down;
                elsif dx='1' then next_state<=up;
                else next_state<=sxx;
                end if;
    when down => if sx='1' then next_state<=dxx;
              elsif dx='1' then next_state<=sxx;
              else next_state<=down;
              end if;
    when dxx => if sx='1' then next_state<=up;
                elsif dx='1' then next_state<=down;
                else next_state<=dxx;
                end if;
end case;
end process;

process(present_state)
begin
--da definire uscite verso chi...ram
end process;


end Behavioral;
