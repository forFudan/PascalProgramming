object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 379
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object part1Groupbox: TGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 337
    Caption = 'First step'
    TabOrder = 0
    object part1Label1: TLabel
      Left = 16
      Top = 55
      Width = 43
      Height = 13
      Caption = 'Qu'#39'onos:'
    end
    object part1Label2: TLabel
      Left = 16
      Top = 74
      Width = 44
      Height = 13
      Caption = 'Pandora:'
    end
    object part1Label3: TLabel
      Left = 16
      Top = 93
      Width = 35
      Height = 13
      Caption = 'Vulcan:'
    end
    object part1Label4: TLabel
      Left = 16
      Top = 183
      Width = 38
      Height = 13
      Caption = 'Klingon:'
    end
    object part1Label5: TLabel
      Left = 16
      Top = 202
      Width = 27
      Height = 13
      Caption = 'Na'#39'vi:'
    end
    object part1Label6: TLabel
      Left = 16
      Top = 221
      Width = 35
      Height = 13
      Caption = 'Vulcan:'
    end
    object part1ButtonPlanets: TButton
      Left = 16
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Create Planets'
      TabOrder = 0
      OnClick = part1ButtonPlanetsClick
    end
    object part1ButtonAliens: TButton
      Left = 16
      Top = 152
      Width = 121
      Height = 25
      Caption = 'Instantiate Aliens'
      TabOrder = 1
      OnClick = part1ButtonAliensClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 199
    Top = 8
    Width = 202
    Height = 337
    Caption = 'GroupBox2'
    TabOrder = 1
    object Label7: TLabel
      Left = 16
      Top = 74
      Width = 34
      Height = 13
      Caption = 'Klingon'
    end
    object Label8: TLabel
      Left = 16
      Top = 112
      Width = 23
      Height = 13
      Caption = 'Na'#39'vi'
    end
    object Label9: TLabel
      Left = 16
      Top = 152
      Width = 31
      Height = 13
      Caption = 'Vulcan'
    end
    object part2ButtonSet: TButton
      Left = 16
      Top = 24
      Width = 113
      Height = 25
      Caption = 'Set Names'
      TabOrder = 0
      OnClick = part2ButtonSetClick
    end
    object part2Edit1: TEdit
      Left = 64
      Top = 71
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'part2Edit1'
    end
    object part2Edit2: TEdit
      Left = 64
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'part2Edit2'
    end
    object part2Edit3: TEdit
      Left = 64
      Top = 149
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'part2Edit3'
    end
  end
  object GroupBox3: TGroupBox
    Left = 407
    Top = 8
    Width = 279
    Height = 368
    Caption = 'GroupBox3'
    TabOrder = 2
    object Part3ButtonInfo: TButton
      Left = 16
      Top = 24
      Width = 129
      Height = 25
      Caption = 'Get Info'
      TabOrder = 0
      OnClick = Part3ButtonInfoClick
    end
    object part3Memo: TMemo
      Left = 3
      Top = 71
      Width = 273
      Height = 294
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object buttonClose: TButton
    Left = 171
    Top = 351
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = buttonCloseClick
  end
end
