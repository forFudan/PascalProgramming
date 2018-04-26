program Project1;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  UnitPart1 in 'UnitPart1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
