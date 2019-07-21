library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity top is
  port(
    -- rst          : in  std_logic;        -- system reset
    clk          : in  std_logic;        -- system clock

    KEY          : in  std_logic_vector( 3 downto 0);
    LED          : out std_logic_vector( 3 downto 0)
  );
end top;


architecture RTL of top is

  component chatter is
    port (
      clk    : in  std_logic;
      swin   : in  std_logic;
      swout  : out std_logic
    );
  end component;

  component clock_divider is
    port (
      rst       : in  std_logic;
      clk       : in  std_logic;
      divide    : integer range 0 to 65535;
      clock_out : out std_logic
    );
  end component;

  signal rst         : std_logic;
  signal sw          : std_logic_vector( 3 downto 0) := X"0";
  signal clk_1ms     : std_logic;
  signal sele        : std_logic_vector( 3 downto 0) := X"0";
  signal m_key       : std_logic_vector( 3 downto 0) := X"0";
  signal m_led       : std_logic_vector( 3 downto 0) := X"0";
  signal m_led1      : std_logic_vector( 3 downto 0) := X"0";
  signal m_led2      : std_logic_vector( 3 downto 0) := X"0";
  signal m_led2_cnt1 : std_logic_vector( 7 downto 0) := X"00";
  signal m_led2_cnt2 : std_logic_vector( 1 downto 0) := "00";
  signal m_led3      : std_logic_vector( 3 downto 0) := X"0";
  signal m_led3_cnt1 : std_logic_vector( 7 downto 0) := X"00";
  signal m_led3_cnt2 : std_logic_vector( 3 downto 0) := X"0";
  signal m_led4      : std_logic_vector( 3 downto 0) := X"0";
  signal m_led4_cnt  : std_logic_vector( 7 downto 0) := X"00";


  -- testbench
  constant clk_1ms_divide  : integer range 0 to 65535 := 50;
  constant led1_period     : integer range 0 to 255   := 10;
  constant led2_period     : integer range 0 to 255   := 10;
  constant led3_period     : integer range 0 to 255   := 10;
  constant led4_period     : integer range 0 to 255   := 10;
  -- real
  -- constant clk_1ms_divide  : integer range 0 to 65535 := 50000;
  -- constant led1_period     : integer range 0 to 255   := 100;
  -- constant led2_period     : integer range 0 to 255   := 100;
  -- constant led3_period     : integer range 0 to 255   := 100;
  -- constant led4_period     : integer range 0 to 255   := 100;

begin

  m_key <= not KEY;
  rst   <= m_key(0);

  -- U_LED1 : process(rst, clk_1ms)
  -- begin
  -- end process;  -- U_LED1

  m_led1 <= X"F";

  U_LED2_CNT : process(rst, clk_1ms)
  begin
    if (rst = '1') then
      m_led2_cnt1 <= (others => '0');
      m_led2_cnt2 <= (others => '0');
    elsif (clk_1ms'event and clk_1ms = '1') then
      if (m_led2_cnt1 = led2_period) then
        m_led2_cnt1 <= (others => '0');
        m_led2_cnt2 <= m_led2_cnt2 + 1;
      else
        m_led2_cnt1 <= m_led2_cnt1 + 1;
        m_led2_cnt2 <= m_led2_cnt2;
      end if;
    end if;
  end process; -- U_LED2_CNT

  U_LED2 : process(m_led2_cnt2)
  begin
    case m_led2_cnt2 is
      when "00"   => m_led2 <= "1110";
      when "01"   => m_led2 <= "1101";
      when "10"   => m_led2 <= "1011";
      when "11"   => m_led2 <= "0111";
      when others => m_led2 <= "0000";
    end case;
  end process; -- U_LED2

  U_LED3 : process(rst, clk_1ms)
  begin
    if (rst = '1') then
      m_led3_cnt1 <= (others => '0');
      m_led3_cnt2 <= (others => '0');
    elsif (clk_1ms'event and clk_1ms = '1') then
      if (m_led3_cnt1 = led3_period) then
        m_led3_cnt1 <= (others => '0');
        m_led3_cnt2 <= m_led3_cnt2 + 1;
      else
        m_led3_cnt1 <= m_led3_cnt1 + 1;
        m_led3_cnt2 <= m_led3_cnt2;
      end if;
    end if;
  end process; -- U_LED3

  m_led3 <= m_led3_cnt2;

  U_LED4 : process(rst, clk_1ms)
  begin
    if (rst = '1') then
      m_led4 <= (others => '0');
      m_led4_cnt <= (others => '0');
    elsif (clk_1ms'event and clk_1ms = '1') then
      if (m_led4_cnt = led4_period) then
        m_led4     <= not m_led4;
        m_led4_cnt <= (others => '0');
      else
        m_led4     <= m_led4;
        m_led4_cnt <= m_led4_cnt + 1;
      end if;
    end if;
  end process; -- U_LED4

  U_SELECTOR : process(rst, clk_1ms)
  begin
    if (rst = '1') then
      sele <= (others => '0');
    elsif (clk_1ms'event and clk_1ms = '1') then
      if (sw = "0001") then
        sele <= "0001";
      elsif (sw = "0010") then
        sele <= "0010";
      elsif (sw = "0100") then
        sele <= "0100";
      elsif (sw = "1000") then
        sele <= "1000";
      else
        sele <= sele;
      end if;
    end if;
  end process; -- U_SELECTOR

  U_LED_OUT : process(sele, m_led1, m_led2, m_led3, m_led4)
  begin
    case sele is
      when "0001" => m_led <= m_led1;
      when "0010" => m_led <= m_led2;
      when "0100" => m_led <= m_led3;
      when "1000" => m_led <= m_led4;
      when others => m_led <= m_led1;
    end case;
  end process; -- U_LED_OUT

  LED <= not m_led;

  U_CLOCK_1ms : clock_divider port map(rst, clk, clk_1ms_divide, clk_1ms);
  U_KEY0      : chatter port map(clk_1ms, m_key(0), sw(0));
  U_KEY1      : chatter port map(clk_1ms, m_key(1), sw(1));
  U_KEY2      : chatter port map(clk_1ms, m_key(2), sw(2));
  U_KEY3      : chatter port map(clk_1ms, m_key(3), sw(3));

end RTL; -- RTL

  -- U_LED_OUT : process(rst, clk, sw)
  -- begin
  --   if (rst = '1') then
  --     m_led <= (others => '0');
  --   elsif (clk'event and clk = '1') then
  --     if (sw = "0001") then
  --       m_led <= m_led1;
  --     elsif (sw = "0010") then
  --       m_led <= m_led2;
  --     elsif (sw = "0100") then
  --       m_led <= m_led3;
  --     elsif (sw = "1000") then
  --       m_led <= m_led4;
  --     else
  --       m_led <= m_led;
  --     end if;
  --   end if;
  -- end process; -- U_LED_OUT

  -- U_LED_OUT : process(rst, clk_1ms)
  -- begin
  --   if (rst = '1') then
  --     m_led <= (others => '0');
  --   elsif (clk_1ms'event and clk_1ms = '1') then
  --     if (sw = "0001") then
  --       m_led <= m_led1;
  --     elsif (sw = "0010") then
  --       m_led <= m_led2;
  --     elsif (sw = "0100") then
  --       m_led <= m_led3;
  --     elsif (sw = "1000") then
  --       m_led <= m_led4;
  --     else
  --       m_led <= m_led;
  --     end if
  --   end if;
  -- end process; -- U_LED_OUT
