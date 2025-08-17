library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
    Port ( D, CLK_D : in STD_LOGIC;
           Q : out STD_LOGIC);
end DFF;

architecture Behavioral of DFF is

begin
    DFF_CLK : process(CLK_D)
    begin
        if CLK_D'event and CLK_D = '1' then
            Q <= D;
        end if;
    end process DFF_CLK;
end Behavioral;