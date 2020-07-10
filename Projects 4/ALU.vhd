library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU4 is  port (
    ALUin1: in std_logic_vector(3 downto 0);
    ALUin2: in std_logic_vector(3 downto 0);
    ALUctrl: in std_logic_vector(3 downto 0);
    ALUout1: out std_logic_vector(3 downto 0);
    zero: out std_logic);
end entity;

architecture behavioral of ALU4 is
    -- signals
    signal sig_zero: std_logic;
begin
    m1 : process(ALUin1,ALUin2,ALUctrl)
    variable V_out : std_logic_vector(3 downto 0) := "0000";
    begin
        case(ALUctrl) is
            when "0000" =>
                V_out := ALUin1 AND ALUin2;
            when "0001" =>
                V_out := ALUin1 OR ALUin2;
                sig_zero <= '0';
            when "0010" =>
                V_out := ALUin1 + ALUin2;
            when "0110" =>
                V_out := ALUin1 - ALUin2;
            when "0111" =>
                if ALUin1 < ALUin2 then
                    V_out := "0001";
                else
                    V_out := "0000";
                end if;
            when others =>
        end case;
        if V_out="0000" then
            sig_zero <= '1';
        else
            sig_zero <= '0';
        end if;
        ALUout1 <= V_out;
    end process;
    zero <= sig_zero;
end architecture;
