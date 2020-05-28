LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity flipflop_res is port (
	D 	: in std_logic;
	CLK 	: in std_logic;
	Rstn	: in std_logic;
	Qout	: out std_logic);
end flipflop_res;

architecture dataflow of flipflop_res is
begin
	main:process(CLK,Rstn) is
	begin
		if (Rstn = '0') then
			Qout <= '0';
		elsif (CLK'EVENT AND CLK='1') then
			Qout <= D;
		end if;			
	end process main;
end architecture dataflow;