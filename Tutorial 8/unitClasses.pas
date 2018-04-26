unit unitClasses;

interface
uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  Tperson = class
    private
    name: string;
    gender: string;
    age: integer;
    public
    procedure setname(a:string);
    procedure setgender(a:string);
    procedure setage(a:string);
    function getname:string;
    function getgender:string;
    function getage:string;
    function talk: string;
  end;
  TTeacher = class(Tperson)
    private
    salary: real;
    public
    function talk:string; virtual;
    procedure setsalary(a:string);
    function getsalary: string;
  end;
  TStudent = class(Tperson)
    private
    sNumber: real;
    public
    function talk:string; virtual;
    procedure setsNumber(a:string);
    function getsnumber: string;
  end;

var
  aperson: Tperson;
  aTeacher: TTeacher;
  aStudent: TStudent;

implementation
function Tperson.talk:string;
begin
  result:= 'I am an ordinary person!';
end;

function TTeacher.talk:string;
begin
  result:= 'I am a respected teacher!'
end;

function TStudent.talk;
begin
  result:= 'I am working hard on my programming skills!';
end;

function Tperson.getname:string;
begin
  result:= name;
end;

function Tperson.getgender:string;
begin
  result:= gender;
end;

function Tperson.getage:string;
begin
  result:= inttostr(age);
end;

function Tteacher.getsalary:string;
begin
  result:= floattostr(salary);
end;

function Tstudent.getsnumber:string;
begin
  result:= floattostr(snumber);
end;


procedure Tperson.setname(a:string);
begin
  name := a;
end;

procedure Tperson.setgender(a:string);
begin
  gender := a;
end;

procedure Tperson.setage(a:string);
begin
  age := strtoint(a);
end;

procedure TTeacher.setsalary(a:string);
begin
  salary := strtoint(a);
end;

procedure TStudent.setsnumber(a:string);
begin
  snumber := strtoint (a);
end;

end.
