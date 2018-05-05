----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2018 09:58:39
-- Design Name: 
-- Module Name: edgebuttonsim - Behavioral
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

entity edgebuttonsim is
--  Port ( );
end edgebuttonsim;

architecture Behavioral of edgebuttonsim is
    component edgebutton is 
    Port ( ck : in STD_LOGIC;
    button: in STD_LOGIC;
    buttonout: out  STD_LOGIC);
    end component;

signal ckk,but,butout: STD_LOGIC;
begin
U1: edgebutton port map(ck=>ckk,button=>but,buttonout=>butout);

process begin
ckk<='0';
wait for 1ns;
ckk<='1';
wait for 1ns;
end process;

process begin
but<='0';
wait for 5ns;
but<='1';
wait for 7ns;
but<='0';
wait for 4ns;
but<='1';
wait for 5ns;
wait;
end process;
end Behavioral;
