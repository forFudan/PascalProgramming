unit unitClasses;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TPerson = Class(Tobject)
    name : String;
    son: TPerson;
    daughter: TPerson;
    public
    function talk: string;
  End;

var
  aperson : Tperson;
  bperson : Tperson;

implementation

function Tperson.talk: string;
begin
  if ((son = nil) and (daughter = nil)) then begin
  // 00 (No son or daughter.)
    result:= 'My name is ' + name + '.';
  end
  else if ((aperson.son = nil) and (aperson.daughter <> nil)) then begin
  // 01 (No son but daughter.)
    if ((daughter.son = nil) and (daughter.daughter = nil)) then begin
      result:= 'My name is ' + name + '. My daughter is ' + daughter.name + '.';
    end;
    if ((daughter.son = nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My daughter is ' + daughter.name +
            '. Her daughter is ' + daughter.daughter.name + '.';
    end;
    if ((daughter.son <> nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My daughter is ' + daughter.name +
            '. Her son is ' + Aperson.daughter.son.name + '.';
    end;
    if ((son <> nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
  end
  else if ((son <> nil) and (daughter = nil)) then begin
  // 10 (No daughter but son.)
    if ((son.son = nil) and (son.daughter = nil)) then begin
      result:= 'My name is ' + name + '. My son is ' + son.name + '.';
    end;
    if ((son.son = nil) and (son.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His daughter is ' + son.daughter.name + '.';
    end;
    if ((son.son <> nil) and (son.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name + '.';
    end;
    if ((son.son <> nil) and (son.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name + '. His daughter is ' +
            son.daughter.name + '.';
    end;
  end
  else if ((son <> nil) and (daughter <> nil)) then begin
  //  One son and one daughter.
    // 0000
    if ((son.son = nil) and (son.daughter = nil)
       and (daughter.son = nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. My daughter is ' + daughter.name + '.';
    end;
    // 1000
    if ((son.son <> nil) and (son.daughter = nil)
       and (daughter.son = nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name + '. My daughter is ' + daughter.name +
            '.';
    end;
    // 0100
    if ((son.son = nil) and (son.daughter <> nil)
       and (daughter.son = nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '.';
    end;
    // 0010
    if ((son.son = nil) and (son.daughter = nil)
       and (daughter.son <> nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '.';
    end;
    // 0001
    if ((son.son = nil) and (son.daughter = nil)
       and (daughter.son = nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. My daughter is ' + daughter.name +
            '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 1100
    if ((son.son <> nil) and (son.daughter <> nil)
       and (daughter.son = nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name + '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '.';
    end;
    // 1010
    if ((son.son <> nil) and (son.daughter = nil)
       and (daughter.son <> nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name +
            '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name +'.';
    end;
    // 1001
    if ((son.son <> nil) and (son.daughter = nil)
       and (daughter.son = nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name +
            '. My daughter is ' + daughter.name +
            '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 0110
    if ((son.son = nil) and (son.daughter <> nil)
       and (daughter.son <> nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
             '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '.';
    end;
    // 0101
    if ((son.son = nil) and (son.daughter <> nil)
       and (daughter.son = nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
           '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 0011
    if ((son.son = nil) and (son.daughter = nil)
       and (daughter.son <> nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
             '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 1110
    if ((son.son <> nil) and (son.daughter <> nil)
       and (daughter.son <> nil) and (daughter.daughter = nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name + '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name +  '.';
    end;
    // 1101
    if ((son.son <> nil) and (son.daughter <> nil)
       and (daughter.son = nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + Aperson.son.name +
            '. His son is ' + son.son.name + '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 1011
    if ((son.son <> nil) and (son.daughter = nil)
       and (daughter.son <> nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name +
            '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 0111
    if ((son.son = nil) and (son.daughter <> nil)
       and (daughter.son <> nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + Aperson.son.name +
             '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
    // 1111
    if ((son.son <> nil) and (son.daughter <> nil)
       and (daughter.son <> nil) and (daughter.daughter <> nil)) then begin
    result:= 'My name is ' + name + '. My son is ' + son.name +
            '. His son is ' + son.son.name + '. His daughter is ' +
            son.daughter.name + '. My daughter is ' + daughter.name +
            '. Her son is ' + daughter.son.name + '. Her daughter is ' +
            daughter.daughter.name + '.';
    end;
  end;
end;

end.
