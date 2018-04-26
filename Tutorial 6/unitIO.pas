unit unitIO;

interface

uses
  SysUtils, Controls, StdCtrls, unitcalculations;

procedure printRephraseDate(day,month,year:integer; part2memo1:TMemo);
procedure printDateCorrect(day,month,year:integer; part1memo1:TMemo);

implementation

procedure printDateCorrect(day,month,year:integer; part1memo1:TMemo);
var judgement: string;
begin
  case isdatecorrect(day, month, year) of
  true: judgement:= 'correct';
  false: judgement:= 'incorrect';
  end;
  part1memo1.lines.add('The date '+ floattostr(day)+'-'+floattostr(month)+'-'
                        +floattostr(year)+' is '+ judgement+'.');
end;

procedure printRephraseDate(day,month,year:integer; part2memo1:TMemo);
begin
  part2memo1.Lines.Add('It is a '+ getdayname(day,month,year)+ ' ' + inttostr(day) +
                     getsuffix(day)+' of '+getmonthname(month));
end;



end.

