library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PARALLEL_ADDER is
    Port ( A1,A2,A3,A4 : in STD_LOGIC;
           B1,B2,B3,B4 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           S1,S2,S3,S4,C5 : out STD_LOGIC);
end PARALLEL_ADDER;

architecture Behavioral of PARALLEL_ADDER is

signal C2,C3,C4 : STD_LOGIC;

component FA_CASE is
    Port ( A, B, CIN : in STD_LOGIC;
           S, COUT : out STD_LOGIC);
end component;
       
begin
FA1 : FA_CASE port map(A => A1,B => B1, CIN => C1, S => S1, COUT => C2);
FA2 : FA_CASE port map(A => A2,B => B2, CIN => C2, S => S2, COUT => C3);
FA3 : FA_CASE port map(A => A3,B => B3, CIN => C3, S => S3, COUT => C4);
FA4 : FA_CASE port map(A => A4,B => B4, CIN => C4, S => S4, COUT => C5);
end Behavioral;