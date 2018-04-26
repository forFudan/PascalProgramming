object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 311
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Editdriver: TEdit
    Left = 8
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'Editdriver'
  end
  object buttondriver: TButton
    Left = 271
    Top = 8
    Width = 75
    Height = 25
    Caption = 'buttondriver'
    TabOrder = 1
    OnClick = buttondriverClick
  end
  object ListBox: TListBox
    Left = 8
    Top = 32
    Width = 257
    Height = 233
    ItemHeight = 13
    TabOrder = 2
  end
  object Editltime: TEdit
    Left = 8
    Top = 271
    Width = 176
    Height = 21
    TabOrder = 3
    Text = 'Editltime'
  end
  object Buttonltime: TButton
    Left = 190
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Buttonltime'
    TabOrder = 4
    OnClick = ButtonltimeClick
  end
  object Memo: TMemo
    Left = 376
    Top = 39
    Width = 328
    Height = 260
    Lines.Strings = (
      'Memo')
    TabOrder = 5
  end
  object buttonrefresh: TButton
    Left = 629
    Top = 8
    Width = 75
    Height = 25
    Caption = 'buttonrefresh'
    TabOrder = 6
    OnClick = buttonrefreshClick
  end
end
