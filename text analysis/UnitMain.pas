unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unitclass;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
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
var
  i: Integer;
  j: Integer;
begin
  memo2.lines.Clear;
  findanswer(trim(memo1.Text));
  memo2.Lines.Add('The text contains '+inttostr(length(answer))+ ' sentences.');
  for i := 0 to length(answer)-1 do begin
    memo2.text:= memo2.Text+ 'Sentence ' + inttostr(i+1) + ' contains ' +
                inttostr(length(answer[i]))+ ' words of length ';
      for j := 0 to length(answer[i]) - 2 do begin
        memo2.Text:= memo2.Text+ inttostr(answer[i,j]) + ', ';
      end;
        memo2.Text:= memo2.Text+ inttostr(answer[i, length(answer[i])-1])+ '.' + #13#10;
  end;

end;

end.
