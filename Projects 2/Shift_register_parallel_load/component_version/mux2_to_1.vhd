LIBRARY ieee ;
USE ieee.std_logic_1164.all;

entity mux_double_2to1 is
port
(	a, b: 	in std_logic;
	s: 	in std_logic;
	d: 	out std_logic);
end mux_double_2to1;

architecture dataflow of mux_double_2to1 is
signal C: std_logic;
begin
	--d<=a when s='1' else b;
	main:process(s,a,b) is
	begin
		case s is
			when '1' =>
				C <= a;
				d<=a;
			when '0' =>
				C <= b;
				--d<=b;
			when others =>
		end case;	
	end process main;
	d<=C;
end architecture dataflow;