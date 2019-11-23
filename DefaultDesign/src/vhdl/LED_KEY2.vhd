library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity LED_KEY2 is
  port (
    rst       : in  std_logic;
    clk       : in  std_logic; -- 1kHz
    led_out1  : out std_logic_vector( 3 downto 0);
    led_out2  : out std_logic
  );
end LED_KEY2;


architecture RTL of LED_KEY2 is

  signal led_refresh : std_logic;
  signal led_sftreg  : std_logic_vector( 3 downto 0);
  signal led_cnt     : std_logic_vector( 3 downto 0);

begin

  PRO_LED_REFRESH : process(rst, clk, led_cnt)
  begin
    if (rst = '1') then
      led_refresh <='1';
      led_cnt <= (others => '0');
    elsif (clk'event and clk = '1') then
      if (led_cnt = 4) then
        led_cnt <= (others => '0');
        led_refresh <= '0';
      else
        led_cnt <= led_cnt + 1;
        led_refresh <= '1';
      end if;
    end if;
  end process ; -- PRO_LED_REFRESH

  PRO_LED_OUT1 : process(rst, clk)
  begin
    if (rst = '1') then
      led_sftreg <= (others => '1');
    elsif (clk'event and clk = '1') then
      led_sftreg <= led_sftreg(2 downto 0) & led_refresh;
    end if;
  end process ; -- PRO_LED_OUT1

  led_out1 <= led_sftreg;


  -- LED_OUT2
  led_out2 <= '0';

end RTL; -- RTL
