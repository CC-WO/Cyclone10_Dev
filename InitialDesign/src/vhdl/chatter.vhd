library ieee;
use ieee.std_logic_1164.all;


entity chatter is
  port (
    clk    : in  std_logic;
    swin   : in  std_logic;
    swout  : out std_logic
  );
end chatter;


architecture RTL of chatter is

  signal chatt1 : std_logic_vector( 3 downto 0) := X"0";
  signal chatt2 : std_logic := '0';
  signal chatt3 : std_logic_vector( 3 downto 0) := X"0";
  signal sw_ena : std_logic := '0';

begin

  CHATTER1 : process(clk)
  begin
    if (clk'event and clk = '1') then
      chatt1 <= chatt1( 2 downto 0) & swin;
    end if;
  end process; -- CHATTER1

  chatt2 <= chatt1(3) or chatt1(2) or chatt1(1) or chatt1(0);

  CHATTER3 : process(clk)
  begin
    if (clk'event and clk = '1') then
      chatt3 <= chatt3( 2 downto 0) & chatt2;
      if (chatt3 = "1100") then
        sw_ena <= '1';
      else
        sw_ena <= '0';
      end if;
    end if;
  end process; -- CHATTER3

  swout <= sw_ena;

end RTL ; -- RTL
