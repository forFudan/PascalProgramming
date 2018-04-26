unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Part1Calculate;

type
  TMainform = class(TForm)
    Part1_Groupbox: TGroupBox;
    Part1_Label_X: TLabel;
    Part1_Edit_x: TEdit;
    Part1_Button_Builtin: TButton;
    Part1_Button_For: TButton;
    Part1_Button_Repeat: TButton;
    Part1_label_degree: TLabel;
    Part1_Edit_degree: TEdit;
    Part1_button_While: TButton;
    Part1_Memo: TMemo;
    GroupBox2: TGroupBox;
    StringGrid: TStringGrid;
    part2memo: TMemo;
    part2buttonroute: TButton;
    part2buttondistance: TButton;
    part2buttonchage: TButton;
    part2buttoncompute: TButton;
    Label3: TLabel;
    part2editlength: TEdit;
    Button9: TButton;
    procedure Part1_Button_BuiltinClick(Sender: TObject);
    procedure Part1_Button_ForClick(Sender: TObject);
    procedure Part1_Button_RepeatClick(Sender: TObject);
    procedure Part1_button_WhileClick(Sender: TObject);
    procedure StringGridClick(Sender: TObject);
    procedure part2buttondistanceClick(Sender: TObject);
    procedure part2buttonrouteClick(Sender: TObject);
    procedure part2buttoncomputeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mainform: TMainform;

implementation

{$R *.dfm}

procedure TMainform.Part1_Button_BuiltinClick(Sender: TObject);
var
  x: real;
begin
  x:= strtofloat(Part1_Edit_x.text);
  Part1_memo.Lines.add('built in cos(x) = ' + floattostrf(cos(x),fffixed, 23,21));
  Part1_memo.Lines.add('----------');
end;

procedure TMainform.Part1_Button_ForClick(Sender: TObject);
var
  x: real;
begin
  x:= strtofloat(Part1_Edit_x.text);
  numOfstepsInfor:= 16;
  Part1_memo.Lines.add('cos(x) = ' + floattostrf(ComputeWithFor(x, numOfstepsInfor),fffixed, 23,21));
  Part1_memo.Lines.add('computed with for, in ' + inttostr(numofStepsInfor) + ' steps');
  Part1_memo.Lines.add('----------');
  end;

procedure TMainform.Part1_Button_RepeatClick(Sender: TObject);
var
  x: real;
begin
  x:= strtofloat(Part1_Edit_x.text);
  Part1_memo.Lines.add('cos(x) = ' + floattostrf(ComputeWithRepeat(x, repeatstep),fffixed, 23,21));
  Part1_memo.Lines.add('computed with repeat, in ' + inttostr(repeatstep) + ' steps');
  Part1_memo.Lines.add('----------');
end;

procedure TMainform.Part1_button_WhileClick(Sender: TObject);
var
  x:real;
  degree: integer;
begin
  x:= strtofloat(Part1_Edit_x.text);
  degree:= strtoint(part1_edit_degree.Text);
  Part1_memo.Lines.add('cos(x) = ' + floattostrf(ComputeWithWhile(x, degree),fffixed, 23,21));
  Part1_memo.Lines.add('computed with while, in ' + inttostr(whilestep) + ' steps');
  Part1_memo.Lines.add('----------');
end;

procedure TMainform.part2buttoncomputeClick(Sender: TObject);
begin
  part2editlength.Text:= floattostr(computelength);
end;

procedure TMainform.part2buttondistanceClick(Sender: TObject);
var
  i, j:integer;
begin
  for i:=1 to 5 do begin
    for j := 1 to 5 do
      distance[i, j]:= 0;
  end;
  for i := 1 to 5 do begin
      for j := 1 to 5 do
      try
        distance[i, j]:= strtofloat(StringGrid.Cells[j, i]);
      except
        on E: exception do begin
        end;
      end;
  end;
  part2buttonroute.Enabled := True;
end;

procedure TMainform.part2buttonrouteClick(Sender: TObject);
var
  i:integer;
begin
  if (part2memo.Lines.Count<2) or (part2memo.Lines.Count>5) then begin
    showmessage('invalid route');
  end
  else begin
    setlength(route, part2memo.Lines.Count);
    for i := 0 to part2memo.Lines.Count - 1 do begin
      try
        route[i]:= strtoint(part2memo.Lines[i]);
      except
        on E: exception do begin
          showmessage('Wrong input');
        end;
      end;
      end;
  end;
  part2buttoncompute.Enabled:= true;
end;

procedure TMainform.StringGridClick(Sender: TObject);
begin
  StringGrid.Cells[0,0] := ' To \ From';
  StringGrid.Cells[0,1] := 'Russia (1)';
  StringGrid.Cells[0,2] := 'Norway (2)';
  StringGrid.Cells[0,3] := 'Germany (3)';
  StringGrid.Cells[0,4] := 'NED (4)';
  StringGrid.Cells[0,5] := 'UK (5)';
  StringGrid.Cells[1,0] := 'Russia (1)';
  StringGrid.Cells[2,0] := 'Norway (2)';
  StringGrid.Cells[3,0] := 'Germany (3)';
  StringGrid.Cells[4,0] := 'NED (4)';
  StringGrid.Cells[5,0] := 'UK (5)';
  StringGrid.Cells[1,1] := '###########';
  StringGrid.Cells[2,2] := '###########';
  StringGrid.Cells[3,3] := '###########';
  StringGrid.Cells[4,4] := '###########';
  StringGrid.Cells[5,5] := '###########';
  part2buttondistance.Enabled := true;
end;

end.
