library ieee;
use ieee.std_logic_1164.all;
 
entity invert8 is
    port (
        in1  : in std_logic_vector(7 downto 0);
        invert  : in std_logic;
        o   : out std_logic_vector(7 downto 0)
        );
end invert8;
 
 
architecture rtl of invert8 is
begin
    o(0) <= in1(0) xor invert;
    o(1) <= in1(1) xor invert;
    o(2) <= in1(2) xor invert;
    o(3) <= in1(3) xor invert;
    o(4) <= in1(4) xor invert;
    o(5) <= in1(5) xor invert;
    o(6) <= in1(6) xor invert;
    o(7) <= in1(7) xor invert;
end rtl;