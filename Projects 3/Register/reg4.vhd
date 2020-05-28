LIBRARY ieee ;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity reg4 is
	port(	D:	in std_logic_vector(3 downto 0);
		Resetn:	in std_logic;
		Clock:  in std_logic;
        Q:		  out std_logic_vector(3 downto 0));
end reg4;

architecture behavioral of reg4 is
begin
    m1 : process(Resetn, Clock)
    begin
        if Resetn = '0' then
            Q<="0000";
        elsif rising_edge(Clock) then
            Q<=D;
        end if;
    end process;
end architecture;
