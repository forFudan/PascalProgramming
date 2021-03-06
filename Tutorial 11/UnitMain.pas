unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, UnitCal;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    buttonClose: TButton;
    part1EditNum1: TEdit;
    part1label1: TLabel;
    part1EditNum2: TEdit;
    part1Label2: TLabel;
    part1Calulate: TButton;
    part2Label1: TLabel;
    part2Label2: TLabel;
    part2Editx: TEdit;
    part2Editn: TEdit;
    part2ButtonCalculate: TButton;
    part2Memo: TMemo;
    part3Memo: TMemo;
    part3EditSentence: TEdit;
    part3ButtonSentence: TButton;
    part3LabelFirst: TLabel;
    part3EditFirst: TEdit;
    part3LabelLast: TLabel;
    part3EditLast: TEdit;
    Part3ButtonPartial: TButton;
    part3EditPartial: TEdit;
    procedure part1CalulateClick(Sender: TObject);
    procedure part2ButtonCalculateClick(Sender: TObject);
    procedure part3ButtonSentenceClick(Sender: TObject);
    procedure Part3ButtonPartialClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  wordarray = array of string;

var
  Form1: TForm1;
  word: wordarray;

implementation

{$R *.dfm}

procedure TForm1.part1CalulateClick(Sender: TObject);
var
  num1, num2, answer: real;
begin
  try
    num1:= strtofloat(part1Editnum1.Text);
    num2:= strtofloat(part1EditNum2.text);
    answer:= num1/num2;
    part1Label2.Caption:= floattostr(answer);
  except
    on EconvertError do begin
      showmessage('You should input numbers!');
    end;
    on EzeroDivide do begin
      showmessage('The second number should not be zero!');
    end;
  end;
end;

procedure TForm1.part2ButtonCalculateClick(Sender: TObject);
var
  x: real; n:integer;
begin
  try
    x:= strtofloat(part2Editx.Text);
    n:= strtoint(part2Editn.Text);
    part2memo.Clear;
    part2memo.Lines.Add('sin(x)= ' + floattostr(sin(x)));
    part2memo.Lines.Add('approximatesin(x)= ' + floattostr(approximatesin(x, n)));
    part2memo.Lines.Add('error= ' + floattostr(sin(x)-approximatesin(x,n)));
  except
  on EconvertError do begin
    showmessage('x should be real and n should be integer');
  end;
  on E: Exception do begin
    ShowMessage(E.ClassName + ' error raised, with message: ' + E.Message);
  end;
  end;
end;

procedure TForm1.part3ButtonSentenceClick(Sender: TObject);
var
  i, line: integer; sentence: string;
begin
  line:= part3memo.Lines.Count;
  sentence:= '';
  setlength(word, line);
  for i := 0 to line - 1 do begin
    word[i]:= part3memo.Lines[i];
    sentence:= sentence + word[i] +' ';
  end;
  part3editsentence.Text:= sentence;
end;

procedure TForm1.Part3ButtonPartialClick(Sender: TObject);
var
  i, first, last: integer;
  sentence: string;
begin
  try
    first:= strtoint(part3editfirst.Text)-1;
    last:= strtoint(part3editlast.Text)-1;
    sentence:= '';
    if (first>=0) and (last<= high(word)) then begin
      for i := first to last do begin
        sentence:= sentence + part3memo.Lines[i]+' ';
      end;
      part3editpartial.Text:= sentence;
    end
    else begin
      showmessage('Please input right line numbers');
    end;
  except
    on EconvertError do begin
      showmessage('Please input integers!');
    end;
    on E: Exception do begin
      showmessage(E.Message);
    end;
  end;
end;

end.
