LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity dec_2to4 is
port (
a: in std_logic_vector(2 downto 1);
en: in std_logic;
d: out std_logic_vector(4 downto 1) );
end dec_2to4;

architecture dataflow of dec_2to4 is
	signal enable: std_logic_vector(2 downto 0);
begin
	main:process(a, en) is
	begin
		enable <= en & a;
		case enable is
			when "100" =>
				d <= "0001";
			when "101" =>
				d <= "0010";
			when "110" =>
				d <= "0100";
			when "111" =>
				d <= "1000";
			when others =>
				d <= "0000";
		end case;	
	end process main;
end architecture dataflow;