program ProblemSet6;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  unitCalculations in 'unitCalculations.pas',
  unitIO in 'unitIO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
