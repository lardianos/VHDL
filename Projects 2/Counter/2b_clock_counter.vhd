LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity upcounter is port (
	Clear 	: in STD_LOGIC;
	Clock 	: in STD_LOGIC;
	Q	: out STD_LOGIC_VECTOR(1 downto 0));
end upcounter;

architecture dataflow of upcounter is
SIGNAL C: STD_LOGIC_VECTOR(1 downto 0);
begin	
	main:process(Clear,Clock)
	begin
		if (Clear = '1') then
			C <= "00";
		elsif (rising_edge(Clock) AND Clock='1') then
			if (C = "11") then
				C<= "00";
			else
				C <= C + 1;
			end if;
		end if;		
	end process main;
	Q <= C;	
end architecture dataflow;