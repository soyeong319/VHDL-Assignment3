LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY d_ff_sc IS
  PORT (
    clk : IN  std_logic;
    d   : IN  std_logic;
    set : IN  std_logic;
    clr : IN  std_logic;
    q   : OUT std_logic;
    qn  : OUT std_logic
  );
END ENTITY d_ff_sc;

ARCHITECTURE bhv OF d_ff_sc IS
  SIGNAL q_internal : std_logic := '0';
BEGIN
  PROCESS(clk, clr, set)
  BEGIN
    IF (clr = '1') THEN
      q_internal <= '0';
    ELSIF (set = '1') THEN
      q_internal <= '1';
    ELSIF rising_edge(clk) THEN
      q_internal <= d;
    END IF;
  END PROCESS;

  q  <= q_internal;
  qn <= NOT q_internal;
END ARCHITECTURE bhv;
