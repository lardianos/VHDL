LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity flipflop_res is port (
	Din 	: in bit;
	Clock 	: in bit;
	Rstn	: in bit;
	Qout	: out bit);
end flipflop_res;

architecture dataflow of flipflop_res is
begin
	main:process(Clock,Rstn) is
	begin
		if (Rstn = '0') then
			Qout <= '0';
		elsif (Clock'EVENT AND Clock='1') then
			Qout <= Din;
		end if;			
	end process main;
end architecture dataflow;