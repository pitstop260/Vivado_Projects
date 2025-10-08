library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXP16 is
    Port ( a,b,c,CLK : in STD_LOGIC;
           y : out STD_LOGIC);
end EXP16;

architecture Behavioral of EXP16 is
begin
process(CLK)
variable temp : STD_LOGIC;
begin
if (CLK'event and CLK = '1') then
    temp := a AND b;
    y <= C AND temp;
end if;
end process;
end Behavioral;
