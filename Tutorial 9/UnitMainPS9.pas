unit UnitMainPS9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitCalcPS9;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    input: TEdit;
    threesteps: TButton;
    foursteps: TButton;
    MemoOutput: TMemo;
    buttonclose: TButton;
    procedure buttoncloseClick(Sender: TObject);
    procedure threestepsClick(Sender: TObject);
    procedure output(x:real; n:integer);
    procedure fourstepsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.output(x:real; n:integer);
var
  number: string;
  i:integer;
begin
  if n=3 then number:= 'three'
  else number:= 'four';
  memooutput.Lines.Clear;
  MemoOutput.lines.Add('x = '+ floattostr(x));
  MemoOutput.Lines.add('');
  memooutput.Lines.Add('In '+ number +' steps, f(x) = '+ floattostr(CalcFx(x,n)));
  Memooutput.Lines.Add('');
  memooutput.Lines.Add('And the coeficients are:');
  memooutput.Lines.Add('');
  memooutput.Lines.Add('A(0)='+floattostr(CalcAn(0)));
  for i := 1 to n do begin
    memooutput.Lines.Add('A('+inttostr(i)+')=' + floattostr(CalcAn(i)));
    memooutput.Lines.Add('B('+inttostr(i)+')=' + floattostr(CalcBn(i)));
  end;
end;

procedure TForm1.buttoncloseClick(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.threestepsClick(Sender: TObject);
var
  x: real; n:integer;
begin
  try
  n:= 3;
  x:= strtofloat(input.Text);
  output(x, n);
  except
  on Econverterror do begin
    showmessage('The number is not valid!');
  end;
  end;
end;

procedure TForm1.fourstepsClick(Sender: TObject);
var
  x: real; n:integer;
begin
  try
  n:= 4;
  x:= strtofloat(input.Text);
  output(x, n);
  except
  on Econverterror do begin
    showmessage('The number is not valid!');
  end;
  end;
end;

end.
