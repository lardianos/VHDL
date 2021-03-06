LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity flipflop_res is port (
	D 	: in bit;
	CLK 	: in bit;
	Rstn	: in bit;
	Q	: out bit);
end flipflop_res;

architecture dataflow of flipflop_res is
begin
	main:process(CLK,Rstn) is
	begin
		if (Rstn = '0') then
			Q <= '0';
		elsif (CLK'EVENT AND CLK='1') then
			Q <= D;
		end if;			
	end process main;
end architecture dataflow;