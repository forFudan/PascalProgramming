unit UnitCalculate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tprint = class
    title: string;
    publisher: string;
    page: integer;
    date: string
  end;

  Tbook = class(Tprint)
    author: string;
  public
    constructor createbook(title, publisher, author: string; page: integer; date: string);
  end;

  Tmagazine = class(Tprint)
    number: integer;
  public
    constructor createmagazine(title, publisher: string; page, number: integer; date: string);
  end;

procedure addtolist(aprint: Tprint);
procedure display(memo: Tmemo);
function comparebytitle(item1, item2: pointer):integer;
function comparebypage(item1, item2:pointer): integer;

var
  mylist: Tlist;

implementation

constructor Tbook.createbook(title, publisher, author: string; page: integer; date: string);
begin
  self.title:= title;
  self.publisher:= publisher;
  self.author:= author;
  self.page:= page;
  self.date:= date;
end;

constructor Tmagazine.createmagazine(title, publisher: string; page, number: integer; date: string);
begin
  self.title:= title;
  self.publisher:= publisher;
  self.number:= number;
  self.page:= page;
  self.date:= date;
end;

procedure addtolist(aprint: Tprint);
begin
  if aprint is Tbook then begin
    mylist.Add(aprint as Tbook);
  end
  else if aprint is Tmagazine then begin
    mylist.Add(aprint as Tmagazine);
  end;
end;

function comparebytitle(item1, item2: pointer):integer;
var
  print1, print2: Tprint;
begin
  print1 := Tprint(item1);
  print2 := Tprint(item2);
  result:= 0;
  if print1.title> print2.title then result:=1
  else if print1.title< print2.title then result:=-1;
end;

function comparebypage(item1, item2:pointer): integer;
var
  print1: Tprint;
  print2: Tprint;
begin
  print1:= Tprint(item1);
  print2:= Tprint(item2);
  result:= 0;
  if print1.page>print2.page then result:= 1
  else if print2.page<print2.page then result:= -1;
end;

procedure display(memo: Tmemo);
var i: integer;
begin
  memo.Lines.Clear;
  for i := 0 to mylist.count-1 do begin
    memo.Lines.add(inttostr(i+1)+'. This is a ' + Tprint(mylist[i]).ClassName);
    memo.Lines.Add('Title: ' + Tprint(mylist[i]).title);
    memo.Lines.Add('Publisher: ' + Tprint(mylist[i]).publisher);
    memo.Lines.Add('Amount of pages: ' + inttostr(Tprint(mylist[i]).page));
    if Tprint(mylist[i]) is Tbook then begin
    memo.Lines.Add('Author: ' + Tbook(mylist[i]).author);
    memo.lines.Add('Date of 1st publication: ' + Tbook(mylist[i]).date);
    end
    else if Tprint(mylist[i]) is Tmagazine then begin
    memo.Lines.Add('Issue number: ' + inttostr(Tmagazine(mylist[i]).number));
    memo.lines.Add('Date: ' + Tmagazine(mylist[i]).date);
    end;
    memo.Lines.Add('----------' + #13#10);
  end;
end;

end.
