object Form1: TForm1
  Left = 192
  Top = 140
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 576
    Top = 24
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 632
    Top = 32
    Width = 3
    Height = 13
  end
  object Memo1: TMemo
    Left = 24
    Top = 56
    Width = 185
    Height = 217
    TabOrder = 0
    OnClick = Memo1Click
    OnKeyUp = Memo1KeyUp
  end
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 16
    Width = 75
    Height = 25
    Caption = 'open'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 16
    Width = 75
    Height = 25
    Caption = 'undo'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 288
    Top = 16
    Width = 75
    Height = 25
    Caption = 'shrift'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 328
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button5: TButton
    Left = 376
    Top = 120
    Width = 75
    Height = 25
    Caption = 'search'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Edit3: TEdit
    Left = 456
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Button6: TButton
    Left = 424
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 472
    Top = 120
    Width = 97
    Height = 25
    Caption = 'search with regist'
    TabOrder = 9
    OnClick = Button7Click
  end
  object SaveDialog1: TSaveDialog
    Left = 296
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 376
    Top = 40
  end
  object FontDialog1: TFontDialog
    Tag = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 288
    Top = 144
  end
end
