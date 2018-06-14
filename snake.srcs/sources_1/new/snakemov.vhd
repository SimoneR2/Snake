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
end snakemov;

architecture Behavioral of snakemov is
   component edgebutton 
    Port (
        ck : in STD_LOGIC;
        ck1hz: in std_logic;
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
signal lunghezza: integer range 0 to 15;
signal eaten: std_logic;
signal gameOver: std_logic;
signal deleteRAM: std_logic_vector(12 downto 0);
--FSM snake
type fsm_snake_logic is (up,dxx,down,sxx);
type posizioni is array (0 to 15) of std_logic_vector(12 downto 0);
signal serpente: posizioni;
signal present_state, next_state: fsm_snake_logic;    

 
--FSM RAM
type fsm_ram_logic is (attesa, scritturaTESTA, attesa1, scritturaCODA, attesa2, scritturaVITAMINA, attesa3, scritturaCORPO, calcoloINDIRIZZI, DELETE, attesa4);
signal RAMpresent_state, RAMnext_state: fsm_ram_logic;                  

type fsm_ck is (a1,a2,a3); --a1 attesa, a2 enable1, a3 enable2
signal ckpresent_state, cknext_state: fsm_ck;
signal enable1, enable2: std_logic;

--prova mia
signal Qh: STD_LOGIC_VECTOR(5 downto 0) := "000001";
signal Qv: STD_LOGIC_VECTOR(4 downto 0) := "00001";
signal primacifra: std_logic_vector(3 downto 0):="0000";
signal secondacifra: std_logic_vector(1 downto 0):="00";
signal win: std_logic;
begin
sxbut:edgebutton port map(ck,enable1hz,btnc,sx);
dxbut:edgebutton port map(ck,enable1hz,btnu,dx);

gameo<=gameover;
primaC<=primacifra;
secondaC<=secondacifra;
victory<=win;
process (ck)
begin
    if(rising_edge(ck)) then ckpresent_state<=cknext_state;
    end if;
end process;

process (enable1hz, ck)
begin
    case ckpresent_state is
        when a1 => if (enable1hz='1') then cknext_state<=a2; else cknext_state<=a1; end if;
        when a2 => cknext_state<=a3;
        when a3 => cknext_state<=a1;
        end case;
end process;

process(ck)
begin
    case ckpresent_state is
        when a1 => enable1<='0'; enable2<='0';
        when a2 => enable1<='1';
        when a3 => enable1<='0'; enable2<='1';
        end case;
        end process;


process(ck,rst) --FSM posizione serpente
begin
if rst = '0' then present_state<=up;
elsif (rising_edge(ck)and (enable1hz='1'))then
   present_state<=next_state;
end if;
end process;

process (present_state,ck) --FSM posizione serpente, calcolo stato successivo
begin
    if (rising_edge(ck)) then
    case present_state is
    when up => 
                    if sx='1' then next_state<=sxx;
                    elsif dx = '1' then next_state<=dxx;
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
end if;
end process;


process(rst,ck)
begin
    if(rst='0') then 
        gameOver <= '0'; 
        testaH<="0101000";
        testaV<="011110";
        
    elsif(rising_edge(ck) and enable2='1') then
    if((gameOver='0')and(win='0')) then
       case present_state is
          when up => if ((unsigned(testaV)-to_unsigned(1,6))=to_unsigned(0,6)) then 
                gameOver <= '1';
            else 
                testaV<=std_logic_vector(unsigned(testaV)-to_unsigned(1,6)); gameOver<='0';
            end if;
            
            when down => if ((unsigned(testaV)+to_unsigned(1,6))=to_unsigned(60,6)) then 
                            gameOver <= '1';
                        else 
                        testaV<=std_logic_vector(unsigned(testaV)+to_unsigned(1,6)); gameOver<='0';
            end if;
            
            when sxx => if ((unsigned(testaH)-to_unsigned(1,7))=to_unsigned(0,7)) then 
                             gameOver <= '1';
                        else 
                        testaH<=std_logic_vector(unsigned(testaH)-to_unsigned(1,7)); gameOver<='0';
            end if;
            when dxx => if ((unsigned(testaH)+to_unsigned(1,7))=to_unsigned(79,7)) then 
                           gameOver <= '1';
                        else 
                         testaH<=std_logic_vector(unsigned(testaH)+to_unsigned(1,7)); gameOver<='0';
            end if;
     end case;
     for i in 1 to 15 loop
     if (std_logic_vector(unsigned(testaV)*to_unsigned(80,7) + unsigned(testaH)) = serpente(i)) then gameover<='1';
     end if;
     end loop;
     end if;
     end if;
end process;

process (ck,rst) --posizione serpente
begin
if(rst='0') then 
    win<='0';
    lunghezza<=0;
    for i in 0 to 15 loop
        serpente(i)<= (others=>'0');
    end loop; 
elsif(rising_edge(ck) and enable2='1') then
    if(eaten = '0') then
        coda<=serpente(lunghezza);
        for i in 1 to 15 loop
            serpente(15-i+1)<=serpente(15-i);
        end loop;
        serpente(lunghezza+1)<=(others=>'0');
   serpente(0)<=std_logic_vector(unsigned(testaH)+unsigned(testaV)*to_unsigned(80,7));
    elsif (eaten = '1') then
        lunghezza<=lunghezza+1;  
        for i in 1 to 15 loop
             serpente(15-i+1)<=serpente(15-i);
        end loop;
   serpente(0)<=std_logic_vector(unsigned(testaH)+unsigned(testaV)*to_unsigned(80,7));
   
end if;
if (lunghezza>14) then win<='1'; end if;
end if;
end process;

--GESTIONE PUNTEGGIO SU 7SEGMENTI
process(ck)
begin
    if(rising_edge(ck)) then 
        if(lunghezza<10) then secondaCifra<=(others=>'0'); primaCifra<=std_logic_vector(to_unsigned(lunghezza,4));
        else secondaCifra<="01"; primaCifra<=std_logic_vector(to_unsigned(lunghezza-10,4));
        end if;
    end if;
end process;
--SCRITTURA RAM VIDEO
process (ck)
begin
if (rising_edge(ck)) then
    RAMpresent_state<=RAMnext_state;
end if;
end process;

process(RAMpresent_state, writeinterval) 
begin
    case (RAMpresent_state) is
       when attesa2 => if(writeinterval='0') then RAMnext_state<=scritturaVITAMINA;
                       elsif ((rst='0')or(win='1') or (gameover='1')) then RAMnext_state<=calcoloINDIRIZZI;
                        else RAMnext_state<=attesa2;
                        end if;
       when scritturaVITAMINA => RAMnext_state<=attesa;
       when attesa => RAMnext_state<=scritturaTESTA;
       when scritturaTESTA => RAMnext_state<=attesa3;
       when attesa3 => RAMnext_state<=scritturaCORPO;
       when scritturaCORPO => RAMnext_state<=attesa1;
       when attesa1 => RAMnext_state<=scritturaCODA;
       when scritturaCODA => RAMnext_state<=attesa2;
       when calcoloINDIRIZZI=> RAMnext_state<=delete;
       when delete=> RAMnext_state<= attesa4;
       when attesa4=> if((rst='1')and(win ='0') and (gameover='0')) then RAMnext_state<=attesa;
                        else RAMnext_state<=calcoloINDIRIZZI;
                      end if;
    end case;
end process;

process (RAMpresent_state, ck)
begin
    if(rising_edge(ck)) then
    case (RAMpresent_state) is
    when attesa => addRAM<= serpente(0); 
        case (present_state) is
            when up => dataRAM<= "0001";
            when sxx  => dataRAM<= "0010";
            when dxx  => dataRAM<= "0011";
            when down   => dataRAM<= "0100";
        end case; 
        deleteRAM<=(others=>'0');  
    when scritturaTESTA =>  
        writeRAM<='1';   
    when attesa1 => 
        addRAM<= coda; 
        dataRAM<="0110";  
        writeRAM<='0';
    when scritturaCODA =>
        addRAM<= coda; 
        dataRAM<="0110";  
        writeRAM<='1';
    when attesa2 => 
        if gameover='0' then 
            addRAM<= std_logic_vector(unsigned(vitaminaV)*to_unsigned(80,7) + unsigned(vitaminaH)); 
            dataRAM<="0101";
        else addRAM<= std_logic_vector(unsigned(vitaminaV)*to_unsigned(80,7) + unsigned(vitaminaH)); 
            dataRAM<="0110"; end if;
    when scritturaVITAMINA => 
        writeRAM<='1'; 
        if (gameover='0' and win='0') then 
            addRAM<= std_logic_vector(unsigned(vitaminaV)*to_unsigned(80,7) + unsigned(vitaminaH)); 
            dataRAM<="0101";
        else addRAM<= std_logic_vector(unsigned(vitaminaV)*to_unsigned(80,7) + unsigned(vitaminaH)); 
            dataRAM<="0110"; 
       end if;
        when attesa3 =>
            if (lunghezza > 0) then addRAM<=serpente(1); dataRAM<="0000";
            end if;
       when scritturaCORPO => 
            if (lunghezza > 0) then addRAM<=serpente(1); dataRAM<="0000"; writeRAM<='1';
            end if;
       when calcoloINDIRIZZI=> 
            if(deleteRAM<std_logic_vector(to_unsigned(4800,13))) then 
                deleteRAM<=std_logic_vector(unsigned(deleteRAM)+to_unsigned(1,12));
                writeRAM<='1';
                addRAM<=deleteRAM;
            else deleteRAM<=(others=>'0');
            end if;
       when delete=>
            addRAM<=deleteRAM; dataRAM<="1111"; writeRAM<='1';
       when attesa4 => writeRAM<='1'; addRAM<=deleteRAM; dataRAM<="1111";
       default: writeRAM<='0';
end case;
end if;
end process;

process (ck,rst) 

variable tmph : STD_LOGIC := '0';
variable tmpv : STD_LOGIC := '0';

begin
if (rst='0') then
    vitaminaH<="0001000";
    vitaminaV<="001000";
    flag<='0';
    eaten<='0';
elsif(rising_edge(ck)and enable1='1')then
if((vitaminaH=testaH)and(vitaminaV=testaV)) then
        eaten<='1';
 
        tmph := Qh(4) XOR Qh(3) XOR Qh(2) XOR Qh(0);
        Qh <= tmph & Qh(5 downto 1);
        vitaminaH<= std_logic_vector(unsigned(Qh)+to_unsigned(8,7));

        tmpv := Qv(4) XOR Qv(3) XOR Qv(2) XOR Qv(0);
        Qv <= tmpv & Qv(4 downto 1);
        vitaminaV<= std_logic_vector(unsigned(Qv)+to_unsigned(14,6));
     else eaten<='0';
     end if;
     
end if;
end process;
end Behavioral;
