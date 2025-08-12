----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.08.2025 23:00:51
-- Design Name: 
-- Module Name: FA - dataflow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA is
    Port ( IN1, IN2, CIN : in STD_LOGIC;
           SUM, COUT : out STD_LOGIC);
end FA;

architecture dataflow of FA is

component HA is
    Port ( W, X : in STD_LOGIC;
           S, C : out STD_LOGIC);
end component;

component OR_GATE is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal S1, C1, C2 : STD_LOGIC;

begin
HA_1 : HA port map(W => IN1, X => IN2, S => S1, C => C1);
HA_2 : HA port map(W => S1, X => CIN, S => SUM, C => C2);
OR_2 : OR_GATE port map(A => C1, B => C2, Y => COUT);
end dataflow;
