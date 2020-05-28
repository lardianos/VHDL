LIBRARY ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.ALL;

entity reg4_4bit is
	generic(dw		: 	natural := 4;
			size	: 	natural := 4;
			adrw	: 	natural := 2);
 	port(	A 		: 	in std_logic_vector(dw-1 downto 0);
			rAddr1	:	in std_logic_vector(adrw-1 downto 0);
			rAddr2	:	in std_logic_vector(adrw-1 downto 0);
			wAddr	:	in std_logic_vector(adrw-1 downto 0);
			we 		:	in std_logic;
			clk 	:	in std_logic;
			B		:	out std_logic_vector(dw-1 downto 0);
			C 		:	out std_logic_vector(dw-1 downto 0));
end reg4_4bit;

architecture behavioral of reg4_4bit is
type regArray is array(0 to size-1) of std_logic_vector(dw-1 downto 0);
signal regfile : regArray;
begin
    m1 : process(clk)
    begin
        if (clk'event and clk='0') then
			if we='1' then
				regfile(to_integer(unsigned(wAddr))) <= A;
			elsif we='0' then
				C <= regfile(to_integer(unsigned(rAddr1)));
				B <= regfile(to_integer(unsigned(rAddr2)));
			end if;
        end if;
    end process;
end architecture;
