library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADDER_SUBTRACTOR is
    Port ( A1,A2,A3,A4 : in STD_LOGIC;
           B1,B2,B3,B4 : in STD_LOGIC;
           M : in STD_LOGIC;
           S1,S2,S3,S4 : out STD_LOGIC;
           C4 : out STD_LOGIC);
end ADDER_SUBTRACTOR;

architecture Behavioral of ADDER_SUBTRACTOR is

signal MXB1, MXB2, MXB3, MXB4, C1, C2, C3 : STD_LOGIC;

component FA_CASE is
    Port ( A, B, CIN : in STD_LOGIC;
           S, COUT : out STD_LOGIC);
end component;

component XOR_GATE is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;       

begin
XOR1 : XOR_GATE port map (A => M, B => B1, Y => MXB1);
XOR2 : XOR_GATE port map (A => M, B => B2, Y => MXB2);
XOR3 : XOR_GATE port map (A => M, B => B3, Y => MXB3);
XOR4 : XOR_GATE port map (A => M, B => B4, Y => MXB4);
FA1 : FA_CASE port map (A => A1, B => MXB1, CIN => M, S => S1, COUT => C1);
FA2 : FA_CASE port map (A => A2, B => MXB2, CIN => C1, S => S2, COUT => C2);
FA3 : FA_CASE port map (A => A3, B => MXB3, CIN => C2, S => S3, COUT => C3);
FA4 : FA_CASE port map (A => A4, B => MXB4, CIN => C3, S => S4, COUT => C4);
end Behavioral;