program Project1;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  UnitCalculate in 'UnitCalculate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
