library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity clock_divider is
  port (
    rst       : in  std_logic;
    clk       : in  std_logic;
    divide    : integer range 0 to 65535;
    clock_out : out std_logic
  );
end clock_divider;


architecture RTL of clock_divider is

  signal cnt         : std_logic_vector(15 downto 0) := X"0000";
  signal divide_half : integer range 0 to 65535;
  signal clk_tmp     : std_logic := '0';

begin

  divide_half <= divide / 2 - 1;

  CLK_DIV : process(rst, clk)
  begin
    if (rst = '1') then
      cnt <= (others => '0');
    elsif (clk'event and clk = '1') then
      if (cnt = divide_half) then
        cnt <= (others => '0');
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process; -- CLOCK_DIVIDER

  CLK_OUT : process(rst, clk)
  begin
    if (rst = '1') then
      clk_tmp <= '0';
    elsif (clk'event and clk = '1') then
      if (cnt = divide_half) then
        clk_tmp <= not clk_tmp;
      end if;
    end if;
  end process ; -- CLOCK_OUT

  clock_out <= clk_tmp;

end RTL; -- RTL
