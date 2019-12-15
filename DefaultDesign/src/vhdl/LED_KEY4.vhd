library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity LED_KEY4 is
  port (
    rst       : in  std_logic;
    clk       : in  std_logic; -- 1kHz
    led_out1  : out std_logic_vector( 3 downto 0);
    led_out2  : out std_logic
  );
end LED_KEY4;


architecture RTL of LED_KEY4 is

  signal led_cnt : std_logic_vector( 7 downto 0);
  signal led     : std_logic;

begin

  -- LED_OUT1
  led_out1 <= X"0";

  -- LED_OUT2
  PRO_LED_OUT2 : process(rst, clk)
  begin
    if (rst = '1') then
      led_cnt <= (others => '0');
      led <= '0';
    elsif (clk'event and clk = '1') then
      if (led_cnt = 100) then
        led_cnt <= (others => '0');
        led <= not led;
      else
        led_cnt <= led_cnt + 1;
        led <= led;
      end if;
    end if;
  end process ; -- PRO_LED_OUT1

  led_out2 <= led;

end RTL; -- RTL
