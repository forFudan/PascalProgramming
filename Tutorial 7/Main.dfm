object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Class 7: Object-Oriented Programming'
  ClientHeight = 430
  ClientWidth = 689
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
    Width = 676
    Height = 193
    Caption = 'Part1: Class operators'
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 3
      Top = 16
      Width = 102
      Height = 174
      Caption = 'Season'
      TabOrder = 0
      object Part1winter: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Winter'
        TabOrder = 0
        OnClick = Click
      end
      object Part1spring: TButton
        Left = 16
        Top = 55
        Width = 75
        Height = 25
        Caption = 'Spring'
        TabOrder = 1
      end
      object Part1Summer: TButton
        Left = 16
        Top = 86
        Width = 75
        Height = 25
        Caption = 'Summer'
        TabOrder = 2
        OnClick = Click
      end
      object Part1Autumn: TButton
        Left = 16
        Top = 117
        Width = 75
        Height = 25
        Caption = 'Autumn'
        TabOrder = 3
        OnClick = Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 255
      Top = 16
      Width = 418
      Height = 174
      Caption = 'Output'
      TabOrder = 1
      object Part1Memo: TMemo
        Left = 3
        Top = 16
        Width = 412
        Height = 155
        TabOrder = 0
      end
    end
    object Part1Radiogroup: TRadioGroup
      Left = 111
      Top = 16
      Width = 138
      Height = 174
      Caption = 'Day of the Week'
      Items.Strings = (
        'Monday'
        'Tuesday'
        'Wednesday'
        'Thursday'
        'Friday'
        'Saturday'
        'Sunday')
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnClick = Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 204
    Width = 676
    Height = 197
    Caption = 'Part2: Offspring'
    TabOrder = 1
    object GroupBox5: TGroupBox
      Left = 3
      Top = 16
      Width = 150
      Height = 177
      Caption = 'Create people'
      TabOrder = 0
    end
    object Part2createPerson: TButton
      Left = 19
      Top = 40
      Width = 118
      Height = 25
      Caption = 'Create a Person'
      TabOrder = 1
      OnClick = Part2createPersonClick
    end
    object Part2Createchildren: TButton
      Left = 19
      Top = 71
      Width = 118
      Height = 25
      Caption = 'Create children'
      TabOrder = 2
      OnClick = Part2CreatechildrenClick
    end
    object Part2CreateGrandchildren: TButton
      Left = 19
      Top = 102
      Width = 118
      Height = 25
      Caption = 'Create grandchildren'
      TabOrder = 3
      OnClick = Part2CreateGrandchildrenClick
    end
    object GroupBox6: TGroupBox
      Left = 159
      Top = 19
      Width = 154
      Height = 177
      Caption = 'Letting people talk'
      TabOrder = 4
    end
    object Part2Persontalks: TButton
      Left = 174
      Top = 40
      Width = 107
      Height = 25
      Caption = 'a Person talks'
      TabOrder = 5
      OnClick = Part2PersontalksClick
    end
    object Part2Everybodytalks: TButton
      Left = 174
      Top = 71
      Width = 107
      Height = 25
      Caption = 'Everybody talks'
      TabOrder = 6
      OnClick = Part2EverybodytalksClick
    end
    object Output: TGroupBox
      Left = 319
      Top = 16
      Width = 354
      Height = 177
      Caption = 'Output'
      TabOrder = 7
    end
    object Part2Memo: TMemo
      Left = 319
      Top = 32
      Width = 354
      Height = 153
      TabOrder = 8
    end
  end
  object Closebutton: TButton
    Left = 606
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = ClosebuttonClick
  end
end
