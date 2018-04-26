unit Unitclass;

interface

uses
  stdctrls;

type
  TAppointment = Class
    day, hour: string;
  End;

  Tacquaintance = Class
    name: string;
    appointments: array of TAppointment;
  End;

procedure addAcquaintance(name:string);
procedure deleteacquaintance(nth: integer);
procedure emptylist;
procedure addAppointment(nth: integer; day, hour: string);
procedure displaywithaperson(nth:integer; memo:Tmemo);
procedure displayall(memo:Tmemo);

var
  acquaintances: array of Tacquaintance;

implementation
procedure addAcquaintance(name:string);
var afriend: Tacquaintance;
begin
  aFriend:= Tacquaintance.Create;
  aFriend.name:= name;
  setLength(acquaintances, length(acquaintances)+1);
  acquaintances[high(acquaintances)]:= aFriend;
end;

procedure deleteacquaintance(nth: integer);
var i: integer;
begin
  finalize(acquaintances[nth].appointments);
  acquaintances[nth].Destroy;
  for i := nth to high(acquaintances) - 1 do begin
    acquaintances[nth]:=acquaintances[nth+1];
  end;
  setlength(acquaintances, high(acquaintances)-1);
end;

procedure emptylist;
var i, j: integer;
begin
  for i := 0 to high(acquaintances) - 1 do begin
    for j := 0 to high(acquaintances[i].appointments) - 1 do begin
      acquaintances[i].appointments[j].Destroy;
    end;
    finalize(acquaintances[i].appointments);
    acquaintances[i].Destroy;
    end;
    finalize(acquaintances);
end;

procedure addAppointment(nth: integer; day, hour: string);
var
  appoint: Tappointment;
begin
  appoint:= Tappointment.Create;
  appoint.day:= day;
  appoint.hour:= hour;
  setlength(acquaintances[nth].appointments, length(acquaintances[nth].appointments)+1);
  acquaintances[nth].appointments[high(acquaintances[nth].appointments)]:= appoint;
end;

procedure displaywithaperson(nth:integer; memo: Tmemo);
var
  i: integer;
begin
  memo.lines.Clear;
  for i := 0 to length(acquaintances[nth].appointments) - 1 do begin
    memo.Lines.Add('appointment with: ' + acquaintances[nth].name);
    memo.Lines.Add(acquaintances[nth].appointments[i].day + '/' + acquaintances[nth].appointments[i].hour);
    memo.Lines.Add('----------');
    memo.Lines.Add('');
  end;
end;

procedure displayall(memo:Tmemo);
var
  i, j:integer;
begin
  memo.Lines.Clear;
  for i := 0 to length(acquaintances) - 1 do begin
    for j := 0 to length(acquaintances[i].appointments) - 1 do begin
      memo.lines.Add('appointments with: ' + acquaintances[i].name);
      memo.Lines.Add(acquaintances[i].appointments[j].day + '/'+ acquaintances[i].appointments[j].hour);
      memo.Lines.Add('----------');
      memo.Lines.Add('');
    end;
  end;
end;

end.
