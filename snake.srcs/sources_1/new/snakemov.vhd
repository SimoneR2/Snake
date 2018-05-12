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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity snakemov is
    Port ( ck,ck1,rst: in STD_LOGIC;--clock da 1 o 0.5 secondi
           BTNC,BTNU: in std_logic;
           writeinterval: in std_logic;
           addRAM: out std_logic_vector(12 downto 0);
           writeRAM: out std_logic;
           dataRAM: out std_logic_vector(3 downto 0)
           );--button di ingresso a caso...da verificare
end snakemov;

architecture Behavioral of snakemov is
   component edgebutton 
    Port (
        ck : in STD_LOGIC;
        button: in STD_LOGIC;
        buttonout: out  STD_LOGIC);
    end component;

    COMPONENT blk_mem_gen_2
     PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
        );
    END COMPONENT;
signal sx: std_logic;
signal dx: std_logic;
--segnali ram
signal enable: std_logic;
signal wr: std_logic_vector (0 downto 0);
signal addra: std_logic_vector (3 downto 0);
signal dina: std_logic_vector (12 downto 0);
signal douta: std_logic_vector (12 downto 0);

signal testaH: std_logic_vector (6 downto 0);
signal testaV: std_logic_vector (5 downto 0);
signal coda: std_logic_vector(12 downto 0);
signal vitaminaH: std_logic_vector(6 downto 0);
signal vitaminaV: std_logic_vector(5 downto 0);
signal flag: std_logic; --tiene conto della vecchia pos della vitamina
signal lunghezza: integer range 0 to 15:=0;
signal eaten: std_logic:='0';
signal gameOver: std_logic := '0';

--FSM snake
type fsm_snake_logic is (up,dxx,down,sxx);
type posizioni is array (0 to 15) of std_logic_vector(12 downto 0);
signal serpente: posizioni;
signal present_state, next_state: fsm_snake_logic;    
    
--FSM RAM
type fsm_ram_logic is (attesa, scritturaTESTA, attesa1, scritturaCODA, attesa2, scritturaVITAMINA);
signal RAMpresent_state, RAMnext_state: fsm_ram_logic;                  

begin
sxbut:edgebutton port map(ck,btnc,sx);
dxbut:edgebutton port map(ck,btnu,dx);

process(ck1)
begin
if rising_edge(ck1) then
    present_state<=next_state;
end if;
end process;

process (present_state,sx,dx)
begin
--next_state<=present_state;
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

process(present_state,rst,ck1)
begin
    if(rst='0') then 
        gameOver <= '0'; 
        testaH<="0001100";
        testaV<="001100";
    elsif(gameOver ='0') then
        case present_state is
            when up => if (signed(testaV)-to_signed(1,6))>0 then 
                testaV<=std_logic_vector(unsigned(testaV)-to_unsigned(1,6));
            else gameOver <= '1';
            end if;
            
            when down => if (signed(testaV)+to_signed(1,6))<60 then 
                            testaV<=std_logic_vector(unsigned(testaV)+to_unsigned(1,6));
                        else gameOver <= '1';
            end if;
            
            when sxx => if (signed(testaH)-to_signed(1,7))>0 then 
                            testaH<=std_logic_vector(unsigned(testaH)-to_unsigned(1,7));
                        else gameOver <= '1';
            end if;
            when dxx => if (signed(testaH)+to_signed(1,7))<80 then 
                            testaH<=std_logic_vector(unsigned(testaH)+to_unsigned(1,7));
                        else gameOver <= '1';
            end if;
     end case;
     end if;
end process;

--process (ck1,rst) --posizione serpente
--begin
--if(rst='0') then lunghezza<=1;
--elsif(rising_edge(ck1)) then
--    if(eaten = '0') then
--        coda<=serpente(lunghezza);
--        for i in 1 to 15 loop
--            serpente(15-i+1)<=serpente(15-i);
--        end loop;
--        serpente(lunghezza+1)<=(others=>'0');
--   serpente(0)<=std_logic_vector(unsigned(testaH)+unsigned(testaV)*to_unsigned(80,7));
--    elsif (eaten = '1') then
--        lunghezza<=lunghezza+1; 
--        for i in 1 to 15 loop
--             serpente(15-i+1)<=serpente(15-i);
--        end loop;
--   serpente(0)<=std_logic_vector(unsigned(testaH)+unsigned(testaV)*to_unsigned(80,7));
--end if;
--end if;
--end process;

--SCRITTURA RAM VIDEO
process (ck)
begin
if (rising_edge(ck)) then
    RAMpresent_state<=RAMnext_state;
end if;
end process;

process(RAMpresent_state) 
begin
    case (RAMpresent_state) is
       when attesa => if(writeinterval<='0') then RAMnext_state<=scritturaTESTA;
                        else RAMnext_state<=attesa2;
                        end if;
       when scritturaTESTA => RAMnext_state<=attesa1;
       when attesa1 => RAMnext_state<=scritturaCODA;
       when scritturaCODA => RAMnext_state<=attesa2;
       when attesa2 => RAMnext_state<=scritturaVITAMINA;
       when scritturaVITAMINA => RAMnext_state<=attesa;
    end case;
end process;

process (RAMpresent_state)
begin
    if (RAMpresent_state=scritturaTESTA) then addRAM<= std_logic_vector(unsigned(testaV)*to_unsigned(80,7) + unsigned(testaH)); writeRAM<='1'; dataRAM<="0010";
    elsif (RAMpresent_state=scritturaCODA) then addRAM<= coda; writeRAM<='1'; dataRAM<="0110";
    elsif (RAMpresent_state=scritturaVITAMINA) then addRAM<= std_logic_vector(unsigned(vitaminaV)*to_unsigned(80,7) + unsigned(vitaminaH)); writeRAM<='1'; dataRAM<="0101";
    else writeRAM<='0';
    end if;
end process;

process (ck1,rst) 
begin
if (rst='0') then
    vitaminaH<="0001000";
    vitaminaV<="001000";
    
    
    flag<='0';
elsif(rising_edge(ck1))then
    if((vitaminaH=testaH)and(vitaminaV=testaV)) then
    eaten<='1';
        if(flag<='0') then
            vitaminaH<="0101000";
            vitaminaV<="101000";
            flag<='1';
        elsif(flag<='1') then
            vitaminaH<="0001000";
            vitaminaV<="001000";
            flag<='0';
        end if;      
    else eaten<='0';
    end if;
end if;
end process;
end Behavioral;
