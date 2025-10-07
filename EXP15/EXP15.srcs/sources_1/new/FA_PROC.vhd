library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_PROC is
    Port ( A,B,CIN : in STD_LOGIC;
           SUM,COUT : out STD_LOGIC);
end FA_PROC;

architecture Behavioral of FA_PROC is

signal M, N, O: STD_LOGIC;

component CI_XOR is
    Port ( D,E : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

component CI_AND is
    Port ( G,H : in STD_LOGIC;
           I : out STD_LOGIC);
end component;    

component CI_OR is
    Port ( J,K : in STD_LOGIC;
           L : out STD_LOGIC);
end component;

begin
X1 : CI_XOR port map (D => A, E => B, F => M);
X2 : CI_XOR port map (D => M, E => CIN, F => SUM);
A1 : CI_AND port map (G => M, H => CIN, I => N);
A2 : CI_AND port map (G => A, H => B, I => O);
O1 : CI_OR port map (J => N, K => O, L => COUT);
end Behavioral;
