var ans : longint;
	n : longint;

function digit_sum(n : longint) : longint;
Begin
	digit_sum := 0;
	while (n > 0) do
	begin
		Inc(digit_sum, n mod 10);
		n := n div 10;
	end;
End;

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
	for n := 10000 to 99999 do
		if isPrime(n) and isPrime(digit_sum(n)) then
			Inc(ans);
	Writeln(ans);
END.
