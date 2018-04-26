unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, unitClasses;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Part1winter: TButton;
    Part1spring: TButton;
    Part1Summer: TButton;
    Part1Autumn: TButton;
    GroupBox3: TGroupBox;
    Part1Radiogroup: TRadioGroup;
    Part1Memo: TMemo;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Part2createPerson: TButton;
    Part2Createchildren: TButton;
    Part2CreateGrandchildren: TButton;
    GroupBox6: TGroupBox;
    Part2Persontalks: TButton;
    Part2Everybodytalks: TButton;
    Output: TGroupBox;
    Part2Memo: TMemo;
    Closebutton: TButton;
    procedure Click(Sender: TObject);
    procedure ClosebuttonClick(Sender: TObject);
    procedure Part2createPersonClick(Sender: TObject);
    procedure Part2PersontalksClick(Sender: TObject);
    procedure Part2CreatechildrenClick(Sender: TObject);
    procedure Part2CreateGrandchildrenClick(Sender: TObject);
    procedure Part2EverybodytalksClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.Click(Sender: TObject);
var
  nameclass, explainname, componentname, caption: string;
  itemnumber: integer;
begin
    part1memo.Lines.Clear;
    itemnumber:= part1radiogroup.ItemIndex;
    nameclass:= sender.ClassName;
    if sender is Tbutton then begin
      explainname:='button';
      componentname:= (sender as Tbutton).Name;
      caption:= (sender as TButton).Caption;
    end;
    if sender is TRadiogroup then begin
      explainname:='radiogroup';
      componentname:= (sender as TRadiogroup).Name;
      caption:= (sender as TRadiogroup).Caption;
    end;
    part1memo.Lines.Add('The sender is an object of the class '+nameclass);
    part1memo.Lines.Add('The '+explainname+' has the name '+componentname);
    part1memo.Lines.Add('The '+explainname+' has the caption '+caption);
    part1memo.Lines.Add('The '+explainname+chr(39)+'s item number is '+ inttostr(itemnumber));
end;

procedure TForm1.ClosebuttonClick(Sender: TObject);
begin
  form1.close;
end;

procedure TForm1.Part2CreatechildrenClick(Sender: TObject);
begin
  aperson.son := tperson.create;
  aperson.daughter := tperson.create;
  aperson.son.name := 'Jacob';
  aperson.daughter.name := 'Isabella';
end;

procedure TForm1.Part2CreateGrandchildrenClick(Sender: TObject);
begin
  aperson.son.son := tperson.Create;
  aperson.son.son.name := 'Ethan';
  aperson.son.daughter := tperson.Create;
  aperson.son.daughter.name := 'Emma';
  aperson.daughter.son := tperson.Create;
  aperson.daughter.son.name := 'Michael';
  aperson.daughter.daughter := tperson.Create;
  aperson.daughter.daughter.name := 'Olivia';
end;

procedure TForm1.Part2createPersonClick(Sender: TObject);
begin
  aperson:= Tperson.create;
  aperson.name := 'Earl';
end;

procedure TForm1.Part2EverybodytalksClick(Sender: TObject);
begin
  part2memo.Lines.Clear;
  part2memo.Lines.Add(aperson.talk);
  part2memo.Lines.Add(aperson.son.talk);
  part2memo.Lines.Add(aperson.daughter.talk);
  part2memo.Lines.Add(aperson.son.son.talk);
  part2memo.Lines.Add(aperson.son.daughter.talk);
  part2memo.Lines.Add(aperson.daughter.son.talk);
  part2memo.Lines.Add(aperson.daughter.daughter.talk);
end;

procedure TForm1.Part2PersontalksClick(Sender: TObject);
begin
  part2memo.Lines.Clear;
  part2memo.Lines.Add(aperson.talk);
end;

end.
