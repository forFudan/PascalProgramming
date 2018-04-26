unit UnitMainhard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unitclasshard;

type
  TForm2 = class(TForm)
    Edit: TEdit;
    Button: TButton;
    Memo: TMemo;
    procedure ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ButtonClick(Sender: TObject);
var n:integer;
begin
  try
    n:= strtoint(edit.Text);
    if (n>=0) and (n<=128) then begin
      showanswer(n, memo);
    end
    else begin
      showmessage('The number should between 0 and 128.');
    end;
  except
    on Econverterror do begin
      showmessage('The number is not a valid integer.')
    end;
  end;
end;

end.
