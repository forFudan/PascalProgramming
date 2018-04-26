program ProblemSet2;

uses
  Forms,
  ProblemSet2FirstUnit in 'ProblemSet2FirstUnit.pas' {formMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
