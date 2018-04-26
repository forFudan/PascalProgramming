program set14a;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Unitclass in 'Unitclass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
