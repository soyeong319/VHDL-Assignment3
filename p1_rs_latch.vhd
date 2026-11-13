LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY rs_latch IS
  PORT (
    s  : IN  std_logic;
    r  : IN  std_logic;
    q  : OUT std_logic;
    qn : OUT std_logic
  );
END ENTITY rs_latch;

ARCHITECTURE bhv OF rs_latch IS
  SIGNAL q_internal  : std_logic := '0';
  SIGNAL qn_internal : std_logic := '1';
BEGIN
  q_internal  <= r NOR qn_internal;
  qn_internal <= s NOR q_internal;

  q  <= q_internal;
  qn <= qn_internal;
END ARCHITECTURE bhv;
