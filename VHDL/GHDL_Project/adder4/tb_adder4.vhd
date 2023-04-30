-------------------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
 
entity adder4_tb is
end adder4_tb;
 
architecture behave of adder4_tb is

    component adder4 is 
        port (
          in1 : in std_logic_vector(3 downto 0);
          in2 : in std_logic_vector(3 downto 0);
          out1 : out std_logic_vector(4 downto 0)
      );
    end component;
 
    signal i1  :  std_logic_vector(3 downto 0);
    signal i2  :  std_logic_vector(3 downto 0);
    signal o1 :  std_logic_vector(4 downto 0);
   
begin
 
  -- Instantiate the Unit Under Test (UUT)
  UUT : adder4
    port map (
      in1 => i1,
      in2 => i2,
      out1 => o1
      );
 
   
  -- Test bench is non-synthesizable
  process is
  begin
    i1 <= "0000";
    i2 <= "0011";
    wait for 10 ns;
    i1 <= "0101";
    i2 <= "0011";
    wait for 10 ns;
    i1 <= "1111";
    i2 <= "0101";
    wait for 10 ns;
    i1 <= "0111";
    i2 <= "0111";
    wait for 10 ns;
    i1 <= "1000";
    i2 <= "1000";
    wait for 10 ns;
  end process;
   
end behave;