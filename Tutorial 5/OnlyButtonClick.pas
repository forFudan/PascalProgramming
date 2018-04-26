unit OnlyButtonClick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, ExtCtrls, OnlyCalculations, OnlyOutput;

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
    part2shape1: TShape;
    part2Edit1: TEdit;
    part2Button2: TButton;
    part2Button3: TButton;
    part2Label1: TLabel;
    part2Label2: TLabel;
    part2Label3: TLabel;
    procedure part1button1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure part2Button2Click(Sender: TObject);
    procedure part2Button3Click(Sender: TObject);

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
var a,b,c,d, x1,x2:real;
begin
  a:=strtofloat(part1edit1.Text);
  b:=strtofloat(part1edit2.text);
  c:=strtofloat(part1edit3.Text);
  d:= caldiscriminant(a,b,c);
  outputpart1(a,b,c,d,x1,x2,part1memo1);
end;

procedure TForm1.part2Button2Click(Sender: TObject);
var clr, r,g,b: integer;
begin
  clr:= strtoint(part2edit1.Text);
  part2shape1.Brush.Color:= Tcolor(clr);
end;

procedure TForm1.part2Button3Click(Sender: TObject);
var clr, r,g,b: integer;
begin
  clr:= strtoint(part2edit1.Text);
  calculatergb(clr,r,g,b);
  outputpart2(r,g,b,part2label1,part2label2,part2label3);
end;

end.
