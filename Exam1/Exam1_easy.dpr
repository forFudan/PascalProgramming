program Exam1_easy;

uses
  Forms,
  UnitMainEasy in 'UnitMainEasy.pas' {Form3},
  UnitclassEasy in 'UnitclassEasy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
