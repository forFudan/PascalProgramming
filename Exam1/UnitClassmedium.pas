unit UnitClassmedium;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TProgram = class
    channel: integer;
    time: integer;
    title: string;
  end;

  TMovie = class(TProgram)
    Genre: string;
    minimumage: string;
  public
    constructor createmovie(channel, time: integer; title, genre: string; minimumage: string);
  end;

  TShow = class(TProgram)
    Host: string;
  public
    constructor createshow(channel, time:integer; title, host: string);
  end;

procedure addtolist(aprogram: Tprogram);
function comparechannel(item1, item2: pointer):integer;
procedure printlist(memo: Tmemo);

var
  mylist: Tlist;

implementation

constructor tmovie.createmovie(channel, time:integer; title, genre: string; minimumage: string);
begin
  self.channel:= channel;
  self.time:= time;
  self.title:= title;
  self.Genre:= genre;
  self.minimumage:= minimumage;
end;

constructor Tshow.createshow(channel, time:integer; title, host: string);
begin
  self.channel:= channel;
  self.time:= time;
  self.title:= title;
  self.Host:= host;
end;

procedure addtolist(aprogram: Tprogram);
begin
  if aprogram is Tmovie then
  mylist.Add(aprogram);
  if aprogram is Tshow then
  mylist.Add(aprogram);
end;

function comparechannel(item1, item2: pointer):integer;
var
  program1, program2: Tprogram;
  i:integer;
begin
  program1:= Tprogram(item1);
  program2:= Tprogram(item2);
  if program1.channel < program2.channel then result:=1
  else if program1.channel > program2.channel then result:= -1
  else result:=0;
end;

procedure printlist(memo: Tmemo);
var
  i: integer;
begin
  memo.Lines.Clear;
  for i := 0 to mylist.count - 1 do begin
    if Tprogram(mylist[i]) is Tmovie then begin
      memo.Lines.add('It is a Movie');
      memo.Lines.Add('channel: '+ inttostr(Tmovie(mylist[i]).channel));
      memo.Lines.Add('Time: '+ inttostr(Tmovie(mylist[i]).time));
      memo.Lines.Add('title: '+ Tmovie(mylist[i]).title);
      memo.Lines.Add('genre: '+ Tmovie(mylist[i]).genre);
      memo.Lines.Add('minimumage: '+ Tmovie(mylist[i]).minimumage);
      memo.Lines.Add('----------');
      memo.Lines.Add('');
    end
    else begin
      memo.Lines.add('It is a ' + 'show');
      memo.Lines.Add('channel: '+ inttostr(Tshow(mylist[i]).channel));
      memo.Lines.Add('time: '+ inttostr(Tshow(mylist[i]).time));
      memo.Lines.Add('title: '+ Tshow(mylist[i]).title);
      memo.Lines.Add('host: '+ Tshow(mylist[i]).host);
      memo.Lines.Add('----------');
      memo.Lines.Add('');
    end;
  end;
end;

end.
