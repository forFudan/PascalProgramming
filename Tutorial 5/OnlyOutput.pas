unit OnlyOutput;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, comctrls, Math, ExtCtrls, onlycalculations;

procedure outputpart1(a,b,c,d,x1,x2:real; Part1memo1:Tmemo);
procedure outputpart2(r,g,b: integer; part2label1,part2label2,part2label3: Tlabel);

implementation

procedure outputpart1(a,b,c,d,x1,x2:real; Part1memo1:Tmemo);
begin
  part1memo1.Clear;
  part1memo1.Lines.Add('The function returns ' + floattostr(quadraticroots(a,b,c,x1,x2))+' results');
  part1memo1.Lines.Add('');
  part1memo1.Lines.Add('Discriminant = ' + floattostr(caldiscriminant(a,b,c)));
  part1memo1.Lines.Add('');
  if d=0 then begin
    part1memo1.Lines.Add('x1=x2= '+ floattostr(x1));
  end
  else if d>0 then begin
    part1memo1.Lines.Add('x1= '+ floattostr(x1));
    part1memo1.Lines.Add('x2= '+ floattostr(x2));
  end;
end;

procedure outputpart2(r,g,b: integer; part2label1,part2label2,part2label3: Tlabel);
begin
  part2label1.Caption:= 'Red= ' +floattostr(r);
  part2label2.Caption:= 'Green= ' +floattostr(g);
  part2label3.Caption:= 'Blue= '+ floattostr(b);
end;
end.
