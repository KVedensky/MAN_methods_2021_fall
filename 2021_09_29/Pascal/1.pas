var ans : longint;
	x1, x2 : longint;

function digit_sum(n : longint) : longint;
Begin
	digit_sum := n div 100 + (n div 10) mod 10 + n mod 10;
End;

BEGIN
	ans := 0;
	for x1 := 100 to 999 do
		for x2 := 100 to 999 do
			if (x1 mod digit_sum(x2) = 0) and (x2 mod digit_sum(x1) = 0) then
				Inc(ans);
	Writeln(ans);
END.
