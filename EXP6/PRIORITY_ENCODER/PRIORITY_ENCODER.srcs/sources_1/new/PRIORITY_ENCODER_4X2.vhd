library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PRIORITY_ENCODER_4X2 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (1 downto 0);
           VALID : out STD_LOGIC);
end PRIORITY_ENCODER_4X2;

architecture Behavioral of PRIORITY_ENCODER_4X2 is
begin
with (A(3) OR A(2)) select
      B(1) <= '1' when '1',
              '0' when others;
with (A(3) OR (NOT(A(2)) AND A(1))) select
      B(0) <= '1' when '1',
              '0' when others;
with A select     
    VALID <= '0' when "0000",
             '1' when others;  
end Behavioral;