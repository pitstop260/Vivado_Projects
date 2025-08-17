library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TRISTATE_BUFFER is
    Port ( A, E : in STD_LOGIC;
           Y : out STD_LOGIC);
end TRISTATE_BUFFER;

architecture Behavioral of TRISTATE_BUFFER is
begin
Y <= A when E = '1' else 'Z';
end Behavioral;
