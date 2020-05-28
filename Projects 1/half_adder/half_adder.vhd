LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ha is port (
A, B : in bit;
S,C : out bit);
end ha;

architecture dataflow of ha is
begin
	main:process(A, B) is
	begin
		S <= A XOR B;
		c <= A AND B;		
	end process main;
end architecture dataflow;