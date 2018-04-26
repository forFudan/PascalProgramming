unit Part1Calculate;

interface

Uses
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Math, StdCtrls;

type
  adistance = array[1..5, 1..5] of real;
  aroute = array of integer;

function factorial(x: integer):integer;
function builtInCosine(x: real):extended;
function ComputeWithFor(x: real; n:integer):extended;
function ComputeWithRepeat(x:real; var repeatstep:integer):extended;
function ComputeWithWhile(x:real; degree:integer):extended;
function computelength:real;

Var
  numOfStepsInfor : integer;
  repeatstep: integer;
  whilestep: integer;
  distance: adistance;
  route: aroute;

implementation

function factorial(x: integer): integer;
var
  i: integer; s: longint;
begin
  if x=0 then s:=1
  else begin
    s:= 1;
    for i := 1 to x do begin
    s:= s* i;
    end;
  result:= s;
  end;
end;

function builtInCosine(x: real):extended;
begin
  result:= cos(x);
end;

function ComputeWithFor(x: real; n: integer):extended;
var
  i: integer; term, multiplication, s: extended;
begin
  s:= 1;
  term:= 1;
  for i := 0 to n-1 do begin
    multiplication:= (-1)* power(x, 2)/ ((2*i+1)*(2*i+2));
    term:= term* multiplication;
    s:= s+ term;
  if n>0 then begin
    result:= s
  end
  else result:=1;
end;
end;

function ComputeWithRepeat(x:real; var repeatstep:integer):extended;
var
  sum, term, multiplication: extended;
begin
  term:=1;
  sum:=0;
  repeatstep:=0;
  repeat
    repeatstep:= repeatstep+1;
    sum:= sum+ term;
    multiplication:= (-1)* power(x, 2)/ ((2*repeatstep-1)*(2*repeatstep));
    term:= term* multiplication;
  until (term=0);
  result:= sum;
end;

function ComputeWithWhile(x:real; degree:integer):extended;
var
  sum, term, multi: extended;
begin
  whilestep:=0;
  term:=1;
  sum:=0;
  while (abs(term) > power(10, (-1)*degree)) do begin
    whilestep:=whilestep+1;
    sum:= sum+term;
    multi:= (-1)* power(x, 2)/ ((2*whilestep-1)*(2*whilestep));
    term:= term* multi;
  end;
  result:= sum;
end;

function computelength:real;
var
  i: Integer;
  sum: real;
begin
  i:= 0;
  sum:=0;
  repeat
    i:=i+1;
    sum:= sum+distance[route[i-1],route[i]];
  until ((distance[route[i-1],route[i]]=0) or (i=length(route)-1));
  if distance[route[i-1],route[i]]=0 then begin
    sum:=0;
  end;
  result:= sum;
end;

end.
