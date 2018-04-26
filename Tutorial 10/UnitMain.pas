unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unitcal;

type
  TForm1 = class(TForm)
    Part1ButtonCal: TButton;
    Part1Memo: TMemo;
    part1ButtonSave: TButton;
    Part1ButtonShow: TButton;
    Part2ButtonCal: TButton;
    Part2EditInput: TEdit;
    part2EditPi: TEdit;
    Part2ButtonSave: TButton;
    Part2buttonShow: TButton;
    Part2Memo: TMemo;
    procedure Part1ButtonCalClick(Sender: TObject);
    procedure Part2ButtonCalClick(Sender: TObject);
    procedure part1ButtonSaveClick(Sender: TObject);
    procedure Part1ButtonShowClick(Sender: TObject);
    procedure Part2ButtonSaveClick(Sender: TObject);
    procedure Part2buttonShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.part1ButtonSaveClick(Sender: TObject);
begin
  part1memo.Clear;
  part1memo.Lines.Add('the length of the steps is a constant - you can change only in the code');
  part1memo.Lines.Add('after '+ inttostr(m) + ' steps');
  part1memo.Lines.Add('pi = ' + floattostrf(calpistatic(m),ffgeneral,23,21));
end;

procedure TForm1.Part1ButtonShowClick(Sender: TObject);
var
  i: integer;
begin
  part2memo.Clear;
  part2memo.Lines.Add('these are the static arrays');
  for i := 0 to m do begin
  part2memo.Lines.Add('a['+ inttostr(i)+ ']= '+ floattostr(ast[i])+
                      '  b[' + inttostr(i) + ']= ' + floattostr(bst[i]));
  part2memo.Lines.Add('t['+ inttostr(i)+ ']= '+ floattostr(tst[i])+
                      '  p[' + inttostr(i) + ']= ' + floattostr(pst[i]));
  end;
end;

procedure TForm1.Part2ButtonCalClick(Sender: TObject);
var
  m: integer;
begin
  try
    m:= strtoint(part2EditInput.text);
    part2EditPi.Text:=floattostrf(calpi(m),ffgeneral, 23, 21);
  except
    on Econverterror do begin
      showmessage('wrong input');
    end;
  end;
end;

procedure TForm1.Part2ButtonSaveClick(Sender: TObject);
var
  m: integer;
begin
  try
    m:= strtoint(part2editinput.Text);
    part1memo.Clear;
    part1memo.Lines.Add('the length of the steps is a constant - you can change only in the code');
    part2EditPi.Text:=floattostrf(calpidynamic(m),ffgeneral, 23, 21);
  except
    on Econverterror do begin
      showmessage('wrong input');
    end;
  end;
end;

procedure TForm1.Part2buttonShowClick(Sender: TObject);
var
  i: integer;
begin
  part2memo.Clear;
  part2memo.Lines.Add('these are the static arrays');
  for i := 0 to high(ady) do begin
  part2memo.Lines.Add('a['+ inttostr(i)+ ']= '+ floattostr(ady[i])+
                      '  b[' + inttostr(i) + ']= ' + floattostr(bdy[i]));
  part2memo.Lines.Add('t['+ inttostr(i)+ ']= '+ floattostr(tdy[i])+
                      '  p[' + inttostr(i) + ']= ' + floattostr(pdy[i]));
  end;
end;

procedure TForm1.Part1ButtonCalClick(Sender: TObject);
begin
  part1memo.Clear;
  part1memo.Lines.Add('the length of the steps is aconstant - you can change only in the code');
  part1memo.Lines.Add('after '+ inttostr(m) + ' steps');
  part1memo.Lines.Add('pi = ' + floattostrf(calpi(m),ffgeneral,23,21));
end;

end.
