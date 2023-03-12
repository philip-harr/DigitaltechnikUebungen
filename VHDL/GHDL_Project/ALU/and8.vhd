library ieee;
use ieee.std_logic_1164.all;
 
entity and8 is
    port (
        in1  : in std_logic_vector(7 downto 0);
        in2  : in std_logic_vector(7 downto 0);
        o   : out std_logic_vector(7 downto 0)
        );
end and8;
 
 
architecture rtl of and8 is
begin
    o(0) <= in1(0) and in2(0);
    o(1) <= in1(1) and in2(1);
    o(2) <= in1(2) and in2(2);
    o(3) <= in1(3) and in2(3);
    o(4) <= in1(4) and in2(4);
    o(5) <= in1(5) and in2(5);
    o(6) <= in1(6) and in2(6);
    o(7) <= in1(7) and in2(7);
end rtl;