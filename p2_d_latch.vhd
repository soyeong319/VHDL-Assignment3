LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY d_latch IS
  PORT (
    d  : IN  std_logic;
    en : IN  std_logic;
    q  : OUT std_logic;
    qn : OUT std_logic
  );
END ENTITY d_latch;

ARCHITECTURE bhv OF d_latch IS
  SIGNAL q_internal : std_logic := '0';
BEGIN
  PROCESS(en, d)
  BEGIN
    IF (en = '1') THEN
      q_internal <= d;
    END IF;
  END PROCESS;

  q  <= q_internal;
  qn <= NOT q_internal;
END ARCHITECTURE bhv;
