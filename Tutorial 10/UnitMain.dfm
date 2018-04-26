object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Part1ButtonCal: TButton
    Left = 24
    Top = 24
    Width = 129
    Height = 25
    Caption = 'Part1ButtonCal'
    TabOrder = 0
    OnClick = Part1ButtonCalClick
  end
  object Part1Memo: TMemo
    Left = 24
    Top = 55
    Width = 225
    Height = 194
    Lines.Strings = (
      'Part1Memo')
    TabOrder = 1
  end
  object part1ButtonSave: TButton
    Left = 24
    Top = 255
    Width = 129
    Height = 25
    Caption = 'part1ButtonSave'
    TabOrder = 2
    OnClick = part1ButtonSaveClick
  end
  object Part1ButtonShow: TButton
    Left = 24
    Top = 286
    Width = 129
    Height = 25
    Caption = 'Part1ButtonShow'
    TabOrder = 3
    OnClick = Part1ButtonShowClick
  end
  object Part2ButtonCal: TButton
    Left = 264
    Top = 24
    Width = 90
    Height = 25
    Caption = 'Part2ButtonCal'
    TabOrder = 4
    OnClick = Part2ButtonCalClick
  end
  object Part2EditInput: TEdit
    Left = 360
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Part2EditInput'
  end
  object part2EditPi: TEdit
    Left = 264
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'part2EditPi'
  end
  object Part2ButtonSave: TButton
    Left = 504
    Top = 24
    Width = 153
    Height = 25
    Caption = 'Part2ButtonSave'
    TabOrder = 7
    OnClick = Part2ButtonSaveClick
  end
  object Part2buttonShow: TButton
    Left = 504
    Top = 55
    Width = 153
    Height = 25
    Caption = 'Part2buttonShow'
    TabOrder = 8
    OnClick = Part2buttonShowClick
  end
  object Part2Memo: TMemo
    Left = 264
    Top = 83
    Width = 393
    Height = 228
    Lines.Strings = (
      'Part2Memo')
    TabOrder = 9
  end
end
