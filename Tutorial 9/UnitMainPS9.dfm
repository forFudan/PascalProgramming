object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 328
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
    Width = 317
    Height = 481
    Caption = 'Computing the value via Fourier series'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 20
      Height = 13
      Caption = 'x = '
    end
    object input: TEdit
      Left = 80
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object threesteps: TButton
      Left = 24
      Top = 56
      Width = 137
      Height = 25
      Caption = 'Compute in 3 steps'
      TabOrder = 1
      OnClick = threestepsClick
    end
    object foursteps: TButton
      Left = 24
      Top = 87
      Width = 137
      Height = 25
      Caption = 'Compute in 4 steps'
      TabOrder = 2
      OnClick = fourstepsClick
    end
    object MemoOutput: TMemo
      Left = 24
      Top = 128
      Width = 281
      Height = 345
      TabOrder = 3
    end
  end
  object buttonclose: TButton
    Left = 134
    Top = 495
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = buttoncloseClick
  end
end
