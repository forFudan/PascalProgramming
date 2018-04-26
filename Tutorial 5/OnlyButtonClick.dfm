object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Lecture 5: Prameter passing'
  ClientHeight = 373
  ClientWidth = 507
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
    Width = 241
    Height = 329
    Caption = 'Part 1: The quadratic formula revisited'
    TabOrder = 0
    object Part1label1: TLabel
      Left = 24
      Top = 32
      Width = 14
      Height = 13
      Caption = 'a='
    end
    object part1label2: TLabel
      Left = 24
      Top = 64
      Width = 14
      Height = 13
      Caption = 'b='
    end
    object part1label3: TLabel
      Left = 24
      Top = 96
      Width = 13
      Height = 13
      Caption = 'c='
    end
    object part1edit1: TEdit
      Left = 44
      Top = 29
      Width = 77
      Height = 21
      TabOrder = 0
    end
    object part1edit2: TEdit
      Left = 44
      Top = 61
      Width = 77
      Height = 21
      TabOrder = 1
    end
    object part1edit3: TEdit
      Left = 43
      Top = 93
      Width = 78
      Height = 21
      TabOrder = 2
    end
    object part1button1: TButton
      Left = 144
      Top = 27
      Width = 75
      Height = 25
      Caption = 'Calculate'
      TabOrder = 3
      OnClick = part1button1Click
    end
    object part1memo1: TMemo
      Left = 24
      Top = 144
      Width = 195
      Height = 177
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 255
    Top = 8
    Width = 244
    Height = 329
    Caption = 'Part 2: Color representations'
    TabOrder = 1
    object part2shape1: TShape
      Left = 16
      Top = 27
      Width = 217
      Height = 82
    end
    object part2Label1: TLabel
      Left = 16
      Top = 173
      Width = 3
      Height = 13
    end
    object part2Label2: TLabel
      Left = 16
      Top = 205
      Width = 3
      Height = 13
    end
    object part2Label3: TLabel
      Left = 16
      Top = 232
      Width = 3
      Height = 13
    end
    object part2Edit1: TEdit
      Left = 16
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object part2Button2: TButton
      Left = 160
      Top = 126
      Width = 75
      Height = 25
      Caption = 'Set Color'
      TabOrder = 1
      OnClick = part2Button2Click
    end
    object part2Button3: TButton
      Left = 160
      Top = 157
      Width = 75
      Height = 25
      Caption = 'Get RGB'
      TabOrder = 2
      OnClick = part2Button3Click
    end
  end
  object Button1: TButton
    Left = 216
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button1Click
  end
end
