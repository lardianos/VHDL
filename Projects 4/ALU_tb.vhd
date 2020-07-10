library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.ALL;
entity test_alu is
end test_alu;

architecture test_b of test_alu is
    signal AIN1,AIN2,ACTRL,AOUT : std_logic_vector(3 downto 0);
    signal ZERO1 : std_logic;

    component ALU4 port (
        ALUin1: in std_logic_vector(3 downto 0);
        ALUin2: in std_logic_vector(3 downto 0);
        ALUctrl: in std_logic_vector(3 downto 0);
        ALUout1: out std_logic_vector(3 downto 0);
        zero: out std_logic);
    end component;
begin
    M1:ALU4 port map(ALUin1=>AIN1, ALUin2=>AIN2, ALUctrl=>ACTRL, ALUout1=>AOUT, zero=>ZERO1);
    tb_proc1 : process
    begin
        AIN1 <= "0010"; AIN2 <= "0100"; ACTRL <="0010"; wait for 100 ns; -- ACTRL 0010 ADD
        AIN1 <= "0100"; AIN2 <= "1111"; ACTRL <="0000"; wait for 100 ns; -- ACTRL 0000 AND
        AIN1 <= "0100"; AIN2 <= "1111"; ACTRL <="0001"; wait for 100 ns; -- ACTRL 0001 OR
        AIN1 <= "0100"; AIN2 <= "0010"; ACTRL <="0110"; wait for 100 ns; -- ACTRL 0110 SUB
        AIN1 <= "0100"; AIN2 <= "0110"; ACTRL <="0110"; wait for 100 ns; -- ACTRL 0110 SUB
        AIN1 <= "0100"; AIN2 <= "0110"; ACTRL <="0111"; wait for 100 ns; -- ACTRL 0111 SLT
        AIN1 <= "0000"; AIN2 <= "0110"; ACTRL <="0000"; wait for 100 ns; -- ACTRL 0000 AND
        wait;
    end process;
end test_b;
