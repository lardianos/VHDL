LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity latch is port (
	D 	: in bit;
	EN 	: in bit;
	Q	: out bit);
end latch;

architecture dataflow of latch is
begin
	main:process(D, EN) is
	begin
		case EN is
			when '1' =>
				Q <= D;
			when others =>
		end case;				
	end process main;
end architecture dataflow;