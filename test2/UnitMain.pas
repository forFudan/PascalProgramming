unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unitcalculate;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Buttonbook: TButton;
    Buttonmagazine: TButton;
    Buttonsorttitle: TButton;
    Buttondisplay: TButton;
    memo: TMemo;
    buttonsortpage: TButton;
    procedure ButtonbookClick(Sender: TObject);
    procedure ButtonmagazineClick(Sender: TObject);
    procedure ButtondisplayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonsorttitleClick(Sender: TObject);
    procedure buttonsortpageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonbookClick(Sender: TObject);
begin
  try
    addtolist(Tbook.createbook(edit1.Text, edit2.Text, edit4.Text, strtoint(edit3.Text),
                            edit5.Text));
  except
    on Econverterror do begin
      showmessage('You have input a wrong format');
    end;
  end;
end;

procedure TForm1.ButtondisplayClick(Sender: TObject);
begin
  display(memo);
end;

procedure TForm1.ButtonmagazineClick(Sender: TObject);
begin
  try
    addtolist(Tmagazine.createmagazine(edit6.Text, edit7.Text, strtoint(edit8.text),
                            strtoint(edit9.Text), edit10.Text));
  except
    on Econverterror do begin
      showmessage('You have input a wrong format');
    end;
  end;
end;

procedure TForm1.buttonsortpageClick(Sender: TObject);
begin
  mylist.Sort(comparebypage);
end;

procedure TForm1.ButtonsorttitleClick(Sender: TObject);
begin
  mylist.Sort(comparebytitle);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mylist:= tlist.Create;
end;

end.
