program ProblemSet3;

uses
  Forms,
  ProblemSet3Main in 'ProblemSet3Main.pas' {formMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
