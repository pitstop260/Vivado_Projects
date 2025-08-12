----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.08.2025 11:34:57
-- Design Name: 
-- Module Name: NOT_GATE - dataflow
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

entity NOT_GATE is
    Port ( A : in STD_LOGIC;
           Y : out STD_LOGIC);
end NOT_GATE;

architecture dataflow of NOT_GATE is

begin
Y <= NOT A;
end dataflow;
