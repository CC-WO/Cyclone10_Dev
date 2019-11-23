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

  signal led         : std_logic_vector( 3 downto 0);
  signal led_cnt1    : std_logic_vector( 7 downto 0) := X"00";
  signal led_cnt2    : std_logic_vector( 1 downto 0) := "00";

begin

  PRO_LED_CNT : process(rst, clk, led_cnt1)
  begin
    if (rst = '1') then
      led_cnt1 <= (others => '0');
      led_cnt2 <= (others => '0');
    elsif (clk'event and clk = '1') then
      if (led_cnt1 = 100) then
        led_cnt1 <= (others => '0');
        led_cnt2 <= led_cnt2 + 1;
      else
        led_cnt1 <= led_cnt1 + 1;
        led_cnt2 <= led_cnt2;
      end if;
    end if;
  end process; -- PRO_LED_CNT

  PRO_LED1 : process(led_cnt2)
  begin
    case led_cnt2 is
      when "00"   => led <= "1110";
      when "01"   => led <= "1101";
      when "10"   => led <= "1011";
      when "11"   => led <= "0111";
      when others => led <= "0000";
    end case;
  end process; -- PRO_LED1

  led_out1 <= led;

  -- LED_OUT2
  led_out2 <= '0';

end RTL; -- RTL
