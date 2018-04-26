object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 293
  ClientWidth = 668
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
  object Memo1: TMemo
    Left = 280
    Top = 8
    Width = 380
    Height = 241
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 75
    Height = 25
    Caption = 'add movie'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 159
    Top = 176
    Width = 75
    Height = 25
    Caption = 'add show'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 207
    Width = 105
    Height = 25
    Caption = 'sort by channel'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 41
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object Edit2: TEdit
    Left = 8
    Top = 68
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '1'
  end
  object Edit3: TEdit
    Left = 8
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 8
    Top = 122
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 8
    Top = 149
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button4: TButton
    Left = 585
    Top = 255
    Width = 75
    Height = 25
    Caption = 'show list'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Edit6: TEdit
    Left = 144
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '2'
  end
  object Edit7: TEdit
    Left = 144
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 11
    Text = '2'
  end
  object Edit8: TEdit
    Left = 144
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit9: TEdit
    Left = 144
    Top = 122
    Width = 121
    Height = 21
    TabOrder = 13
  end
end
