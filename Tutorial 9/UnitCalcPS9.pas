{ function An(n) and Bn(n)
  function FxVar(x,n)
  function Fx(x,n)
  output
}

unit UnitCalcPS9;

interface

uses
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

function CalcAn(n:integer):extended;
function CalcBn(n:integer):extended;
function CalcFxVar(x:real; n:integer):extended;
function CalcFx(x:real; n:integer):extended;

implementation

function CalcAn(n:integer):extended;
begin
  result:= exp(2*pi*(n+1));
end;

function CalcBn(n:integer):extended;
begin
  result:= exp(-2*pi*n);
end;

function CalcFxVar(x:real; n:integer):extended;
begin
  result:= CalcAn(n)*cos(n*x)+ CalcBn(n)*sin(n*x);
end;

function CalcFx(x:real; n:integer):extended;
var
  Fx:real;
  i:integer;
begin
  Fx:= CalcAn(0)/2;
  for i := 1 to n do begin
  Fx:= Fx+ CalcFxVar(x, i);
  end;
  result:= Fx;
end;



end.
