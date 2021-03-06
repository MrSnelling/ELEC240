library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

entity uop_dlatch is

	port 
	(
		D	   : in std_logic;	-- D input							
		EN     : in std_logic;	-- GO - count the number of leading 1's (level triggered)
		R      : in std_logic;  -- Active LOW Reset
		Q      : out std_logic 	-- Q output
	);

end entity;

architecture dlatch_v1 of uop_dlatch  is
begin
	--I am going to use behavioural logic
	process (D,EN,R) is
		--Local declarations
	begin
		if (R = '1') then 
			if (EN = '1') then
				Q <= D;
			end if;				
		else
			Q <= '0';
		end if;
	end process;

end dlatch_v1;
