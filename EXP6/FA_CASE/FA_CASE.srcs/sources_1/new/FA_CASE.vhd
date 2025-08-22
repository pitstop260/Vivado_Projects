library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_CASE is
    Port ( A, B, CIN : in STD_LOGIC;
           S, COUT : out STD_LOGIC);
end FA_CASE;

architecture Behavioral of FA_CASE is
begin
    process(A,B,CIN)
    begin
        case A XOR B XOR CIN is
            when '1' => S <= '1';
            when others => S <= '0';
        end case;
        case ((A XOR B) AND CIN) OR (A AND B) is
            when '1' => COUT <= '1';
            when others => COUT <= '0';
        end case;
    end process; 
end Behavioral;
