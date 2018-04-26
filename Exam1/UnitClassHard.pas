unit UnitClassHard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Stdctrls, Math;

type
  Tanswer= array of string;

function stringanswer(n: longint):string;
function formanswer(n:integer):string;
function formnumber(n:longint):string;
procedure showanswer(n:longint; memo: Tmemo);

var
  answer: Tanswer;
  num: boolean;

implementation

function formnumber(n:longint):string;
// This function get the number with n+1 '6'.
var
  number: string;
  i: integer;
begin
  number:= '6';
  for i := 1 to n do begin
    number:= number + '6';
  end;
  result:= number;
end;

function stringanswer(n: longint):string;
// This function get the answer with string method. We used dynamic structure here.
var
  i: integer;
begin
  result:= '';
  setlength(answer, 2*n+2);
  for i := 0 to n-1 do begin
    answer[i]:= '4';
  end;
  answer[n]:= '3';
  for i := n+1 to 2*n do begin
    answer[i]:= '5';
  end;
  answer[2*n+1]:= '6';
  for i := 0 to 2*n+1 do begin
    result:= result + answer[i];
  end;

end;

function formanswer(n: integer):string;
// This function try to first use numerical method, if data flows, use another method.
var
  numericalanswer: longint;
  number: string;
begin
  try
    number:= formnumber(n);
    numericalanswer:= strtoint(number)*strtoint(number);
    result:= inttostr(numericalanswer);
    num:= true;
  except
    result:= stringanswer(n);
    num:= false;
  end;
end;

procedure showanswer(n: longint; memo: Tmemo);
// out put the answer and declear the method we use.
begin
  memo.Lines.Clear;
  memo.Lines.Add('The answer is: ' + formanswer(n));
  if num=true then
    memo.Lines.add('We use numerical method to calculate this.')
  else
    memo.lines.Add('We use string method to calculate this.');
end;
end.
