library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( A, B, SEL : in STD_LOGIC;
           Y : out STD_LOGIC);
end MUX;

architecture Behavioral of MUX is
begin
    Y <= A when SEL = '0' else B;
end Behavioral;
