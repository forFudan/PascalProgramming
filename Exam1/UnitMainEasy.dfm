object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 212
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonCalculate: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'calculate'
    TabOrder = 0
    OnClick = ButtonCalculateClick
  end
  object edit: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Memo: TMemo
    Left = 167
    Top = 8
    Width = 185
    Height = 196
    TabOrder = 2
  end
  object buttonClose: TButton
    Left = 24
    Top = 87
    Width = 75
    Height = 25
    Caption = 'close'
    TabOrder = 3
  end
end
