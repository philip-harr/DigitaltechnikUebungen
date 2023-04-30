------------------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
 
entity adder is
    port (
        i_bit1  : in std_logic;
        i_bit2  : in std_logic;
        i_carry : in std_logic;
        --
        o_sum   : out std_logic;
        o_carry : out std_logic
        );
end adder;
 
 
architecture rtl of adder is
    signal s1 : std_logic;
    signal s2 : std_logic;
    signal s3 : std_logic;
begin
    s1 <= i_bit1 xor i_bit2;
    s2 <= s1 and i_carry;
    s3 <= i_bit1 and i_bit2;
   
    o_sum   <= s1 xor i_carry;
    o_carry <= s2 or s3;
end rtl;