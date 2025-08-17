library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER is
    Port ( D : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end DECODER;

architecture Behavioral of DECODER is
begin
Y <= "0001" when D = "00" else
     "0010" when D = "01" else
     "0100" when D = "10" else
     "1000" when D = "11";
end Behavioral;
