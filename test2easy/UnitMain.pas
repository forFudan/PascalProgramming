unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unitpart1,math ;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
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
begin
  try
    if (strtofloat(edit1.Text)< power(10,-3)) and (strtofloat(edit1.Text)> power(10,-9)) then
    display(strtofloat(edit1.Text),memo1)
    else showmessage('The number should between 10-3 and 10-9.')
  except
    on Econverterror do showmessage('It is not a real number.');
  end;

end;

end.
