unit unitCalculations;

interface

uses
  SysUtils, DateUtils;

function isDatecorrect(day, month, year: integer): boolean;
function getdayname(day,month,year: integer):string;
function getmonthname(month:integer):string;
function getsuffix(day:integer):string;

implementation


function isDatecorrect(day, month, year: integer): boolean;
begin
  result := false;
  case month of
  1,3,5,7,8,10,12: result:=((day>=1) and (day<=31));
  2: result:=((day>=1) and (day<=28));
  4,6,9,11: result:=((day>=1) and (day<=30))
  end;
  if (year mod 100=0) then
  begin
    if ((year mod 400=0) and (month=2)) then
    begin
      result:=((day>=1) and (day<=29));
    end
  else if ((year mod 4=0) and (month=2)) then
  begin
    result:= ((day>=1) and (day<=29));
  end;
  end;
end;

function getdayname(day,month,year: integer):string;
var
  mydate: integer;
begin
  mydate := DayOfTheWeek(EncodeDate(year, month, day));
  case mydate of
    1: result := 'Monday';
    2: result := 'Tuesday';
    3: result := 'Wednesday';
    4: result := 'Thursday';
    5: result := 'Friday';
    6: result := 'Saturday';
    7: result := 'Sunday';
  end;
end;

function getmonthname(month:integer):string;
begin
  case month of
    1: result:='January';
    2: result:='Feburary';
    3: result:='March';
    4: result:='April';
    5: result:='May';
    6: result:='June';
    7: result:='July';
    8: result:='August';
    9: result:='September';
    10: result:='October';
    11: result:='November';
    12: result:='December';
  end;
end;

function getsuffix(day:integer):string;
begin
  case day of
    1,21,31 :result:='st';
    2,22 :result:='nd';
    3,23 :result:='rd';
    4..20, 24..30 :result:='th';
  end;
end;

end.
