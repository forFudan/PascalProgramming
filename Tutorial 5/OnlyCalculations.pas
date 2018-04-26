unit OnlyCalculations;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, ExtCtrls;


    procedure calculatergb(clr: integer; var r,g,b:integer);
    function calDiscriminant(a:real; b:real; c:real):real;
    function Quadraticroots(a:real; b:real; c:real; var x1: real; var x2: real): integer;

implementation

procedure calculatergb(clr: integer; var r,g,b:integer);
begin
  r:= clr mod 256;
  clr:= (clr-r)div 256;
  g:= clr mod 256;
  b:= (clr-r)div 256;
end;

function calDiscriminant(a:real; b:real; c:real):real;
begin
    result := power(b,2)-4*a*c;
end;

function Quadraticroots(a:real; b:real; c:real; var x1: real; var x2: real): integer;
var d: real;
begin
  d:= caldiscriminant(a,b,c);
  if d<0 then begin
  result := 0;
  end
  else if d=0 then begin
  result := 1;
  x1 := (-b+sqrt(d))/(2*a);
  end
  else begin
  result := 2;
  x1 := (-b+sqrt(d))/(2*a);
  x2 := (-b-sqrt(d))/(2*a);
  end;
end;

end.
