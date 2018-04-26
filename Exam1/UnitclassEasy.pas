unit UnitclassEasy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, stdctrls, Math;

function mygamma(epsilon: extended): extended;
procedure display(epsilon: extended; memo: Tmemo);

var
  k: integer;
  bool: boolean;

const
  gamma = 0.57721566490153286061;

implementation

function mygamma(epsilon: extended): extended;
var
  mygamma, term, sum: extended;
  t, count: tdatetime;
  name: string;
begin
  k:= 0;
  sum:= 0;
  mygamma:= 0;
  t:= now();
  bool:= false;
  repeat
    k:= k+1;
    term:= 1/k - ln(1+1/k);
    mygamma:= mygamma + term;
    count:= now()-t;
    name:= formatdatetime('tt', count);
    if name> '0:00:02' then bool:= true;
  until (abs(mygamma-gamma)< epsilon) or (bool = true);
  result:= mygamma;
end;

procedure display(epsilon: extended; memo: Tmemo);
begin
  memo.Lines.Clear;
  memo.Lines.Add('The real gamma is ' + floattostrf(gamma, ffgeneral, 23,21) + '...');
  memo.Lines.Add('The gamma calculated with error term ' + floattostrf(epsilon, ffgeneral, 23, 21) + ' is ' + floattostrf(mygamma(epsilon), ffgeneral, 23,21));
  memo.Lines.Add('The difference between the gammas is less than epsilon.');
  memo.Lines.Add('We used '+ inttostr(k) +' steps to reach this error.');
  memo.Lines.Add('You can try another error now.');
  if bool= true then begin
    memo.Lines.Add('because the error is too small, it will use lots of time, we stopped when time is over 2 seconds');
  end;
end;

end.
