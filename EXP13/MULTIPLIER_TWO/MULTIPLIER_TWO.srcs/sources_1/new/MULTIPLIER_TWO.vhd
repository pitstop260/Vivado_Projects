library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MULTIPLIER_TWO is
    Port ( A,B : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0));
end MULTIPLIER_TWO;

architecture Behavioral of MULTIPLIER_TWO is

signal CARRY : STD_LOGIC;

component HA is
    Port ( W, X : in STD_LOGIC;
           S, C : out STD_LOGIC);
end component;

begin
C(0) <= A(0) AND B(0);
HA1 : HA port map(W => A(0) AND B(1), X => A(1) AND B(0), S => C(1), C => CARRY);
HA2 : HA port map(W => A(1) AND B(1), X => CARRY, S => C(2), C => C(3));

end Behavioral;
