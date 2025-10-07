library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CI_OR is
    Port ( J,K : in STD_LOGIC;
           L : out STD_LOGIC);
end CI_OR;

architecture Behavioral of CI_OR is

begin
OR_PROC : process(J,K)
begin
if J = '0' AND K = '0' then
    L <= '0';
else
    L <= '1';
end if;
end process;
end Behavioral;
