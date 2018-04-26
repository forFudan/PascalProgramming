object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 423
  ClientWidth = 703
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
    Top = 0
    Width = 689
    Height = 177
    Caption = 'Part1: Using Getters and Setters'
    TabOrder = 0
    object ButtonCreateaperson: TButton
      Left = 16
      Top = 24
      Width = 81
      Height = 25
      Caption = 'Create aPerson'
      TabOrder = 0
      OnClick = CreateApersonClick
    end
    object GroupBox2: TGroupBox
      Left = 120
      Top = 16
      Width = 201
      Height = 145
      Caption = 'Getting & Setting properties'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Label2: TLabel
        Left = 16
        Top = 47
        Width = 19
        Height = 13
        Caption = 'Age'
      end
      object Label3: TLabel
        Left = 16
        Top = 79
        Width = 35
        Height = 13
        Caption = 'Gender'
      end
      object EditName: TEdit
        Left = 72
        Top = 17
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object EditAge: TEdit
        Left = 72
        Top = 44
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EditGender: TEdit
        Left = 72
        Top = 71
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object buttonGet: TButton
        Left = 110
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Get'
        TabOrder = 3
        OnClick = getclick
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 183
    Width = 689
    Height = 202
    Caption = 'Part 2: Inheritance and Polymorphism'
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 16
      Top = 16
      Width = 155
      Height = 177
      Caption = 'Teacher'
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 32
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Label5: TLabel
        Left = 16
        Top = 61
        Width = 19
        Height = 13
        Caption = 'Age'
      end
      object Label6: TLabel
        Left = 11
        Top = 80
        Width = 35
        Height = 13
        Caption = 'Gender'
      end
      object Label7: TLabel
        Left = 16
        Top = 112
        Width = 30
        Height = 13
        Caption = 'Salary'
      end
      object Part2TeacherName: TEdit
        Left = 63
        Top = 24
        Width = 84
        Height = 21
        TabOrder = 0
      end
      object Part2TeacherAge: TEdit
        Left = 63
        Top = 51
        Width = 84
        Height = 21
        TabOrder = 1
      end
      object Part2TeacherGender: TEdit
        Left = 63
        Top = 78
        Width = 84
        Height = 21
        TabOrder = 2
      end
      object Part2TeacherSalary: TEdit
        Left = 65
        Top = 105
        Width = 80
        Height = 21
        TabOrder = 3
      end
    end
    object CreateaTeacher: TButton
      Left = 48
      Top = 156
      Width = 91
      Height = 25
      Caption = 'Create a Teacher'
      TabOrder = 1
      OnClick = CreateaTeacherClick
    end
    object GroupBox6: TGroupBox
      Left = 335
      Top = 16
      Width = 346
      Height = 177
      Caption = 'Speaking'
      TabOrder = 2
    end
    object PersonSpeak: TButton
      Left = 344
      Top = 32
      Width = 105
      Height = 25
      Caption = 'aPerson, speak!'
      TabOrder = 3
      OnClick = speak
    end
    object TeacherSpeak: TButton
      Left = 455
      Top = 32
      Width = 106
      Height = 25
      Caption = 'aTeacher, speak!'
      TabOrder = 4
      OnClick = speak
    end
    object StudentSpeak: TButton
      Left = 567
      Top = 32
      Width = 106
      Height = 25
      Caption = 'aStudent, speak!'
      TabOrder = 5
      OnClick = speak
    end
    object Part2memo: TMemo
      Left = 344
      Top = 63
      Width = 329
      Height = 122
      TabOrder = 6
    end
  end
  object Closebutton: TButton
    Left = 620
    Top = 390
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = ClosebuttonClick
  end
  object Part1Set: TButton
    Left = 144
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Set'
    TabOrder = 2
    OnClick = setClick
  end
  object GroupBox5: TGroupBox
    Left = 185
    Top = 199
    Width = 152
    Height = 177
    Caption = 'Student'
    TabOrder = 4
    object Label8: TLabel
      Left = 16
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Label9: TLabel
      Left = 16
      Top = 61
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object Label10: TLabel
      Left = 16
      Top = 80
      Width = 35
      Height = 13
      Caption = 'Gender'
    end
    object Label11: TLabel
      Left = 16
      Top = 112
      Width = 46
      Height = 13
      Caption = 'S-number'
    end
    object Part2StudentName: TEdit
      Left = 63
      Top = 24
      Width = 82
      Height = 21
      TabOrder = 0
    end
    object Part2StudentAge: TEdit
      Left = 63
      Top = 51
      Width = 82
      Height = 21
      TabOrder = 1
    end
    object Part2StudentGender: TEdit
      Left = 63
      Top = 78
      Width = 82
      Height = 21
      TabOrder = 2
    end
    object Part2StudentNumber: TEdit
      Left = 67
      Top = 105
      Width = 82
      Height = 21
      TabOrder = 3
    end
  end
  object CreateaStudent: TButton
    Left = 217
    Top = 339
    Width = 96
    Height = 25
    Caption = 'Create a Student'
    TabOrder = 5
    OnClick = CreateaStudentClick
  end
end
