library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXP17 is
    Port ( A,B,C,CLK : in STD_LOGIC;
           Y : out STD_LOGIC);
end EXP17;

architecture Behavioral of EXP17 is
signal X : STD_LOGIC;
begin
process(CLK)
variable temp1,temp2 : STD_LOGIC;
begin
if(CLK'event AND CLK = '1') then
    temp1 := A AND B;
    X <= temp1;
    temp2 := C AND X;
    y <= temp2;
end if;
end process;
end Behavioral;
