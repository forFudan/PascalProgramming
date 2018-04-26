unit UnitMainmedium;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitClassmedium;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button4: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  addtolist(Tmovie.createmovie(strtoint(Edit1.text),strtoint(Edit2.Text), edit3.Text, edit4.Text, edit5.text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  addtolist(Tshow.createshow(strtoint(Edit6.text), strtoint(Edit7.Text), edit8.Text, edit9.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  mylist.Sort(comparechannel);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  printlist(memo1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mylist:= Tlist.Create;
end;

end.
