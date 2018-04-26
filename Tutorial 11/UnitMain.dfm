object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 381
  ClientWidth = 719
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
    Width = 289
    Height = 97
    Caption = 'GroupBox1'
    TabOrder = 0
    object part1label1: TLabel
      Left = 71
      Top = 24
      Width = 54
      Height = 13
      Caption = 'part1label1'
    end
    object part1Label2: TLabel
      Left = 175
      Top = 24
      Width = 57
      Height = 13
      Caption = 'part1Label2'
    end
    object part1EditNum1: TEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      Text = 'part1EditNum1'
    end
    object part1EditNum2: TEdit
      Left = 128
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 1
      Text = 'part1EditNum2'
    end
    object part1Calulate: TButton
      Left = 94
      Top = 51
      Width = 75
      Height = 25
      Caption = '&Calulate'
      TabOrder = 2
      OnClick = part1CalulateClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 111
    Width = 289
    Height = 234
    Caption = 'GroupBox2'
    TabOrder = 1
    object part2Label1: TLabel
      Left = 8
      Top = 24
      Width = 57
      Height = 13
      Caption = 'part2Label1'
    end
    object part2Label2: TLabel
      Left = 8
      Top = 48
      Width = 57
      Height = 13
      Caption = 'part2Label2'
    end
    object part2Editx: TEdit
      Left = 45
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'part2Editx'
    end
    object part2Editn: TEdit
      Left = 45
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'part2Editn'
    end
    object part2ButtonCalculate: TButton
      Left = 200
      Top = 24
      Width = 75
      Height = 25
      Caption = 'part2ButtonCalculate'
      TabOrder = 2
      OnClick = part2ButtonCalculateClick
    end
    object part2Memo: TMemo
      Left = 3
      Top = 75
      Width = 286
      Height = 156
      Lines.Strings = (
        'part2Memo')
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 303
    Top = 8
    Width = 408
    Height = 337
    Caption = 'GroupBox3'
    TabOrder = 2
    object part3LabelFirst: TLabel
      Left = 16
      Top = 272
      Width = 72
      Height = 13
      Caption = 'part3LabelFirst'
    end
    object part3LabelLast: TLabel
      Left = 184
      Top = 272
      Width = 71
      Height = 13
      Caption = 'part3LabelLast'
    end
    object part3Memo: TMemo
      Left = 16
      Top = 21
      Width = 377
      Height = 172
      TabOrder = 0
    end
    object part3EditSentence: TEdit
      Left = 16
      Top = 199
      Width = 377
      Height = 21
      TabOrder = 1
      Text = 'part3EditSentence'
    end
    object part3ButtonSentence: TButton
      Left = 152
      Top = 226
      Width = 113
      Height = 25
      Caption = 'part3ButtonSentence'
      TabOrder = 2
      OnClick = part3ButtonSentenceClick
    end
    object part3EditFirst: TEdit
      Left = 74
      Top = 269
      Width = 55
      Height = 21
      TabOrder = 3
    end
    object part3EditLast: TEdit
      Left = 245
      Top = 269
      Width = 68
      Height = 21
      TabOrder = 4
    end
    object Part3ButtonPartial: TButton
      Left = 319
      Top = 267
      Width = 75
      Height = 25
      Caption = 'Part3ButtonPartial'
      TabOrder = 5
      OnClick = Part3ButtonPartialClick
    end
    object part3EditPartial: TEdit
      Left = 16
      Top = 296
      Width = 377
      Height = 21
      TabOrder = 6
      Text = 'part3EditPartial'
    end
  end
  object buttonClose: TButton
    Left = 296
    Top = 352
    Width = 75
    Height = 25
    Caption = 'buttonClose'
    TabOrder = 3
  end
end
