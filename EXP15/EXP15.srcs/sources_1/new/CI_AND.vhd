library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CI_AND is
    Port ( G,H : in STD_LOGIC;
           I : out STD_LOGIC);
end CI_AND;

architecture Behavioral of CI_AND is

begin
AND_PROC : process(G,H)
begin
if G = '1' AND H = '1' then
    I <= '1';
else
    I <= '0';
end if;
end process;
end Behavioral;
