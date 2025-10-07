library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CI_XOR is
    Port ( D,E : in STD_LOGIC;
           F : out STD_LOGIC);
end CI_XOR;

architecture Behavioral of CI_XOR is

begin
XOR_PROC : process(D,E)
begin
if (D = '1' AND E = '1') OR (D = '0' AND E = '0') then
    F <= '0';
else
    F <= '1';
end if;
end process;
end Behavioral;
