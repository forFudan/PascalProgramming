object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Lecture 6: Using multiple units and Case statements'
  ClientHeight = 321
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 265
    Height = 273
    Caption = 'Part 1'
    TabOrder = 0
    object Part1label1: TLabel
      Left = 18
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Day'
    end
    object part1label2: TLabel
      Left = 62
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Month'
    end
    object part1label3: TLabel
      Left = 103
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Year'
    end
    object part1edit1: TEdit
      Left = 18
      Top = 48
      Width = 38
      Height = 21
      TabOrder = 0
    end
    object part1edit2: TEdit
      Left = 62
      Top = 48
      Width = 35
      Height = 21
      TabOrder = 1
    end
    object part1edit3: TEdit
      Left = 103
      Top = 48
      Width = 42
      Height = 21
      TabOrder = 2
    end
    object part1button1: TButton
      Left = 174
      Top = 46
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 3
      OnClick = part1button1Click
    end
    object part1memo1: TMemo
      Left = 18
      Top = 77
      Width = 231
      Height = 177
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 279
    Top = 8
    Width = 258
    Height = 273
    Caption = 'Part 2'
    TabOrder = 1
    object part2Label1: TLabel
      Left = 24
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Day'
    end
    object part2Label2: TLabel
      Left = 64
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Month'
    end
    object part2Label3: TLabel
      Left = 120
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Year'
    end
    object part2Edit1: TEdit
      Left = 18
      Top = 48
      Width = 38
      Height = 21
      TabOrder = 0
    end
    object part2Edit2: TEdit
      Left = 62
      Top = 48
      Width = 35
      Height = 21
      TabOrder = 1
    end
    object part2Edit3: TEdit
      Left = 103
      Top = 48
      Width = 42
      Height = 21
      TabOrder = 2
    end
    object part2Button1: TButton
      Left = 169
      Top = 46
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 3
      OnClick = part2Button1Click
    end
    object part2Memo1: TMemo
      Left = 18
      Top = 77
      Width = 231
      Height = 177
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object Button1: TButton
    Left = 239
    Top = 287
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button1Click
  end
end
