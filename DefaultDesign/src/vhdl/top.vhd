library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is
  port(
    -- rst     : in  std_logic;
    clk        : in  std_logic;
    KEY        : in  std_logic_vector( 3 downto 0);
    LED_BO     : out std_logic;
    LED        : out std_logic_vector( 3 downto 0)
  );
end top;

architecture RTL of top is

  component clock_divider is
    port (
      rst       : in  std_logic;
      clk       : in  std_logic;
      divide    : integer range 0 to 65535;
      clock_out : out std_logic
    );
  end component;

  component chatter is
    port (
      clk    : in  std_logic;
      key    : in  std_logic;
      pushed : out std_logic
    );
  end component;

  component LED_KEY1 is
    port (
      rst       : in  std_logic;
      clk       : in  std_logic;  --1ms
      led_out1  : out std_logic_vector( 3 downto 0);
      led_out2  : out std_logic
    );
  end component;

  component LED_KEY2 is
    port (
      rst       : in  std_logic;
      clk       : in  std_logic;  --1ms
      led_out1  : out std_logic_vector( 3 downto 0);
      led_out2  : out std_logic
    );
  end component;

  component LED_KEY3 is
    port (
      rst       : in  std_logic;
      clk       : in  std_logic;  --1ms
      key       : in  std_logic;
      led_out1  : out std_logic_vector( 3 downto 0);
      led_out2  : out std_logic
    );
  end component;

  component LED_KEY4 is
    port (
      rst       : in  std_logic;
      clk       : in  std_logic;  --1ms
      led_out1  : out std_logic_vector( 3 downto 0);
      led_out2  : out std_logic
    );
  end component;

  signal m_rst          : std_logic;
  signal m_clk_1ms      : std_logic;
  signal m_led_bo       : std_logic;
  signal m_key          : std_logic_vector( 3 downto 0) := X"0";
  signal m_pushed       : std_logic_vector( 3 downto 0) := X"0";
  signal m_sele         : std_logic_vector( 3 downto 0);
  signal m_led          : std_logic_vector( 3 downto 0);
  signal m_led_key1     : std_logic_vector( 3 downto 0);
  signal m_led_key2     : std_logic_vector( 3 downto 0);
  signal m_led_key3     : std_logic_vector( 3 downto 0);
  signal m_led_key4     : std_logic_vector( 3 downto 0);
  signal m_led_bo1      : std_logic;
  signal m_led_bo2      : std_logic;
  signal m_led_bo3      : std_logic;
  signal m_led_bo4      : std_logic;

  -- testbench
  -- constant clk_1ms_divide  : integer range 0 to 65535 := 50;
  -- real
  constant clk_1ms_divide  : integer range 0 to 65535 := 50000;

begin

  m_key <= not KEY;
  m_rst <= m_key(0);

  U_SELECTOR : process(m_rst, m_clk_1ms)
  begin
    if (m_rst = '1') then
      m_sele <= (others => '0');
    elsif (m_clk_1ms'event and m_clk_1ms = '1') then
      if (m_pushed = "0001") then
        m_sele <= "0001";
      elsif (m_pushed = "0010") then
        m_sele <= "0010";
      elsif (m_pushed = "0100") then
        m_sele <= "0100";
      elsif (m_pushed = "1000") then
        m_sele <= "1000";
      else
        m_sele <= m_sele;
      end if;
    end if;
  end process; -- U_SELECTOR

  U_LED_KEYS : process(m_sele, m_led_key1, m_led_key2, m_led_key3, m_led_key4)
  begin
    case m_sele is
      when "0001" => m_led <= m_led_key1;
      when "0010" => m_led <= m_led_key2;
      when "0100" => m_led <= m_led_key3;
      when "1000" => m_led <= m_led_key4;
      when others => m_led <= m_led_key1;
    end case;
  end process; -- U_LED_OUT

  LED <= not m_led;

  U_LED_BO : process(m_sele, m_led_bo1, m_led_bo2, m_led_bo3, m_led_bo4)
  begin
    case m_sele is
      when "0001" => m_led_bo <= m_led_bo1;
      when "0010" => m_led_bo <= m_led_bo2;
      when "0100" => m_led_bo <= m_led_bo3;
      when "1000" => m_led_bo <= m_led_bo4;
      when others => m_led_bo <= m_led_bo1;
    end case;
  end process; -- U_LED_BO

  LED_BO <= not m_led_bo;

  U_CLOCK_1ms : clock_divider port map(m_rst, clk, clk_1ms_divide, m_clk_1ms);
  U_KEY1      : chatter       port map(m_clk_1ms, m_key(0), m_pushed(0));
  U_KEY2      : chatter       port map(m_clk_1ms, m_key(1), m_pushed(1));
  U_KEY3      : chatter       port map(m_clk_1ms, m_key(2), m_pushed(2));
  U_KEY4      : chatter       port map(m_clk_1ms, m_key(3), m_pushed(3));
  U_LED_KEY1  : LED_KEY1      port map(m_rst, m_clk_1ms, m_led_key1, m_led_bo1);
  U_LED_KEY2  : LED_KEY2      port map(m_rst, m_clk_1ms, m_led_key2, m_led_bo2);
  U_LED_KEY3  : LED_KEY3      port map(m_rst, m_clk_1ms, m_pushed(2), m_led_key3, m_led_bo3);
  U_LED_KEY4  : LED_KEY4      port map(m_rst, m_clk_1ms, m_led_key4, m_led_bo4);

end RTL ; -- RTL
