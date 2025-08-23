library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4X1 is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           SEL : in STD_LOGIC_VECTOR (1 downto 0);
           W : out STD_LOGIC);
end MUX_4X1;

architecture Behavioral of MUX_4X1 is

signal wire1, wire2 : STD_LOGIC;

component MUX is
    Port ( A, B, SEL : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

begin
MUX2X1_1 : MUX port map(A => X(0), B => X(1), SEL => SEL(0), Y => wire1);
MUX2X1_2 : MUX port map(A => X(2), B => X(3), SEL => SEL(0), Y => wire2);
MUX2X1_3 : MUX port map(A => wire1, B => wire2, SEL => SEL(1), Y => W);
end Behavioral;
