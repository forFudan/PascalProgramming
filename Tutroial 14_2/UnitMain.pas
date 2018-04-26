unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitClass;

type
  TForm1 = class(TForm)
    Editdriver: TEdit;
    buttondriver: TButton;
    ListBox: TListBox;
    Editltime: TEdit;
    Buttonltime: TButton;
    Memo: TMemo;
    buttonrefresh: TButton;
    procedure buttondriverClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonltimeClick(Sender: TObject);
    procedure buttonrefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.buttondriverClick(Sender: TObject);
begin
  addDriver(editdriver.Text);
  listbox.additem(editdriver.Text, nil);
end;

procedure TForm1.ButtonltimeClick(Sender: TObject);
begin
  addtime(Tlaptime.create(listbox.items[listbox.ItemIndex],editltime.text));
  buttonrefreshclick(sender);
end;

procedure TForm1.buttonrefreshClick(Sender: TObject);
var
  i:integer;
begin
  memo.Clear;
  for i := 0 to qualifying.count - 1 do begin
    memo.Lines.Add(inttostr(i+1)+'. ' + Tlaptime(qualifying[i]).driver + #9 +
                  Tlaptime(qualifying[i]).time);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  qualifying:= Tlist.create;
end;

end.
