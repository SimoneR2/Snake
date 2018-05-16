----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2018 13:46:04
-- Design Name: 
-- Module Name: gestione - Behavioral
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

entity gestione is
 Port (
 clk,rst: in std_logic;
 addRAM: in std_logic_vector (12 downto 0);
 dinRAM: in std_logic_vector (3 downto 0);
 writeREQUEST: in std_logic;
 sincH, sincV: out std_logic;
 r,g,b: out std_logic_vector (3 downto 0)
  );
end gestione;

architecture Behavioral of gestione is
component clk_wiz_0 --prescaler
port
 (
  clk_out1          : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

COMPONENT blk_mem_gen_1 --memoria ROM
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

COMPONENT blk_mem_gen_0 --RAM
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

component vga
Port ( 
ck2, rst: in std_logic; --25mhz
redpixel,greenpixel: in std_logic;
sincH, sincV: out std_logic;
addV: out std_logic_vector (8 downto 0);
addH: out std_logic_vector ( 9 downto 0); 
r,g,b: out std_logic_vector(3 downto 0)
);
end component;


signal ck25: std_logic;
signal redpixel: std_logic;
signal greenpixel: std_logic;
signal addV: std_logic_vector (8 downto 0);
signal addH: std_logic_vector (9 downto 0);
signal enROM: std_logic;
signal addrROM: std_logic_vector(3 downto 0);
signal doutROM: std_logic_vector(63 downto 0);
signal enableRAM_A, enableRAM_B: std_logic;
signal wrRAM_A, wrRAM_B: std_logic_vector (0 downto 0);
signal addRAM_A, addRAM_B: std_logic_vector (12 downto 0);
signal dinRAM_A, dinRAM_B: std_logic_vector (3 downto 0);
signal doutRAM_B: std_logic_vector (3 downto 0);
signal addV_msb: std_logic_vector (5 downto 0);
signal addH_msb: std_logic_vector (6 downto 0);
signal addV_lsb: std_logic_vector (3 downto 0);
signal addH_lsb: std_logic_vector (3 downto 0);
signal debug: integer range 0 to 640:=0;
--FSM RAM/ROM
type std_logic is ( init,read_ram, read_rom);
signal present_state, next_state: std_logic;

begin
vgaclock : clk_wiz_0
   port map ( 
   clk_out1 => ck25, --out
   clk_in1 => clk --in
 );
 
vgacmd: vga 
port map (ck25, rst, redpixel, greenpixel, sincH, sincV, addV, addH, r,g,b
);

rom: blk_mem_gen_1
port map(clk, enROM,addrROM, doutROM);

ram: blk_mem_gen_0
port map(    
clka => clk,
ena => enableRAM_A,
wea => wrRAM_A,
addra => addRAM_A,
dina => dinRAM_A,
douta => addrROM,
clkb => clk,
enb => enableRAM_B,
web => wrRAM_B,
addrb => addRAM_B,
dinb => dinRAM_B,
doutb => doutRAM_B);
addv_msb<= addv (8 downto 3); --indirizzi ram troncati
addh_msb<= addh (9 downto 3); --indirizzi ram troncati
addv_lsb(2 downto 0)<= addv (2 downto 0); --indirizzi ROM troncati
addH_lsb(2 downto 0)<= addh (2 downto 0); --indirizzi ROM troncati
addv_lsb(3)<='0';
addh_lsb(3)<='0';

process (clk) --lettura ram 
begin
if (rising_edge(clk)) then
    present_state<=next_state;
end if;
end process;

process (present_state) begin
    --next_state<=present_state;
    case present_state is
    when init => if (addH_lsb="0110") then 
                        next_state<= read_ram; 
                        else next_state<=read_rom; 
                 end if; 
    when read_ram=> if(addH_lsb="0111") then 
                        next_state<=read_rom; 
                        else next_state<=init;
                    end if;
    when read_rom=> next_state<=init; 
 end case;
 end process;
 
 process(present_state) begin
    if present_state = read_ram then
        addRAM_A<= std_logic_vector(((unsigned(addv_msb))*to_unsigned(80,7)+unsigned(addh_msb)));
        wrRAM_A<="0";
        enableRAM_A<='1';
        enROM<='0';
    end if;
    if present_state = read_rom then
        enROM<='1';
              
    end if;
    --if present_state = init then
    --    enableRAM_A<='0';  
    --end if;
end process;    

process(clk) --scrittura ram
begin
debug<=to_integer((((unsigned(addv_lsb))*to_unsigned(8,4))+((unsigned(addh_lsb)))));
redpixel<=doutROM(debug);   
if (rising_edge(clk)) then
if (writerequest='1') then
        wrRAM_B<="1";
        addRAM_B<=addram;
        dinRAM_B<=dinRAM;
        enableRAM_B<='1';
    else wrRAM_B<="0";
    end if;
    end if;
    end process;   
end Behavioral;
