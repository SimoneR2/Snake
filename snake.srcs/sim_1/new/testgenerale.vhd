----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2018 10:44:56
-- Design Name: 
-- Module Name: testgenerale - Behavioral
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

entity testgenerale is
--  Port ( );
end testgenerale;

architecture Behavioral of testgenerale is
component logicagenerale is
 Port (
   ck, rst: in std_logic;
   BTN1, BTN2: in std_logic;
   sincH, sincV: out std_logic;
   r,g,b: out std_logic_vector(3 downto 0)
  );
  end component;
  signal ck,rst,btn1,btn2,sinch,sincv: std_logic:='0';
  signal r,g,b: std_logic_vector (3 downto 0);
begin
u1: logicagenerale port map (ck,rst,btn1,btn2,sinch,sincv,r,g,b);

CLK: process
begin
    ck<='0';
    wait for 5ns;
    ck<='1';
    wait for 5ns;
end process;
process
begin
    rst<='0';
    wait for 100ns;
    rst<='1';
    btn1<='1';
    wait for 10ns;
    btn1<='0';
    wait for 200ns;
    btn2<='1';
    wait for 200ns;
    btn2<='0';
    wait for 200ns;
    btn1<='1';
        wait for 330ns;
        btn1<='0';
        wait for 200ns;
        btn2<='1';
        wait for 200ns;
        btn2<='0';
        wait;
    end process;

end Behavioral;
