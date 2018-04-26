unit UnitCal;

interface

uses
  Math;

Type
  DynamicArray = array of extended;

var
  xD: DynamicArray;

function approximateSin(x: real; n: integer):extended;

implementation

function approximateSin(x: real; n: integer):extended;
var
  i: integer; sum: extended;
begin
  setlength(xD, n);
  xD[0]:= x;
  sum:= xD[0];
  for i := 0 to n-2 do begin
    xD[i+1] := xD[i]*(-1)* power(x,2)/ ((2*i+3)*(2*i+2));
  sum:= sum + xD[i+1];
  end;
  result:= sum;
end;

end.
