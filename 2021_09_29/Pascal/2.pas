var ans : longint;
	x1, x2 : longint;
	D_SUM : array [100..999] of longint;
	i : longint;

function digit_sum(n : longint) : longint;
Begin
	digit_sum := n div 100 + (n div 10) mod 10 + n mod 10;
End;

BEGIN
	ans := 0;
	for i := 100 to 999 do D_SUM[i] := digit_sum(i);
	for x1 := 100 to 999 do
	begin
		if (x1 mod D_SUM[x1] = 0) then
			Inc(ans);
		for x2 := x1+1 to 999 do
			if (x1 mod D_SUM[x2] = 0) and (x2 mod D_SUM[x1] = 0) then
				Inc(ans, 2);
	end;
	Writeln(ans);
END.
