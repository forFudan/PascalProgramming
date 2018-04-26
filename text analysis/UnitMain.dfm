object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 200
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
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 402
    Height = 57
    Lines.Strings = (
      
        'THe tulips are too red in the first place. Even through the gift' +
        ' paper, they can '
      
        'breath. They seem subtle: they seem to float. Impression: a doze' +
        'n red lead '
      'sinkers.')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 102
    Width = 402
    Height = 89
    TabOrder = 2
  end
end
