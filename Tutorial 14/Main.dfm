object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 237
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
  object editName: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'editName'
  end
  object buttonAddPerson: TButton
    Left = 24
    Top = 51
    Width = 121
    Height = 25
    Caption = 'buttonAddPerson'
    TabOrder = 1
    OnClick = buttonAddPersonClick
  end
  object ListBox: TListBox
    Left = 151
    Top = 24
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
  end
  object ButtonAddAppointment: TButton
    Left = 278
    Top = 22
    Width = 179
    Height = 25
    Caption = 'ButtonAddAppointment'
    TabOrder = 3
    OnClick = ButtonAddAppointmentClick
  end
  object ButtonPrintAll: TButton
    Left = 488
    Top = 22
    Width = 193
    Height = 25
    Caption = 'ButtonPrintAll'
    TabOrder = 4
    OnClick = ButtonPrintAllClick
  end
  object Editday: TEdit
    Left = 278
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Editday'
  end
  object Edithour: TEdit
    Left = 278
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edithour'
  end
  object Memo: TMemo
    Left = 416
    Top = 53
    Width = 265
    Height = 156
    Lines.Strings = (
      'Memo')
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object ButtonPrintA: TButton
    Left = 208
    Top = 127
    Width = 191
    Height = 25
    Caption = 'ButtonPrintA'
    TabOrder = 8
    OnClick = ButtonPrintAClick
  end
  object ButtonDeletePerson: TButton
    Left = 24
    Top = 127
    Width = 121
    Height = 25
    Caption = 'ButtonDeletePerson'
    TabOrder = 9
    OnClick = ButtonDeletePersonClick
  end
  object ButtonClear: TButton
    Left = 24
    Top = 158
    Width = 121
    Height = 25
    Caption = 'ButtonClear'
    TabOrder = 10
    OnClick = ButtonClearClick
  end
  object buttonclose: TButton
    Left = 24
    Top = 189
    Width = 121
    Height = 25
    Caption = 'buttonclose'
    TabOrder = 11
    OnClick = buttoncloseClick
  end
end
