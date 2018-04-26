object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 212
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button: TButton
    Left = 40
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 1
    OnClick = ButtonClick
  end
  object Memo: TMemo
    Left = 160
    Top = 8
    Width = 250
    Height = 185
    TabOrder = 2
  end
end
