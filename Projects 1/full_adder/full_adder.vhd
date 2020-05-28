LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fa is port (
	A, B, Cin : in bit;
	S, Cout : out bit);
end fa;

architecture dataflow of fa is
--signal f_xor_out: bit;
begin
	main:process(A, B, Cin) is
	begin
		--f_xor_out <= A XOR B;
		--S <= f_xor_out XOR Cin;
		S <= A XOR B XOR Cin;
		Cout <= (A AND B) OR (Cin AND (A XOR B));		
	end process main;
end architecture dataflow;