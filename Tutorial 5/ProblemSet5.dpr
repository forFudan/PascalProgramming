program ProblemSet5;

uses
  Forms,
  OnlyButtonClick in 'OnlyButtonClick.pas' {Form1},
  OnlyCalculations in 'OnlyCalculations.pas',
  OnlyOutput in 'OnlyOutput.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
