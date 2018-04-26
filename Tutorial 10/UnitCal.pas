unit UnitCal;


interface

uses
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Math;

const
  m = 5;

type
  staticarray = array [0..m] of extended;
  dynamicarray = array of extended;

function NextA(a, b: extended): extended;
function NextB(a, b: extended): extended;
function Nextt(a, t, p, Na: extended):extended;
function Nextp(p: extended): extended;
function approximatepi(a, b, t:extended): extended;
function calpi(m:integer):extended;
function calpistatic(m:integer):extended;
function calpidynamic(m:integer):extended;

var
  ast, bst, tst, pst: staticarray;
  ady, bdy, tdy, pdy: dynamicarray;

implementation

function NextA(a, b: extended): extended;
begin
  result:= (a+b)/2;
end;

function NextB(a, b: extended): extended;
begin
  result:= sqrt(a * b);
end;

function Nextt(a, t, p, Na: extended):extended;
begin
  result:= t-p*power(a-Na,2);
end;

function Nextp(p: extended): extended;
begin
  result:= 2* p;
end;

function approximatepi(a, b, t:extended): extended;
begin
  result:= power(a+b,2)/(4*t);
end;

function calpi(m: integer):extended;
var
  i: integer;
  aN, bN, tN, pN, aN1, bN1, tN1, pN1:extended;
begin
  aN:= 1; bN:=1/sqrt(2); tN:=1/4; pN:=1;
  for i := 0 to m - 1 do begin
    aN1:= Nexta(an, bn);
    bn1:= nextb(an, bn);
    tn1:= nextt(an, tn, pn, an1);
    pn1:= nextp(pn);
    // Calculate next value.
    an:= an1;
    bn:= bn1;
    tn:= tn1;
    pn:= pn1;
    // Pas the value.
  end;
  result:= approximatepi(an, bn, tn);
end;

function calpistatic(m:integer):extended;
var
  i: integer;
begin
  ast[0]:= 1; bst[0]:=1/sqrt(2); tst[0]:=1/4; pst[0]:=1;
  for i := 0 to m - 1 do begin
    ast[i+1]:= nexta(ast[i], bst[i]);
    bst[i+1]:= nextb(ast[i], bst[i]);
    tst[i+1]:= nextt(ast[i], tst[i], pst[i], ast[i+1]);
    pst[i+1]:= nextp(pst[i]);
  end;
  result:= approximatepi(ast[m], bst[m], tst[m]);
end;

function calpidynamic(m:integer):extended;
var
  i: integer;
begin
  setlength(ady, m+1);
  setlength(bdy, m+1);
  setlength(tdy, m+1);
  setlength(pdy, m+1);
  ady[0]:= 1; bdy[0]:=1/sqrt(2); tdy[0]:=1/4; pdy[0]:=1;
  for i := 0 to m - 1 do begin
    ady[i+1]:= nexta(ady[i], bdy[i]);
    bdy[i+1]:= nextb(ady[i], bdy[i]);
    tdy[i+1]:= nextt(ady[i], tdy[i], pdy[i], ady[i+1]);
    pdy[i+1]:= nextp(pdy[i]);
  end;
  result:= approximatepi(ady[m], bdy[m], tdy[m]);
end;


end.
