LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


entity shiftn is
	generic (N: INTEGER := 4);
	port(	D:		in std_logic_vector(n-1 downto 0);
		Enable: 	in std_logic;
		Load:		in std_logic;
		Sin:		in std_logic;
		Clock:		in std_logic;
		Q:		out std_logic_vector(n-1 downto 0));
end shiftn;

-- an to load einai 1 kai to enable 1 tote to q se akmi tou clock einai oti kai to d
-- an to enable einai 0 tote to q einai 0
-- an to load einai 0 kai to enable 1 tote se kathe akmi tou clock to sin kani deksia olisthisi sto q

architecture dataflow of shiftn is
signal Qsout : std_logic_vector(3 downto 0):="0000";
begin	
	main:process(Clock,Enable,Load) is
	begin
		if (Enable = '0') then
			Qsout <= "0000";
		elsif (Load = '1' AND Enable = '1' AND rising_edge(Clock) AND Clock ='1') then			
			Qsout <= D;
		elsif (Load = '0' AND Enable = '1' AND rising_edge(Clock) AND Clock ='1') then
			--Qsout(3)<=Qsout(2);	--Olisthisi pros ta aristera
			--Qsout(2)<=Qsout(1);
			--Qsout(1)<=Qsout(0);
			--Qsout(0)<=Sin;	
			Qsout(0)<=Qsout(1);	--Olisthisi pros ta deksia
			Qsout(1)<=Qsout(2);
			Qsout(2)<=Qsout(3);
			Qsout(3)<=Sin;		
		end if;					
	end process main;
	Q<=Qsout;
end architecture dataflow;