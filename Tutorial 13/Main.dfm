object Mainform: TMainform
  Left = 0
  Top = 0
  Caption = 'Looping with repeat and While'
  ClientHeight = 535
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Part1_Groupbox: TGroupBox
    Left = 8
    Top = 0
    Width = 557
    Height = 193
    Caption = 'computing cosine with a given degree of accracy'
    TabOrder = 0
    object Part1_Label_X: TLabel
      Left = 16
      Top = 16
      Width = 74
      Height = 13
      Caption = 'x (in radians) ='
    end
    object Part1_label_degree: TLabel
      Left = 16
      Top = 128
      Width = 106
      Height = 26
      Caption = 'degree of precision as negative power of 10'
      WordWrap = True
    end
    object Part1_Edit_x: TEdit
      Left = 96
      Top = 13
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object Part1_Button_Builtin: TButton
      Left = 16
      Top = 40
      Width = 153
      Height = 25
      Caption = 'Built-in Cosine'
      TabOrder = 1
      OnClick = Part1_Button_BuiltinClick
    end
    object Part1_Button_For: TButton
      Left = 16
      Top = 71
      Width = 153
      Height = 25
      Caption = 'Compute With For'
      TabOrder = 2
      OnClick = Part1_Button_ForClick
    end
    object Part1_Button_Repeat: TButton
      Left = 16
      Top = 102
      Width = 153
      Height = 25
      Caption = 'Compute With Repeat'
      TabOrder = 3
      OnClick = Part1_Button_RepeatClick
    end
    object Part1_Edit_degree: TEdit
      Left = 128
      Top = 133
      Width = 41
      Height = 21
      TabOrder = 4
    end
    object Part1_button_While: TButton
      Left = 16
      Top = 160
      Width = 153
      Height = 25
      Caption = 'Compute With While'
      TabOrder = 5
      OnClick = Part1_button_WhileClick
    end
    object Part1_Memo: TMemo
      Left = 192
      Top = 13
      Width = 353
      Height = 172
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 199
    Width = 555
    Height = 298
    Caption = 'GroupBox2'
    TabOrder = 1
    object Label3: TLabel
      Left = 192
      Top = 253
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object StringGrid: TStringGrid
      Left = 16
      Top = 16
      Width = 529
      Height = 161
      ColCount = 6
      DefaultColWidth = 85
      RowCount = 6
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
      RowHeights = (
        24
        24
        24
        24
        24
        24)
    end
    object part2memo: TMemo
      Left = 16
      Top = 183
      Width = 81
      Height = 106
      TabOrder = 1
    end
    object part2buttonroute: TButton
      Left = 103
      Top = 183
      Width = 75
      Height = 25
      Caption = 'read route'
      Enabled = False
      TabOrder = 2
      OnClick = part2buttonrouteClick
    end
    object part2buttondistance: TButton
      Left = 224
      Top = 183
      Width = 153
      Height = 25
      Caption = 'Read distances'
      Enabled = False
      TabOrder = 3
      OnClick = part2buttondistanceClick
    end
    object part2buttonchage: TButton
      Left = 399
      Top = 183
      Width = 153
      Height = 25
      Caption = 'change distances'
      TabOrder = 4
      OnClick = StringGridClick
    end
    object part2buttoncompute: TButton
      Left = 224
      Top = 214
      Width = 153
      Height = 25
      Caption = 'compute route length'
      Enabled = False
      TabOrder = 5
      OnClick = part2buttoncomputeClick
    end
    object part2editlength: TEdit
      Left = 424
      Top = 256
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'part2editlength'
    end
  end
  object Button9: TButton
    Left = 240
    Top = 503
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 2
  end
end
