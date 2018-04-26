unit UnitClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

Type
  Tlaptime = class
    driver: string;
    time: string;
  public
    constructor create(driver: string; time: string);
  end;

  Tarray = array of string;

procedure addDriver(name:string);
procedure addTime(ltime:TLaptime);

var
  qualifying : Tlist;
  drivers: Tarray;

implementation

constructor Tlaptime.create(driver: string; time: string);
begin
  self.driver:= driver;
  self.time:= time;
end;

procedure addDriver(name:string);
begin
  setlength(drivers, length(drivers)+1);
  drivers[length(drivers)-1]:= name;
end;

procedure addTime(ltime:Tlaptime);
var
  i: integer;
begin
  i:= 0;
  if qualifying.Count>0 then begin
    while (i<qualifying.Count) and (TLaptime(qualifying[i]).time < ltime.time)
    do inc(i);
  end;
  qualifying.Insert(i,ltime);
end;



end.
