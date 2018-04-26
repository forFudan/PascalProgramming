program ProblemSet4;

uses
  Forms,
  ProblemSet4Main in 'ProblemSet4Main.pas' {formMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
