-------------------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
 
entity adder3_tb is
end adder3_tb;
 
architecture behave of adder3_tb is

    component adder3 is 
        port (
          in1 : in std_logic_vector(2 downto 0);
          in2 : in std_logic_vector(2 downto 0);
          out1 : out std_logic_vector(3 downto 0)
      );
    end component;
 
    signal i1  :  std_logic_vector(2 downto 0);
    signal i2  :  std_logic_vector(2 downto 0);
    signal o1 :  std_logic_vector(3 downto 0);
   
begin
 
  -- Instantiate the Unit Under Test (UUT)
  UUT : adder3
    port map (
      in1 => i1,
      in2 => i2,
      out1 => o1
      );
 
   
  -- Test bench is non-synthesizable
  process is
  begin
    i1 <= "000";
    i2 <= "001";
    wait for 10 ns;
    i1 <= "010";
    i2 <= "001";
    wait for 10 ns;
    i1 <= "111";
    i2 <= "010";
    wait for 10 ns;
    i1 <= "011";
    i2 <= "011";
    wait for 10 ns;
    i1 <= "100";
    i2 <= "100";
    wait for 10 ns;
  end process;
   
end behave;