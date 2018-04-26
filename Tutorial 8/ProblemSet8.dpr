program ProblemSet8;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  unitClasses in 'unitClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
