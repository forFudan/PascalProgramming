unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unitclass, StdCtrls;

type
  TForm1 = class(TForm)
    editName: TEdit;
    buttonAddPerson: TButton;
    ListBox: TListBox;
    ButtonAddAppointment: TButton;
    ButtonPrintAll: TButton;
    Editday: TEdit;
    Edithour: TEdit;
    Memo: TMemo;
    ButtonPrintA: TButton;
    ButtonDeletePerson: TButton;
    ButtonClear: TButton;
    buttonclose: TButton;
    procedure buttoncloseClick(Sender: TObject);
    procedure buttonAddPersonClick(Sender: TObject);
    procedure ButtonDeletePersonClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonAddAppointmentClick(Sender: TObject);
    procedure ButtonPrintAClick(Sender: TObject);
    procedure ButtonPrintAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonAddAppointmentClick(Sender: TObject);
begin
  addappointment(listbox.ItemIndex, editday.text, edithour.text);
end;

procedure TForm1.buttonAddPersonClick(Sender: TObject);
var
  name: string;
begin
  name:= editName.Text;
  addAcquaintance(name);
  listbox.Items.Add(name);
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
  emptylist;
  listbox.Clear;
end;

procedure TForm1.buttoncloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.ButtonDeletePersonClick(Sender: TObject);
begin
  deleteacquaintance(listbox.ItemIndex);
  listbox.DeleteSelected;
end;

procedure TForm1.ButtonPrintAClick(Sender: TObject);
begin
  displaywithaperson(listbox.ItemIndex, memo);
end;

procedure TForm1.ButtonPrintAllClick(Sender: TObject);
begin
  displayall(memo);
end;

end.
