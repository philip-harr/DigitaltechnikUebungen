library ieee;
use ieee.std_logic_1164.all;
 
entity gate8 is
    port (
        in1  : in std_logic_vector(7 downto 0);
        enable  : in std_logic;
        o   : out std_logic_vector(7 downto 0)
        );
end gate8;
 
 
architecture rtl of gate8 is
begin
    o(0) <= in1(0) and enable;
    o(1) <= in1(1) and enable;
    o(2) <= in1(2) and enable;
    o(3) <= in1(3) and enable;
    o(4) <= in1(4) and enable;
    o(5) <= in1(5) and enable;
    o(6) <= in1(6) and enable;
    o(7) <= in1(7) and enable;
end rtl;