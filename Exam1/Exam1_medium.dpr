program Exam1_medium;

uses
  Forms,
  UnitMainmedium in 'UnitMainmedium.pas' {Form1},
  UnitClassmedium in 'UnitClassmedium.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
