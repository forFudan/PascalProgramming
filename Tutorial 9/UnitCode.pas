unit UnitCode;

interface

uses
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tplanet = class(TObject)
  private
    name: string;
    airType: string;
  public
    function getName: string;
    function getAirType: string;
    procedure setName(name: string);
    procedure setAirType(airType: string);
  end;

  TAlien = class(TObject)
  private
    name: string;
  public
    homePlanet: TPlanet;
    function Says: string; virtual;
    function getName: string;
    procedure setName(name: string);
  end;

  TKlingon = class(TAlien)
  public
    function Says: string; override;
  end;

  TNavi = class(TAlien)
  public
    function Says: string; override;
  end;

  TVulcan = class(TAlien)
  public
    function Says: string; override;
  end;

var
  quonos: TPlanet;
  Pandora: TPlanet;
  Vulcan: TPlanet;
  aKlingon:TKlingon;
  aNavi:TNavi;
  aVulcan:TVulcan;

implementation

function Tplanet.getName: string;
begin
  result:= name;
end;

function Tplanet.getAirtype: string;
begin
  result:= airtype;
end;

procedure Tplanet.setName(name: string);
begin
    self.name:= name;
end;

procedure Tplanet.setAirType(airType: string);
begin
    self.airtype:= airtype;
end;

procedure TAlien.setName(name: string);
begin
    self.name:= name;
end;

function TAlien.says: string;
begin
end;

function TKlingon.Says: string;
begin
  result:= 'Kap''la!';
end;

function TNavi.Says: string;
begin
  result:= 'Toruk Makto';
end;

function TVulcan.Says: string;
begin
  result:= 'Live long and prosper';
end;

function TAlien.getname:string;
begin
  result:= name;
end;


end.
