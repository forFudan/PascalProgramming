unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, ExtCtrls, unitcalculations, unitio;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Part1label1: TLabel;
    part1label2: TLabel;
    part1label3: TLabel;
    part1edit1: TEdit;
    part1edit2: TEdit;
    part1edit3: TEdit;
    part1button1: TButton;
    part1memo1: TMemo;
    GroupBox2: TGroupBox;
    Button1: TButton;
    part2Label1: TLabel;
    part2Label2: TLabel;
    part2Label3: TLabel;
    part2Edit1: TEdit;
    part2Edit2: TEdit;
    part2Edit3: TEdit;
    part2Button1: TButton;
    part2Memo1: TMemo;
    procedure part1button1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure part2Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.part1button1Click(Sender: TObject);
var day, month, year: integer;
begin
  day:= strtoint(part1edit1.Text);
  month:= strtoint(part1edit2.Text);
  year:= strtoint(part1edit3.Text);
  part1memo1.lines.clear;
  printdatecorrect(day,month,year,part1memo1);
end;

procedure TForm1.part2Button1Click(Sender: TObject);
var day, month, year: integer;
begin
  day:= strtoint(part2edit1.Text);
  month:= strtoint(part2edit2.Text);
  year:= strtoint(part2edit3.Text);
  part2memo1.lines.clear;
  printdatecorrect(day,month,year,part2memo1);
  if isdatecorrect(day,month,year)=true then
    printrephrasedate(day,month,year,part2memo1);
end;

end.
