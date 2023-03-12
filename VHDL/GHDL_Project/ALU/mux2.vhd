library ieee;
use ieee.std_logic_1164.all;
 
entity mux2 is
    port (
        s  : in std_logic_vector(1 downto 0);
        data0  : in std_logic_vector(7 downto 0);
        data1  : in std_logic_vector(7 downto 0);
        data2  : in std_logic_vector(7 downto 0);
        data3  : in std_logic_vector(7 downto 0);
        o   : out std_logic_vector(7 downto 0)
        );
end mux2;
 
 
architecture rtl of mux2 is
begin
    PROCESS(s, data0, data1, data2, data3, o)
    BEGIN
        if s(0) = '0' and s(1) = '0' then
            o(0) <= data0(0);
            o(1) <= data0(1);
            o(2) <= data0(2);
            o(3) <= data0(3);
            o(4) <= data0(4);
            o(5) <= data0(5);
            o(6) <= data0(6);
            o(7) <= data0(7);
        elsif s(0) = '1' and s(1) = '0' then
            o(0) <= data1(0);
            o(1) <= data1(1);
            o(2) <= data1(2);
            o(3) <= data1(3);
            o(4) <= data1(4);
            o(5) <= data1(5);
            o(6) <= data1(6);
            o(7) <= data1(7);
        elsif s(0) = '0' and s(1) = '1' then
            o(0) <= data2(0);
            o(1) <= data2(1);
            o(2) <= data2(2);
            o(3) <= data2(3);
            o(4) <= data2(4);
            o(5) <= data2(5);
            o(6) <= data2(6);
            o(7) <= data2(7);
        elsif s(0) = '1' and s(1) = '1' then
            o(0) <= data3(0);
            o(1) <= data3(1);
            o(2) <= data3(2);
            o(3) <= data3(3);
            o(4) <= data3(4);
            o(5) <= data3(5);
            o(6) <= data3(6);
            o(7) <= data3(7);
        end if;
    end PROCESS;
end rtl;