program ProblemSet13;

uses
  Forms,
  Main in 'Main.pas' {Mainform},
  Part1Calculate in 'Part1Calculate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainform, Mainform);
  Application.Run;
end.
