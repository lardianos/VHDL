LIBRARY ieee ;
USE ieee.std_logic_1164.all;

entity mux_double_2to1 is
port
(	a, b: 	in std_logic_vector(2 downto 0);
	s: 	in std_logic;
	d: 	out std_logic_vector(2 downto 0));
end mux_double_2to1;

architecture dataflow of mux_double_2to1 is
begin
	main:process(a, b, s) is
	begin
		case s is
			when '1' =>
				d <= a;
			when others =>
				d <= b;
		end case;	
	end process main;
end architecture dataflow;