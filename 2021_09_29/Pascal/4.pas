var ans : longint;
	x1, d : longint;

function isPrime(n : longint) : Boolean;
var i : longint;
Begin
	for i := 2 to round(sqrt(n)) do
		if (n mod i = 0) then
		begin
			isPrime := False;
			Exit;
		end;
	isPrime := True;
End;

BEGIN
	ans := 0;
	for x1 := 1000 to 9999 do
	begin
		if not isPrime(x1) then
			continue;
		for d := 1 to (10000 - x1) div 3 do
			if isPrime(x1+d) and isPrime(x1+2*d) and isPrime(x1+3*d) then
				Inc(ans);
	end;
	Writeln(ans);
END.
