-------------------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
 
entity adder_tb is
end adder_tb;
 
architecture behave of adder_tb is

    component adder is 
        port (
            i_bit1  : in std_logic;
            i_bit2  : in std_logic;
            i_carry : in std_logic;
            --
            o_sum   : out std_logic;
            o_carry : out std_logic
            );
    end component;
 
    signal i1  :  std_logic;
    signal i2  :  std_logic;
    signal i_c :  std_logic;
    --
    signal sum   : std_logic;
    signal o_c :  std_logic;
   
begin
 
  -- Instantiate the Unit Under Test (UUT)
  UUT : adder
    port map (
      i_bit1 => i1,
      i_bit2 => i2,
      i_carry => i_c,
      o_sum => sum,
      o_carry => o_c
      );
 
   
  -- Test bench is non-synthesizable
  process is
  begin
    i1 <= '0';
    i2 <= '0';
    i_c <= '0';
    wait for 10 ns;
    i1 <= '0';
    i2 <= '1';
    i_c <= '0';
    wait for 10 ns;
    i1 <= '1';
    i2 <= '1';
    i_c <= '0';
    wait for 10 ns;
    i1 <= '1';
    i2 <= '0';
    i_c <= '1';
    wait for 10 ns;
    i1 <= '1';
    i2 <= '1';
    i_c <= '1';
    wait for 10 ns;
  end process;
   
end behave;