LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity dec_4to16 is port (
a: in std_logic_vector( 4 downto 1);
d: out std_logic_vector(16 downto 1));
end dec_4to16;

architecture dataflow of dec_4to16 is
begin
	main:process(a) is
	begin
		case a is
			when "0000" =>
				d <= "0000000000000001";
			when "0001" =>
				d <= "0000000000000010";
			when "0010" =>
				d <= "0000000000000100";
			when "0011" =>
				d <= "0000000000001000";
			when "0100" =>
				d <= "0000000000010000";
			when "0101" =>
				d <= "0000000000100000";
			when "0110" =>
				d <= "0000000001000000";
			when "0111" =>
				d <= "0000000010000000";
			when "1000" =>
				d <= "0000000100000000";
			when "1001" =>
				d <= "0000001000000000";
			when "1010" =>
				d <= "0000010000000000";
			when "1011" =>
				d <= "0000100000000000";
			when "1100" =>
				d <= "0001000000000000";
			when "1101" =>
				d <= "0010000000000000";
			when "1110" =>
				d <= "0100000000000000";
			when "1111" =>
				d <= "1000000000000000";
			when others =>
		end case;	
	end process main;
end architecture dataflow;