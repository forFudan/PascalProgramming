object formMain: TformMain
  Left = 0
  Top = 0
  Caption = 'Tutorial2: Variables'
  ClientHeight = 305
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object buttonForClose: TButton
    Left = 354
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = buttonForCloseClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 166
    Caption = 'Part 1: Concatenate strings'
    TabOrder = 1
    object P1FS: TLabel
      Left = 19
      Top = 48
      Width = 52
      Height = 13
      Caption = 'First String'
    end
    object P1Re: TLabel
      Left = 18
      Top = 94
      Width = 30
      Height = 13
      Caption = 'Result'
    end
    object P2SS: TLabel
      Left = 191
      Top = 48
      Width = 66
      Height = 13
      Caption = 'Second String'
    end
    object P1Co: TButton
      Left = 104
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Concatenate'
      TabOrder = 0
      OnClick = P1CoClick
    end
    object P1Edit1: TEdit
      Left = 18
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Delphi allows for text'
    end
    object P1Edit2: TEdit
      Left = 145
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'and number processing'
    end
    object P1Me: TMemo
      Left = 77
      Top = 79
      Width = 209
      Height = 74
      Lines.Strings = (
        'Delphi allows for text and number '
        'processing')
      ScrollBars = ssBoth
      TabOrder = 3
    end
    object P1Button1: TButton
      Left = 18
      Top = 129
      Width = 53
      Height = 25
      Caption = 'Clear'
      TabOrder = 4
      OnClick = P1Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 180
    Width = 162
    Height = 116
    Caption = 'Part 2: Adding real numbers'
    TabOrder = 2
    object labelP2X: TLabel
      Left = 23
      Top = 29
      Width = 14
      Height = 13
      Caption = 'X='
    end
    object P2Result: TLabel
      Left = 76
      Top = 82
      Width = 30
      Height = 13
      Caption = 'Result'
    end
    object labelP2Y: TLabel
      Left = 23
      Top = 48
      Width = 14
      Height = 13
      Caption = 'Y='
    end
    object P2Add: TButton
      Left = 18
      Top = 75
      Width = 52
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = P2AddClick
    end
    object P2Edit1: TEdit
      Left = 43
      Top = 21
      Width = 86
      Height = 21
      TabOrder = 1
      OnChange = P2Edit1Change
    end
    object P2Edit2: TEdit
      Left = 43
      Top = 48
      Width = 86
      Height = 21
      TabOrder = 2
      OnChange = P2Edit2Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 176
    Top = 180
    Width = 129
    Height = 116
    Caption = 'Part 3: boolean varible'
    TabOrder = 3
    object p3label1: TLabel
      Left = 23
      Top = 24
      Width = 14
      Height = 13
      Caption = 'X='
    end
    object p3Button1: TButton
      Left = 43
      Top = 48
      Width = 75
      Height = 25
      Caption = 'check'
      TabOrder = 0
      OnClick = p3Button1Click
    end
    object p3edit1: TEdit
      Left = 43
      Top = 21
      Width = 78
      Height = 21
      TabOrder = 1
    end
    object p3CheckBox1: TCheckBox
      Left = 49
      Top = 79
      Width = 97
      Height = 17
      Caption = '>9?'
      Enabled = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 311
    Top = 8
    Width = 154
    Height = 257
    Caption = 'Prt3: Math Functions'
    TabOrder = 4
    object calLabel1: TLabel
      Left = 23
      Top = 48
      Width = 14
      Height = 13
      Caption = 'X='
    end
    object calEdit1: TEdit
      Left = 43
      Top = 45
      Width = 78
      Height = 21
      TabOrder = 0
    end
    object calbutton1: TButton
      Left = 43
      Top = 82
      Width = 75
      Height = 25
      Caption = 'calculate'
      TabOrder = 1
      OnClick = calbutton1Click
      OnMouseEnter = calbutton1MouseEnter
    end
    object calMemo1: TMemo
      Left = 9
      Top = 131
      Width = 142
      Height = 114
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
