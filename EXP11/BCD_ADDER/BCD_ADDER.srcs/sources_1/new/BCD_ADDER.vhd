library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_ADDER is
    Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : inout STD_LOGIC);
end BCD_ADDER;

architecture Behavioral of BCD_ADDER is

signal OC : STD_LOGIC;
signal INS : STD_LOGIC_VECTOR (3 downto 0);

component PARALLEL_ADDER is
    Port ( A1,A2,A3,A4 : in STD_LOGIC;
           B1,B2,B3,B4 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           S1,S2,S3,S4,C5 : out STD_LOGIC);
end component;

begin
FA1 : PARALLEL_ADDER port map(A1 => A(0), A2 => A(1),A3 => A(2),A4 => A(3),
                              B1 => B(0), B2 => B(1),B3 => B(2),B4 => B(3),
                              C1 => CIN,
                              S1 => INS(0), S2 => INS(1), S3 => INS(2), S4 => INS(3),
                              C5 => OC);
COUT <= OC OR (INS(2) AND INS(1)) OR (INS(2) AND INS(0));
FA2 : PARALLEL_ADDER port map(A1 => INS(0), A2 => INS(1),A3 => INS(2),A4 => INS (3),
                              B1 => '0', B2 => COUT,B3 => COUT,B4 => '0',
                              C1 => '0',
                              S1 => S(0),S2 => S(1),S3 => S(2),S4 => S(3));
end Behavioral;
