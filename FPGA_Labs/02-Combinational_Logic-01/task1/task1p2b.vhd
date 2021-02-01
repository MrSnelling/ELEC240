-- Nicholas Outram
-- University of Plymouth

entity task1p2b is

	port
	(
		-- Input ports
		A	: in  bit := '0';
		B	: in  bit := '0';
		C	: in  bit := '0';

		-- Output ports
		Y	: out bit
	);
end task1p2b;



architecture task1p2b_v1 of task1p2b is

	-- Declarations (optional)

begin

	Y <= (not A and(B xor c)) or (A and (B xnor C));

end task1p2b_v1;
