library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER is
    port (
        D : in  std_logic_vector(1 downto 0);
        Y   : out std_logic_vector(3 downto 0)
    );
end entity DECODER;

architecture Behavioral of DECODER is
begin
    -- Concurrent signal assignment using a selected signal assignment statement
    with D select
        Y <= "0001" when "00",
             "0010" when "01",
             "0100" when "10",
             "1000" when "11",
             "0000" when others;  -- Default case
end architecture Behavioral;