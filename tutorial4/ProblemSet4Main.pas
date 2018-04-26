unit ProblemSet4Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure ButtoncloseClick(Sender: TObject);
    procedure refreshmemo;
    procedure printFunctionValue;
    procedure printAnalyticalDerivative;
    procedure printFirstNumerical;
    procedure printSecondNumerical;
    procedure computeAll(x: Real; h: Real);
    function function1(x: Real; h: Real) : Real;
    function function2(x: Real; h: Real) : Real;
    function function3(x: Real; h: Real) : Real;
    function function4(x: Real; h: Real) : Real;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var {Globally declared}
  formMain: TformMain;
  result1, result2, result3, result4, error1, error2 : real;

implementation
{$R *.dfm}

procedure TformMain.refreshmemo;
begin
    memo1.Lines.Clear;
    memo1.Lines.Add('Function evaluations of:');
    memo1.Lines.Add(' f(x)=4exp(-2x)');
    memo1.Lines.Add('');
    memo1.Lines.Add('With:');
    memo1.Lines.Add(' x=' + edit1.Text);
    memo1.Lines.Add(' h=' + edit2.Text);
    memo1.Lines.Add('----------------');
end;

function tformmain.function1(x: Real; h: Real) : Real;
begin
    result := 4*exp(-2*x);
  end;

  function tformmain.function2(x: Real; h: Real) : Real;
  begin
    result := -8*exp(-2*x);
  end;

  function tformmain.function3(x: Real; h: Real) : Real;
  begin
    result := (function1(x+h,h)-function1(x,h))/h;
  end;

  function tformmain.function4(x: Real; h: Real) : Real;
  begin
    result := (function1(x+0.5*h,h)-function1(x-0.5*h,h))/h;
  end;

procedure TformMain.Button1Click(Sender: TObject);
var
  x, h : real;
begin
  refreshmemo;
  x := strtofloat(edit1.Text);
  h := strtofloat(edit2.Text);
  computeAll(x,h);
  printFunctionValue;
  printAnalyticalDerivative;
  printFirstNumerical;
  printSecondNumerical;
end;

procedure TformMain.computeAll(x:real; h:real);
begin
    result1 := function1(x, h);
    result2 := function2(x, h);
    result3 := function3(x, h);
    result4 := function4(x, h);
    error1 := function2(x,h)-function3(x,h);
    error2 := function2(x,h)-function4(x,h);
end;

procedure tformmain.printFunctionValue;
begin
    memo1.Lines.Add('f(x)=' + floattostr(result1));
    memo1.Lines.Add('');
end;

procedure tformmain.printAnalyticalDerivative;
begin
    memo1.Lines.Add('Analytical derivative evaluated in x:');
    memo1.Lines.Add(' f'+ chr(39)+'(x)=' + floattostr(result2));
    memo1.Lines.Add('');
end;

procedure tformmain.printFirstNumerical;
begin
    memo1.Lines.Add('Numerical derivative evaluated in x:');
    memo1.Lines.Add(' (f(x+h)-f(x))/h=' + floattostr(result3));
    memo1.Lines.Add(' Error=' + floattostr(error1));
    memo1.Lines.Add('');
end;

procedure tformmain.printSecondNumerical;
begin
    memo1.Lines.Add('Numerical derivative evaluated in x:');
    memo1.Lines.Add(' (f(x+0.5h)-f(x-0.5x))/h=' + floattostr(result4));
    memo1.Lines.Add(' Error=' + floattostr(error2));
end;

procedure TformMain.ButtoncloseClick(Sender: TObject);
begin
  close;
end;

end.
