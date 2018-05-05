----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.04.2018 14:04:25
-- Design Name: 
-- Module Name: vga - Behavioral
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

entity vga is
Port ( 
ck2, rst: in std_logic; --25mhz
redpixel,greenpixel: in std_logic;
sincH, sincV: out std_logic;
addV: out std_logic_vector (8 downto 0);
addH: out std_logic_vector ( 9 downto 0); 
r,g,b: out std_logic_vector(3 downto 0)
);
end vga;

architecture Behavioral of vga is

--SEGNALI PER GESTIRE SCAN VERTICALE ED ORIZZONTALE MONITOR
signal hcount: natural range 0 to 801;
signal vcount: natural range 0 to 526;
signal addressH: natural range 0 to 1024;
signal addressV: natural range 0 to 512;
signal blank: std_logic:='0';
signal red,green: std_logic_vector(3 downto 0);
begin --inizio architettura

COUNTER: process (rst, ck2) is 
begin
addv<=std_logic_vector(to_unsigned(addressV,9)); 
addh<=std_logic_vector(to_unsigned(addressH,10));--nota: gli indirizzi vanno da 1 a 640!!
if (rst='0') then
    hcount <= 0;
    vcount<=0;
elsif (rising_edge(ck2))then
    if(hcount = 799) then --se ho finito di scansionare orizzontalmente lo schermo, cambio linea o torno a zero
        hcount<=0; --resetto posizione orizzontale
        if(vcount < 520) then --se non sono arrivato in fondo proseguo
            vcount<=vcount+1;
         else vcount<=0;   --altrimenti resetto anche la verticale
        end if;
    else
        hcount<=hcount+1; --se non ho scansionato tutte le linee orizzontali incremento
    end if;
end if;
end process;

HORIZONTAL: process(rst,ck2) is
begin
if(rst='0') then
        addressH <= 0;
        sincH<='1'; --sinc è in logica negata
elsif (rising_edge(ck2)) then
    if (hcount>639) or (vcount>479) then
        blank <='1';
    else blank<='0';
    end if;
    if (hcount<640) then --fase display 640 pclock (da 0 a 639)
        if(vcount<480) then --se non sono a fine schermo incremento l'indirizzamento
            addressH<=addressH+1;
        else --altrimenti non fare nulla
        end if;
    elsif (hcount<656) then  --frontporch 16 pclock
        addressH<=0; --reset indirizzi (sono arrivato al massimo per l'orizzontale)
    elsif (hcount<752) then --fase sync 96 pclock
        sincH<='0';
    elsif (hcount<800) then --back porch 48 pclock
        sincH<='1';
    end if;
end if;
end process;

Blanking: process (rst, ck2) is
begin
if (rst ='0') or (blank = '1') then
    r<= (others=>'0');
    g<= (others=>'0');
    b<= (others=>'0');
elsif (blank = '0') then
    r<= (3=>redpixel, others=>'0'); --terzo bit a redpixel, gli altri a zero (così otteniamo una sfumatura leggera)
    g<= (3=>greenpixel, others=>'0'); --idem
    b<= "1000"; --valore settato a caso
end if;
end process;

VERTICAL: process (rst, ck2) is

begin
    if (rst='0') then 
       addressV <= 0;
       sincV<='1';
    elsif (rising_edge(ck2)) then
    if (vcount<480) then --data
        sincV<='1';
        if (hcount=799) then addressV<=addressV+1;
        end if;    
    elsif (vcount<490) then addressV<=0; --front porch
    elsif (vcount<492) then sincV <= '0';--sync
    elsif (vcount<521) then sincV <= '1';--back porch    
    end if;
    end if;
end process;
end Behavioral;
