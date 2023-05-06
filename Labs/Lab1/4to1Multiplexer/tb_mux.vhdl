library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end tb_mux;

architecture test of tb_mux is

	component mux_4to1
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
	end component;
	
	--Inputs
	signal A 	: std_ulogic := '0';
	signal B 	: std_ulogic := '0';
	signal C 	: std_ulogic := '0';
	signal D 	: std_ulogic := '0';
	signal S0 	: std_ulogic := '0';
	signal S1 	: std_ulogic := '0';

	-- Outputs
	signal Z	: std_ulogic;
	
begin

	multiplexer: mux_4to1 port map
	(
		A => A,
		B => B,
		C => C,
		D => D,
		S0 => S0,
		S1 => S1,
		Z => Z
	);
	
	process begin
	
	
	A <= '1';
	B <= '0';
	C <= '1';
	D <= '0';
	
	S0 <= '0'; 
	S1 <= '0'; 
	wait for 1 ns;
		
	S0 <= '1'; 
	S1 <= '0'; 
	wait for 1 ns;
	
	S0 <= '0'; 
	S1 <= '1'; 
	wait for 1 ns;
	
	assert false report "Reached end of test";
	wait;

	end process;
	
end test;