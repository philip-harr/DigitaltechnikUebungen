library ieee;
use ieee.std_logic_1164.all;
 
entity adder3 is
    port(
        in1 : in std_logic_vector(2 downto 0);
        in2 : in std_logic_vector(2 downto 0);
        out1 : out std_logic_vector(3 downto 0)
    );
end adder3;

architecture struc of adder3 is
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

    signal carry1 : std_logic;
    signal carry2 : std_logic;
begin
    b0 : adder
        port map(
            i_bit1 => in1(0),
            i_bit2 => in2(0),
            i_carry => '0',
            o_sum => out1(0),
            o_carry => carry1
        );
    b1 : adder
        port map(
            i_bit1 => in1(1),
            i_bit2 => in2(1),
            i_carry => carry1,
            o_sum => out1(1),
            o_carry => carry2
        );
    b2 : adder
        port map(
            i_bit1 => in1(2),
            i_bit2 => in2(2),
            i_carry => carry2,
            o_sum => out1(2),
            o_carry => out1(3)
        );
end struc;