unit ProblemSet3Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformMain = class(TForm)
    Part1groupbox: TGroupBox;
    Part3groupbox: TGroupBox;
    Part4groupbox: TGroupBox;
    mainbuttonclose: TButton;
    part1edit1: TEdit;
    part1label1: TLabel;
    part1edit2: TEdit;
    part1label2: TLabel;
    part3subgroup: TGroupBox;
    part3checkbox1: TCheckBox;
    part3checkbox2: TCheckBox;
    part4label1: TLabel;
    part4label2: TLabel;
    part4label3: TLabel;
    part4label4: TLabel;
    part4edit1: TEdit;
    part4edit2: TEdit;
    part4edit3: TEdit;
    part4button1: TButton;
    part4label5: TLabel;
    part4memo1: TMemo;
    part3checkbox3: TCheckBox;
    part3checkbox4: TCheckBox;
    part3checkbox5: TCheckBox;
    part3checkbox6: TCheckBox;
    part2groupbox: TGroupBox;
    part2checkbox1: TCheckBox;
    part2label1: TLabel;
    procedure mainbuttoncloseClick(Sender: TObject);
    procedure part1edit1Change(Sender: TObject);
    procedure part1edit2Change(Sender: TObject);
    procedure part2checkbox1Click(Sender: TObject);
    procedure Part3groupboxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure part4button1Click(Sender: TObject);
    procedure part2groupboxClick(Sender: TObject);
    {procedure part3checkbox1Click(Sender: TObject);}
    {procedure part3checkbox2Click(Sender: TObject);}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;
  {part3variable1, part3variable2 : boolean;}

implementation
{$R *.dfm}

procedure TformMain.part2checkbox1Click(Sender: TObject);
var
  number0, number1, number2, number3, number4, number5: integer;
begin
//  part2label1.Visible := true;
//  number0 := ord(part2checkbox1.Checked);
//  number1 := (ord('t')-ord('f'))*number0+ord('f');{number1 := (116-102)*number0+102;}
//  number2 := (ord('r')-ord('a'))*number0+ord('a');{number2 := (114-97)*number0+97;}
//  number3 := (ord('u')-ord('l'))*number0+ord('l');{number3 := (117-108)*number0+108;}
//  number4 := (ord('e')-ord('s'))*number0+ord('s');{number4 := (101-115)*number0+115;}
//  number5 := (ord(' ')-ord('e'))*number0+ord('e');{number5 := (0-101)*number0+101;}
//  part2label1.Caption := 'C is ' + chr(number1)+chr(number2)+chr(number3)+chr(number4)+chr(number5);
  part2label1.Visible := true;
  part2label1.Caption := 'C is ' + lowercase(booltostr(part2checkbox1.checked, true));
end;

procedure TformMain.part2groupboxClick(Sender: TObject);
begin

end;

{/Following for original part2/
begin
  if part2checkbox1.Checked = True then
  begin
    part2label1.caption := 'C is true'
  end
  else
  begin
    part2label1.Caption := 'C is false'
  end;
end;}

procedure TformMain.Part3groupboxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  part3variable1, part3variable2 : boolean;
begin
  part3variable1 := part3checkbox1.Checked;
  part3variable2 := part3checkbox2.Checked;
  part3checkbox3.Checked := not part3variable1;
  part3checkbox4.Checked := part3variable1 and part3variable2;
  part3checkbox5.Checked := part3variable1 or part3variable2;
  part3checkbox6.Checked := part3variable1 xor part3variable2;
end;

procedure TformMain.part4button1Click(Sender: TObject);
var
  part4variablea, part4variableb, part4variablec, part4variabled, part4variablex1, part4variablex2 : real;
  part4complex1, part4complex2 : string;
begin
  part4memo1.Lines.Clear;
  part4variablea := strtofloat(part4edit1.Text);
  part4variableb := strtofloat(part4edit2.Text);
  part4variablec := strtofloat(part4edit3.Text);
  if part4variablea=0 then
  application.MessageBox('a must be nonzero', 'Warning', MB_OK)
  else
  begin
    part4variabled := part4variableb*part4variableb-4*part4variablea*part4variablec;
    part4memo1.lines.add('the discriminant D= ' + floattostr(part4variabled));
    if part4variabled>0 then
    begin
      part4variablex1 := (-part4variableb+sqrt(part4variabled))/(2*part4variablea);
      part4variablex2 := (-part4variableb-sqrt(part4variabled))/(2*part4variablea);
      part4memo1.lines.add('');
      part4memo1.lines.add('there are two real solutions');
      part4memo1.lines.add('');
      part4memo1.lines.add('Solutions');
      part4memo1.lines.add('x1= ' + floattostr(part4variablex1));
      part4memo1.lines.add('x2= ' + floattostr(part4variablex2));
    end
    else if part4variabled=0 then
    begin
      part4variablex1 := -part4variableb/(2*part4variablea);
      part4memo1.lines.add('');
      part4memo1.lines.add('two real solutions are same');
      part4memo1.lines.add('');
      part4memo1.lines.add('Solutions');
      part4memo1.lines.add('x1=x2= ' + floattostr(part4variablex1));
    end
    else
    begin
      part4complex1 := floattostr(-part4variableb/(2*part4variablea))+ '+'
       + floattostr(sqrt(-part4variabled)/(2*part4variablea)) + 'i';
      part4complex2 := floattostr(-part4variableb/(2*part4variablea))+ '-'
       + floattostr(sqrt(-part4variabled)/(2*part4variablea)) + 'i';
      part4memo1.lines.add('');
      part4memo1.lines.add('there are two solutions of complex numbers');
      part4memo1.lines.add('');
      part4memo1.lines.add('Solutions');
      part4memo1.lines.add('x1= ' + part4complex1);
      part4memo1.lines.add('x2= ' + part4complex2);
    end;
  end;
end;

{/Following for original part3/
procedure TformMain.part3checkbox1Click(Sender: TObject);
begin
  part3variable1 := part3checkbox1.Checked;
  part3variable2 := part3checkbox2.Checked;
  part3checkbox3.Checked := not part3variable1;
  part3checkbox4.Checked := part3variable1 and part3variable2;
  part3checkbox5.Checked := part3variable1 or part3variable2;
  part3checkbox6.Checked := part3variable1 xor part3variable2;
end;

procedure TformMain.part3checkbox2Click(Sender: TObject);
begin
  part3variable1 := part3checkbox1.Checked;
  part3variable2 := part3checkbox2.Checked;
  part3checkbox3.Checked := not part3variable1;
  part3checkbox4.Checked := part3variable1 and part3variable2;
  part3checkbox5.Checked := part3variable1 or part3variable2;
  part3checkbox6.Checked := part3variable1 xor part3variable2;
end;}

procedure TformMain.mainbuttoncloseClick(Sender: TObject);
begin
  formmain.Close;
end;

procedure TformMain.part1edit1Change(Sender: TObject);
begin
  part1label2.caption := '= ' + part1edit1.Text + ' and ' + part1edit2.text
end;

procedure TformMain.part1edit2Change(Sender: TObject);
begin
  part1label2.caption := '= ' + part1edit1.Text + ' and ' + part1edit2.text
end;

end.
