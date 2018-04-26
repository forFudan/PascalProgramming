program Exam1_hard;

uses
  Forms,
  UnitMainhard in 'UnitMainhard.pas' {Form2},
  UnitClassHard in 'UnitClassHard.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
