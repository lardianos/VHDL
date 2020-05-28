LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fa is port (
	A, B, Cin : in STD_LOGIC;
	S, Cout : out STD_LOGIC);
end fa;

architecture dataflow of fa is
begin
	main:process(A, B, Cin) is
	begin	
		S <= A XOR B XOR Cin;
		Cout <= (A AND B) OR (Cin AND (A XOR B));		
	end process main;
end architecture dataflow;