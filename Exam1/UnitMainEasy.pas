unit UnitMainEasy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unitclasseasy, StdCtrls, math;

type
  TForm3 = class(TForm)
    ButtonCalculate: TButton;
    edit: TEdit;
    Memo: TMemo;
    buttonClose: TButton;
    procedure ButtonCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ButtonCalculateClick(Sender: TObject);
var epsilon: extended;
begin
  try
    epsilon:= strtofloat(edit.text);
    if (epsilon<= power(10, -3)) and (epsilon>= power(10, -19)) then begin
      display(epsilon, memo);
    end
    else showmessage('The number should between 1.0e-3 and 1.0e-19');
  except
    on Econverterror do begin
      showmessage('The number you input is not a real number');
    end;
  end;
end;

end.
