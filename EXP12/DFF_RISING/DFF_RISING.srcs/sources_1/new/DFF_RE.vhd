library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF_RE is
    Port ( D,CLK,PRESET,RESET : in STD_LOGIC;
           Q : out STD_LOGIC);
end DFF_RE;

architecture Behavioral of DFF_RE is

begin
process(CLK,PRESET,RESET)
begin
if RESET = '0' then
    Q <= '0';
end if;
if RESET = '1' AND PRESET = '0' then
    Q <= '1';
end if;
if CLK'event AND CLK = '1' AND RESET = '1' AND PRESET = '1' then
    Q <= D;
end if;
end process;
end Behavioral;
