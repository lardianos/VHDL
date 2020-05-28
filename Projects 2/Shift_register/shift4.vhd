LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity shift4 is port (
	Enable 	: in std_logic;
	Sin	: in std_logic;	
	Clock	: in std_logic;
	Q	: out std_logic_vector(3 downto 0));
end shift4;

architecture dataflow of shift4 is

component flipflop_res is port(D,CLK,Rstn: 	in std_logic;
				Qout:		out std_logic);
end component;
signal Q1 : std_logic_vector(3 downto 0);
begin	
	ff1:flipflop_res port map(D=>Sin, CLK=>Clock, Rstn=>Enable, Qout=>Q1(3));
	ff2:flipflop_res port map(D=>Q1(3), CLK=>Clock, Rstn=>Enable, Qout=>Q1(2));
	ff3:flipflop_res port map(D=>Q1(2), CLK=>Clock, Rstn=>Enable, Qout=>Q1(1));
	ff4:flipflop_res port map(D=>Q1(1), CLK=>Clock, Rstn=>Enable, Qout=>Q1(0));
	Q<=Q1;
end architecture dataflow;