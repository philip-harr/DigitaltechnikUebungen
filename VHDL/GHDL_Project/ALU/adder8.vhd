library ieee;
use ieee.std_logic_1164.all;
 
entity adder8 is
    port(
        carry_in : in std_logic;
        in1 : in std_logic_vector(7 downto 0);
        in2 : in std_logic_vector(7 downto 0);
        sum : out std_logic_vector(7 downto 0);
        carry_out : out std_logic
    );
end adder8;

architecture struc of adder8 is
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

    signal carry : std_logic_vector(6 downto 0);
begin
    b0 : adder
        port map(
            i_bit1 => in1(0),
            i_bit2 => in2(0),
            i_carry => carry_in,
            o_sum => sum(0),
            o_carry => carry(0)
        );
    b1 : adder
        port map(
            i_bit1 => in1(1),
            i_bit2 => in2(1),
            i_carry => carry(0),
            o_sum => sum(1),
            o_carry => carry(1)
        );
    b2 : adder
        port map(
            i_bit1 => in1(2),
            i_bit2 => in2(2),
            i_carry => carry(1),
            o_sum => sum(2),
            o_carry => carry(2)
        );
    b3 : adder
        port map(
            i_bit1 => in1(3),
            i_bit2 => in2(3),
            i_carry => carry(2),
            o_sum => sum(3),
            o_carry => carry(3)
        );
    b4 : adder
        port map(
            i_bit1 => in1(4),
            i_bit2 => in2(4),
            i_carry => carry(3),
            o_sum => sum(4),
            o_carry => carry(4)
        );
    b5 : adder
        port map(
            i_bit1 => in1(5),
            i_bit2 => in2(5),
            i_carry => carry(4),
            o_sum => sum(5),
            o_carry => carry(5)
        );
    b6 : adder
        port map(
            i_bit1 => in1(6),
            i_bit2 => in2(6),
            i_carry => carry(5),
            o_sum => sum(6),
            o_carry => carry(6)
        );
    b7 : adder
        port map(
            i_bit1 => in1(7),
            i_bit2 => in2(7),
            i_carry => carry(6),
            o_sum => sum(7),
            o_carry => carry_out
        );
end struc;