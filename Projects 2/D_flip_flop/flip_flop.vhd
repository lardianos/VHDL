LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity flipflop is port (
	D 	: in bit;
	CLK 	: in bit;
	Q	: out bit);
end flipflop;

architecture dataflow of flipflop is
begin
	main:process(CLK) is
	begin
		if (CLK'EVENT AND CLK='1') then
			Q <= D;
		end if;			
	end process main;
end architecture dataflow;