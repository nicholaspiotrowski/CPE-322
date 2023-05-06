library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is
	port
	(
		A		 	: in std_ulogic;
		B			: in std_ulogic;
		C			: in std_ulogic;
		D 			: in std_ulogic;
		S0			: in std_ulogic;
		S1 			: in std_ulogic;
		Z			: out std_ulogic
	);
end mux_4to1;

architecture behave of mux_4to1 is
begin

process (A,B,C,D,S0,S1) is
begin
	if (S0 = '0' and S1 = '0') then
		Z <= A;
	elsif (S0 = '1' and S1 = '0') then
		Z <= B;
	elsif (S0 = '0' and S1 = '1') then
		Z <= C;
	else
		Z <= D;
	end if;

end process;
end behave;