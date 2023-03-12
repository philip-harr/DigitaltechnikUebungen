library ieee;
use ieee.std_logic_1164.all;
 
entity xor8 is
    port (
        in1  : in std_logic_vector(7 downto 0);
        in2  : in std_logic_vector(7 downto 0);
        o   : out std_logic_vector(7 downto 0)
        );
end xor8;
 
 
architecture rtl of xor8 is
begin
    o(0) <= in1(0) xor in2(0);
    o(1) <= in1(1) xor in2(1);
    o(2) <= in1(2) xor in2(2);
    o(3) <= in1(3) xor in2(3);
    o(4) <= in1(4) xor in2(4);
    o(5) <= in1(5) xor in2(5);
    o(6) <= in1(6) xor in2(6);
    o(7) <= in1(7) xor in2(7);
end rtl;