object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Podgl'#261'd wzorc'#243'w'
  ClientHeight = 269
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image7: TImage
    Left = 0
    Top = 0
    Width = 10
    Height = 10
  end
  object Image9: TImage
    Left = 11
    Top = 44
    Width = 335
    Height = 175
  end
  object Image1: TImage
    Left = 40
    Top = 175
    Width = 19
    Height = 29
    Visible = False
  end
  object Image2: TImage
    Left = 65
    Top = 175
    Width = 19
    Height = 29
    Visible = False
  end
  object Image3: TImage
    Left = 90
    Top = 175
    Width = 19
    Height = 29
    Visible = False
  end
  object Image4: TImage
    Left = 24
    Top = 57
    Width = 99
    Height = 149
  end
  object Image5: TImage
    Left = 129
    Top = 57
    Width = 99
    Height = 149
  end
  object Image6: TImage
    Left = 234
    Top = 57
    Width = 99
    Height = 149
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 123
    Height = 19
    Caption = 'Wybierz wzorzec:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Image8: TImage
    Left = 226
    Top = 230
    Width = 120
    Height = 30
    OnClick = Image8Click
    OnMouseDown = Image8MouseDown
    OnMouseUp = Image8MouseUp
  end
  object ComboBox1: TComboBox
    Left = 145
    Top = 14
    Width = 83
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = '---------------------------'
    OnChange = ComboBox1Change
    Items.Strings = (
      'a'
      #261
      'b'
      'c'
      #263
      'd'
      'e'
      #281
      'f'
      'g'
      'h'
      'i'
      'j'
      'k'
      'l'
      #322
      'm'
      'n'
      #324
      'o'
      #243
      'p'
      'q'
      'r'
      's'
      #347
      't'
      'u'
      'w'
      'x'
      'y'
      'z'
      #378
      #380
      '@')
  end
end
