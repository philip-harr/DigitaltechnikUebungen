library ieee;
use ieee.std_logic_1164.all;
 
entity alu8 is
    port(
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        F : in std_logic_vector(3 downto 0);
        R : out std_logic_vector(7 downto 0);
        D : out std_logic
    );
end alu8;

architecture struc of alu8 is
    component invert8 is
        port (
            in1  : in std_logic_vector(7 downto 0);
            invert  : in std_logic;
            o   : out std_logic_vector(7 downto 0)
            );
    end component;

    component gate8 is
        port (
            in1  : in std_logic_vector(7 downto 0);
            enable  : in std_logic;
            o   : out std_logic_vector(7 downto 0)
            );
    end component;

    component adder8 is 
        port(
            carry_in : in std_logic;
            in1 : in std_logic_vector(7 downto 0);
            in2 : in std_logic_vector(7 downto 0);
            sum : out std_logic_vector(7 downto 0);
            carry_out : out std_logic
        );
    end component;

    component mux2 is
        port (
            s  : in std_logic_vector(1 downto 0);
            data0  : in std_logic_vector(7 downto 0);
            data1  : in std_logic_vector(7 downto 0);
            data2  : in std_logic_vector(7 downto 0);
            data3  : in std_logic_vector(7 downto 0);
            o   : out std_logic_vector(7 downto 0)
            );
    end component;

    component xor8 is
        port (
            in1  : in std_logic_vector(7 downto 0);
            in2  : in std_logic_vector(7 downto 0);
            o   : out std_logic_vector(7 downto 0)
            );
    end component;
    component or8 is
        port (
            in1  : in std_logic_vector(7 downto 0);
            in2  : in std_logic_vector(7 downto 0);
            o   : out std_logic_vector(7 downto 0)
            );
    end component;
    component and8 is
        port (
            in1  : in std_logic_vector(7 downto 0);
            in2  : in std_logic_vector(7 downto 0);
            o   : out std_logic_vector(7 downto 0)
            );
    end component;

    signal invert_out : std_logic_vector(7 downto 0);
    signal gate_out : std_logic_vector(7 downto 0);
    signal data_mux0 : std_logic_vector(7 downto 0);
    signal data_mux1 : std_logic_vector(7 downto 0);
    signal data_mux2 : std_logic_vector(7 downto 0);
    signal data_mux3 : std_logic_vector(7 downto 0);
begin
    invert : invert8
        port map(
            in1 => A,
            invert => F(3),
            o => invert_out
        );

    gate : gate8
        port map(
            in1 => B,
            enable => F(2),
            o => gate_out
        );

    add : adder8
        port map(
            carry_in => F(3),
            in1 => invert_out,
            in2 => gate_out,
            sum => data_mux3,
            carry_out => D
        );
    
    c_or : or8
        port map(
            in1 => invert_out,
            in2 => gate_out,
            o => data_mux1
        );

    c_and : and8
        port map(
            in1 => invert_out,
            in2 => gate_out,
            o => data_mux0
        );

    c_xor : xor8
        port map(
            in1 => invert_out,
            in2 => gate_out,
            o => data_mux2
        );
    
    mux : mux2
        port map(
            s(0) => F(0),
            s(1) => F(1),
            data0 => data_mux0,
            data1 => data_mux1,
            data2 => data_mux2,
            data3 => data_mux3,
            o => R
        );

end struc;