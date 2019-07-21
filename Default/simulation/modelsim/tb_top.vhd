-----------
-- library
-----------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_textio.all;
use std.textio.all;


entity tb_top is
  -- empty
end tb_top;


architecture SIM of tb_top is

  component top is
  port(
    -- rst          : in  std_logic;        -- system reset
    clk          : in  std_logic;        -- system clock

    KEY          : in  std_logic_vector( 3 downto 0);
    LED          : out std_logic_vector( 3 downto 0)
  );
  end component;

  -- SIM
  constant system_clock_period : time := 20 ns;

  signal tb_clk  : std_logic;
  signal tb_KEY  : std_logic_vector( 3 downto 0) := X"0";
  signal tb_LED  : std_logic_vector( 3 downto 0);

begin

  ---------------------------
  -- asynchronous processing
  ---------------------------
  SYSTEM_CLOCK : process
  begin
    tb_clk <= '0'; wait for system_clock_period / 2;
    tb_clk <= '1'; wait for system_clock_period / 2;
  end process ; -- SYSTEM_CLOCK

  SYSTEM_RESET : process
  begin
    tb_KEY(0) <= '1'; wait for 50 ns;
    tb_KEY(0) <= '0'; wait for 50 ns;
    tb_KEY(0) <= '1'; wait for 50 ns;
    wait;
  end process;

  ALWAYS : process
  begin
    -- tb_KEY(0) <= '1';
    tb_KEY(1) <= '1';
    tb_KEY(2) <= '1';
    tb_KEY(3) <= '1';
    tb_LED <= X"F";
    wait for 1000000 ns;
    tb_KEY(1) <= '0';
    wait for 10000 ns;
    tb_KEY(1) <= '1';
    wait for 1000000 ns;
    tb_KEY(2) <= '0';
    wait for 10000 ns;
    tb_KEY(2) <= '1';
    wait for 1000000 ns;
    tb_KEY(3) <= '0';
    wait for 10000 ns;
    tb_KEY(3) <= '1';
    wait for 1000000 ns;

    wait for 1000 ns;

    -------------------------------------------< end simulation
    assert (false) report "Simulation end!" severity failure;
  end process ; -- ALWAYS

  U_TOP: top
  port map(
    clk   => tb_clk,
    KEY   => tb_KEY,
    LED   => tb_LED
  );

end SIM; -- SIM
