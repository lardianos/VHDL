LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity dec2to4 is
port (
a: in std_logic_vector(2 downto 1);
d: out std_logic_vector(4 downto 1));
end dec2to4;

architecture dataflow of dec2to4 is
begin
	main:process(a) is
	begin
		case a is
			when "00" =>
				d <= "0001";
			when "01" =>
				d <= "0010";
			when "10" =>
				d <= "0100";
			when "11" =>
				d <= "1000";
			when others =>
				d <= "0000";
		end case;	
	end process main;
end architecture dataflow;