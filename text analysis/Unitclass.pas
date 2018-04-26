unit Unitclass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  Tanswer = array of array of integer;

procedure findanswer(inputstring:string);

var
  answer: Tanswer;

implementation

procedure findanswer(inputstring:string);
var
  k, i, j: Integer;
begin
  setlength(answer, 1);
  setlength(answer[0],1);
  i:= 0;
  j:= 0;
  answer[0,0]:= 0;
  k :=1;
  while k < length(inputstring)-2 do begin
    if inputstring[k]='.' then begin
      setlength(answer, length(answer)+1);
      i:= i+1;
      j:= 0;
      setlength(answer[i],1);
      k := k+2;
    end
    else if inputstring[k]=' ' then begin
      setlength(answer[i],length(answer[i])+1);
      j:= j+1;
      answer[i, j]:=0;
      inc(k)
    end
    else if (inputstring[k]=',') or (inputstring[k]=':') then begin
      inc(k)
    end
    else begin
      answer[i, j]:= answer[i, j]+1;
      inc(k)
    end;
  end;
end;



end.
