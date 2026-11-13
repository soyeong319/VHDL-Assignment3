LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY d_ff IS
  PORT (
    clk : IN  std_logic;
    d   : IN  std_logic;
    q   : OUT std_logic
  );
END ENTITY d_ff;

ARCHITECTURE bhv OF d_ff IS
  SIGNAL q_internal : std_logic := '0';
BEGIN
  PROCESS(clk)
  BEGIN
    IF rising_edge(clk) THEN
      q_internal <= d;
    END IF;
  END PROCESS;

  q <= q_internal;
END ARCHITECTURE bhv;
