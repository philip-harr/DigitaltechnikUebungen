library ieee;
use ieee.std_logic_1164.all;
 
entity or8 is
    port (
        in1  : in std_logic_vector(7 downto 0);
        in2  : in std_logic_vector(7 downto 0);
        o   : out std_logic_vector(7 downto 0)
        );
end or8;
 
 
architecture rtl of or8 is
begin
    o(0) <= in1(0) or in2(0);
    o(1) <= in1(1) or in2(1);
    o(2) <= in1(2) or in2(2);
    o(3) <= in1(3) or in2(3);
    o(4) <= in1(4) or in2(4);
    o(5) <= in1(5) or in2(5);
    o(6) <= in1(6) or in2(6);
    o(7) <= in1(7) or in2(7);
end rtl;