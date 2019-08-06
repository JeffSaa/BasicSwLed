library ieee;
use ieee.std_logic_1164.all;

entity BasicSwLed is
	Port(
		inputPort: in STD_LOGIC_VECTOR(3 downto 0);
		outputPortL: out STD_LOGIC_VECTOR(6 downto 0);
		outputPortR: out STD_LOGIC_VECTOR(6 downto 0)
	);
end BasicSwLed;

architecture Behavioral of BasicSwLed is
begin

	process(inputPort) begin
		case inputPort is
			when "0000" => --00
				outputPortL <= "0000001";
				outputPortR <= "0000001";
			when "0001" =>	--01
				outputPortL <= "0000001";
				outputPortR <= "1001111";
			when "0010" =>	--02
				outputPortL <= "0000001";
				outputPortR <= "0010010";
			when "0011" =>	--03
				outputPortL <= "0000001";
				outputPortR <= "0000110";
			when "0100" =>	--04
				outputPortL <= "0000001";
				outputPortR <= "1001100";
			when "0101" =>	--05
				outputPortL <= "0000001";
				outputPortR <= "0100100";
			when "0110" =>	--06
				outputPortL <= "0000001";
				outputPortR <= "1100000";
			when "0111" =>	--07
				outputPortL <= "0000001";
				outputPortR <= "0001111";
			when "1000" =>	--08
				outputPortL <= "0000001";
				outputPortR <= "0000000";
			when "1001" =>	--09
				outputPortL <= "0000001";
				outputPortR <= "0001100";
			when "1010" =>	--10
				outputPortL <= "1001111";
				outputPortR <= "0000001";
			when "1011" =>	--11
				outputPortL <= "1001111";
				outputPortR <= "1001111";
			when "1100" =>	--12
				outputPortL <= "1001111";
				outputPortR <= "0010010";
			when "1101" =>	--13
				outputPortL <= "1001111";
				outputPortR <= "0000110";
			when "1110" =>	--14
				outputPortL <= "1001111";
				outputPortR <= "1001100";
			when "1111" =>	--15
				outputPortL <= "1001111";
				outputPortR <= "0100100";
			when others =>
				outputPortL <= "1111111";
				outputPortR <= "1111111";
		end case;
	end process;

end Behavioral;