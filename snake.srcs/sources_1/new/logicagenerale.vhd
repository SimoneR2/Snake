----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2018 15:55:53
-- Design Name: 
-- Module Name: logicagenerale - Behavioral
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

entity logicagenerale is
  Port (
    ck, rst: in std_logic;
    BTN1, BTN2: in std_logic;
    sincH, sincV: out std_logic;
    r,g,b: out std_logic_vector(3 downto 0);
    gameOver: out std_logic
   );
end logicagenerale;

architecture Behavioral of logicagenerale is

component prescaler1hz is
  Port (
        ck: in std_logic;
        ck1: out std_logic 
        );
end component;

component gestione Port (
 clk,rst: in std_logic;
 addRAM: in std_logic_vector (12 downto 0);
 dinRAM: in std_logic_vector (3 downto 0);
 writeREQUEST: in std_logic;
 sincH, sincV: out std_logic;
 r,g,b: out std_logic_vector (3 downto 0)
  );
end component; 

component snakemov  
  Port ( ck,ck1,rst: in STD_LOGIC;--clock da 1 o 0.5 secondi
             BTNC,BTNU: in std_logic;
             writeinterval: in std_logic;
             addRAM: out std_logic_vector(12 downto 0);
             writeRAM: out std_logic;
             gameO: out std_logic;
             dataRAM: out std_logic_vector(3 downto 0)
             );--button di ingresso a caso...da verificare
  end component;

signal ck1: std_logic;
signal addRAM: std_logic_vector (12 downto 0);
signal writeREQUEST: std_logic;
signal dinRAM: std_logic_vector (3 downto 0);
signal sincVert: std_logic;
signal gameo: std_logic;
begin
PRESCALER: prescaler1hz port map (ck, ck1);
VGA: gestione port map (ck,rst, addRAM, dinRAM, writeREQUEST,  sinch,sincvert,r,g,b);
MOVIMENTO: snakemov port map (ck, ck1, rst, BTN1, BTN2,sincVert, addRAM, writeREQUEST,gameo, dinRAM);
sincv<=sincvert;
gameOver<=gameo;
end Behavioral;
