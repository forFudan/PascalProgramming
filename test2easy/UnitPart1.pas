unit UnitPart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, stdctrls;

const
  q = 2;
  p = 10;

var
  k: integer;

function compute(epsilon:extended):extended;
procedure display(epsilon: extended; memo: Tmemo);

implementation

function compute(epsilon: extended): extended;
var
  x: extended;
begin
  k:= 0;
  x:= q/(2.2);
  repeat
  x:= (1/p)*((p-1)*x+(q/power(x,p-1)));
  k:= k+1;
  until (abs(x-power(Q,1/p)))< epsilon;
  k:= k-1;
  result:= x;
end;

procedure display(epsilon: extended; memo: Tmemo);
var
  answer1, answer2: extended;
begin
  answer1:= power(q,1/p);
  answer2:= compute(epsilon);
  memo.Lines.Clear;
  memo.Lines.add('The built in answer is '+ floattostrf(answer1,ffgeneral,23,21));
  memo.Lines.Add('The iteration answer is '+ floattostrf(answer2,ffgeneral,23,21));
  memo.Lines.Add('The epsilon input is '+ floattostrf(epsilon, ffgeneral, 23,21));
  memo.Lines.Add('steps is(k-number) '+ inttostr(k));
end;

end.
