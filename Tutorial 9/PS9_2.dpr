program PS9_2;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  UnitCode in 'UnitCode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
