unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitCode;

type
  TForm1 = class(TForm)
    part1Groupbox: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    part1ButtonPlanets: TButton;
    part1Label1: TLabel;
    part1Label2: TLabel;
    part1Label3: TLabel;
    part1ButtonAliens: TButton;
    part1Label4: TLabel;
    part1Label5: TLabel;
    part1Label6: TLabel;
    part2ButtonSet: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    part2Edit1: TEdit;
    part2Edit2: TEdit;
    part2Edit3: TEdit;
    Part3ButtonInfo: TButton;
    part3Memo: TMemo;
    buttonClose: TButton;
    procedure part1ButtonPlanetsClick(Sender: TObject);
    procedure part1ButtonAliensClick(Sender: TObject);
    procedure part2ButtonSetClick(Sender: TObject);
    procedure buttonCloseClick(Sender: TObject);
    procedure Part3ButtonInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  quonos: TPlanet;
  Pandora: TPlanet;
  Vulcan: TPlanet;
  aKlingon:TKlingon;
  aNavi:TNavi;
  aVulcan:TVulcan;


implementation

{$R *.dfm}

procedure TForm1.buttonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.part1ButtonPlanetsClick(Sender: TObject);
begin
  quonos := TPlanet.create;
  pandora := Tplanet.create;
  vulcan := Tplanet.create;
  quonos.setname('Qu''onos');
  pandora.setname('pandora');
  vulcan.setname('vulcan');
  quonos.setairtype('E-type');
  pandora.setairtype('F-type');
  vulcan.setairtype('E-type');
  part1label1.Caption:= part1label1.Caption + ' exists!';
  part1Label2.Caption:= part1label2.Caption + ' exists!';
  part1Label3.Caption:= part1label3.Caption + ' exists!';
end;

procedure TForm1.part1ButtonAliensClick(Sender: TObject);
begin
  aKlingon := TKlingon.create;
  aNavi:= TNavi.create;
  aVulcan:= TVulcan.create;
  aKlingon.homeplanet := Quonos;
  aNavi.homeplanet:= Pandora;
  aVulcan.homeplanet:= Vulcan;
  part1label4.Caption:= part1label4.Caption + ' born!';
  part1label5.Caption:= part1label5.Caption + ' born!';
  part1label6.Caption:= part1label6.Caption + ' born!';
end;

procedure TForm1.part2ButtonSetClick(Sender: TObject);
begin
  if length(part2Edit1.Text)>4 then aKlingon.setname(part2Edit1.text)
  else aKlingon.setname('');
  if length(part2Edit2.Text)>4 then aNavi.setname(part2Edit2.text)
  else aNavi.setname('');
  if length(part2Edit3.Text)>4 then aVulcan.setname(part2Edit3.text)
  else aVulcan.setname('');
end;

procedure TForm1.Part3ButtonInfoClick(Sender: TObject);
begin
  part3memo.Lines.Clear;
  part3memo.Lines.Add('The Klingon');
  part3memo.Lines.Add('Home Planet: '+ aklingon.homeplanet.getname);
  part3memo.lines.add('Breathes: '+ aklingon.homeplanet.getairtype);
  part3memo.lines.add('Name: '+ aKlingon.getname);
  part3memo.lines.add('says: '+ aKlingon.says);

end;

end.
