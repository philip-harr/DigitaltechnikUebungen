library ieee;
use ieee.std_logic_1164.all;
 
entity alu_tb is
end alu_tb;
 
architecture behave of alu_tb is

    component alu8 is 
        port(
            A : in std_logic_vector(7 downto 0);
            B : in std_logic_vector(7 downto 0);
            F : in std_logic_vector(3 downto 0);
            R : out std_logic_vector(7 downto 0);
            D : out std_logic
        );
    end component;
 
    signal A_TB  :  std_logic_vector(7 downto 0);
    signal B_TB  :  std_logic_vector(7 downto 0);
    signal F_TB :  std_logic_vector(3 downto 0);
    signal R_TB :  std_logic_vector(7 downto 0);
    signal D_TB :  std_logic;
   
begin

    UUT : alu8
    port map (
      A => A_TB,
      B => B_TB,
      F => F_TB,
      R => R_TB,
      D => D_TB
      );
 
   
  -- Test bench is non-synthesizable
  process is
  begin
    A_TB <= x"AB";
    B_TB <= x"55";
    F_TB <= x"7";
    wait for 10 ns;
    F_TB <= x"4";
    wait for 10 ns;
    F_TB <= x"5";
    wait for 10 ns;
    F_TB <= x"6";
    wait for 10 ns;
    F_TB <= x"f";
    wait for 10 ns;

  end process;
   
end behave;