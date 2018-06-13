----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2016 04:57:31 PM
-- Design Name: 
-- Module Name: seven_segment_driver - Behavioral
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

entity seven_segment_driver is
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

end seven_segment_driver;

architecture Behavioral of seven_segment_driver is

  --Useremo un contatore per ricavare la frequenza per i display. 
  --Il clock è a 100 MHz, usiamo 3 bit per indirizzare il display, quindi contiamo ogni dimensione 
  -- 3 bit. Per ottenere ~ 100 Hz per cifra, abbiamo bisogno di 20 bit, in modo da dividere per 2 ^ 20.
  signal flick_counter : unsigned( size - 1 downto 0 );
  -- il digit è temporaneamente salvato qui
  signal digit : std_logic_vector( 4 downto 0 );
  -- raccogliamo i valori del catodo qui
  signal cathodes : std_logic_vector( 7 downto 0 );

begin

  -- Dividiamo il clock
  process ( clock, reset ) begin
    if reset = '0' then
      flick_counter <= ( others => '0' );
    elsif rising_edge( clock ) then
      flick_counter <= flick_counter + 1;
    end if;
  end process;

  -- Selezioniamo l'anodo
  with flick_counter( size - 1 downto size - 3 ) select
    AN <=
      "11111110" when "000",
      "11111101" when "001",
      "11111011" when "010",
      "11110111" when "011",
      "11101111" when "100",
      "11011111" when "101",
      "10111111" when "110",
      "01111111" when others;

  -- Selezioniamo il digit
  with flick_counter( size - 1 downto size - 3 ) select
    digit <=
      digit0 when "000",
      digit1 when "001",
      digit2 when "010",
      digit3 when "011",
      digit4 when "100",
      digit5 when "101",
      digit6 when "110",
      digit7 when others;

  -- Decodifica digit
  with digit select
    cathodes <=
      -- DP, CG, CF, CE, CD, CC, CB, CA
      "11000000" when "00000", --0
      "11111001" when "00001", --1
      "10100100" when "00010", --2
      "10110000" when "00011", --3
      "10011001" when "00100", --4
      "10010010" when "00101", --5
      "10000010" when "00110", --6
      "11111000" when "00111", --7
      "10000000" when "01000", --8
      "10010000" when "01001", --9
      "10001000" when "01010", --A
      "10000011" when "01011", --B
      "11000110" when "01100", --C
      "10100001" when "01101", --D
      "10000110" when "01110", --E
      "10001110" when "01111", --F
      "10001100" when "10000", --P
      "10101111" when "10001", --R
      "10000111" when "10010", --T
      "11111111" when others; --vuoto
  DP <= cathodes( 7 );
  CG <= cathodes( 6 );
  CF <= cathodes( 5 );
  CE <= cathodes( 4 );
  CD <= cathodes( 3 );
  CC <= cathodes( 2 );
  CB <= cathodes( 1 );
  CA <= cathodes( 0 );

end behavioral;
