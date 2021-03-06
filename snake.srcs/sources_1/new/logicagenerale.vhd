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
use IEEE.NUMERIC_STD.ALL;

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
    LED: out std_logic_vector (15 downto 0); --per animazioni varie
    win: out std_logic;
    gameOver: out std_logic;
    CA, CB, CC, CD, CE, CF, CG, DP : out std_logic;
    AN : out std_logic_vector( 7 downto 0 )
   );
end logicagenerale;

architecture Behavioral of logicagenerale is

component prescaler1hz is
  Port (
        ck: in std_logic;
        enable: out std_logic 
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
  Port ( ck,enable1hz,rst: in STD_LOGIC;--clock da 1 o 0.5 secondi
             BTNC,BTNU: in std_logic;
             writeinterval: in std_logic;
             addRAM: out std_logic_vector(12 downto 0);
             writeRAM: out std_logic;
             gameO: out std_logic;
             victory: out std_logic;
             dataRAM: out std_logic_vector(3 downto 0);
             primaC: out std_logic_vector(3 downto 0);
             secondaC: out std_logic_vector(1 downto 0)
             );
  end component;
  
component seven_segment_driver
generic (
    size : integer := 20
  );
  Port (
    clock : in std_logic;
    reset : in std_logic;
    digit0 : in std_logic_vector( 4 downto 0 );
    digit1 : in std_logic_vector( 4 downto 0 );
    digit2 : in std_logic_vector( 4 downto 0 );
    digit3 : in std_logic_vector( 4 downto 0 );
    digit4 : in std_logic_vector( 4 downto 0 );
    digit5 : in std_logic_vector( 4 downto 0 );
    digit6 : in std_logic_vector( 4 downto 0 );
    digit7 : in std_logic_vector( 4 downto 0 );
    CA, CB, CC, CD, CE, CF, CG, DP : out std_logic;
    AN : out std_logic_vector( 7 downto 0 )
  );
end component;

component animazioni
Port (
    enable1hz, rst, trigger: in std_logic;
    led: out std_logic_vector(15 downto 0)
  );
end component;
signal enable1hz: std_logic;
signal addRAM: std_logic_vector (12 downto 0);
signal writeREQUEST: std_logic;
signal dinRAM: std_logic_vector (3 downto 0);
signal sincVert: std_logic;
signal gameo: std_logic;
signal trigger: std_logic;
signal vic: std_logic;
signal d0: std_logic_vector(4 downto 0);
signal d1: std_logic_vector(4 downto 0);
signal d2: std_logic_vector(4 downto 0);
signal d3: std_logic_vector(4 downto 0);
signal d4: std_logic_vector(4 downto 0);
signal d5: std_logic_vector(4 downto 0);
signal d6: std_logic_vector(4 downto 0);
signal d7: std_logic_vector(4 downto 0);
signal testa: std_logic_vector(12 downto 0);
signal primacifra: std_logic_vector(3 downto 0);
signal secondacifra: std_logic_vector(1 downto 0);
signal LIGHT: std_logic_vector(15 downto 0);
begin --INIZIO ARCHIETTETTURA

LED<=light;
PRESCALER: prescaler1hz port map (ck, enable1hz);
VGA: gestione port map (ck,rst, addRAM, dinRAM, writeREQUEST,  sinch,sincvert,r,g,b);
MOVIMENTO: snakemov port map (ck, enable1hz, rst, BTN1, BTN2,sincVert, addRAM, writeREQUEST,gameo,vic,dinRAM ,primacifra , secondacifra);
ANIMAZIONE: animazioni port map (enable1hz, rst, trigger, LIGHT);
SEG: seven_segment_driver port map (ck, rst, d0,d1,d2,d3,d4,d5,d6,d7,ca,cb,cc,cd,ce,cf,cg,dp,AN);
gameOver<=gameO;
trigger<=(gameO or vic);
win<=vic;
process(ck) begin
if(rising_edge(ck)) then
if(gameo='0') then
d5<=(0=>secondacifra(0), 1=>secondacifra(1), others=>'0');
d4(3 downto 0)<=primacifra;
d4(4)<='0';
d0<= "11111";
d1<= "11111";
d2<= "11111";
d3<= "11111";
d6<= "11111";
d7<= "11111";
else
d0<= "10010"; --T
d1<= "00101"; --S
d2<= "10001"; --R
d3<= "11111"; --VUOTO
d4<= "00101"; --S
d5<= "01110"; --E
d6<= "10001"; --R
d7<= "10000"; --P
end if;
end if;
end process;


sincv<=sincvert;
end Behavioral;
