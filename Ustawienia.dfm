object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Ustawienia programu'
  ClientHeight = 315
  ClientWidth = 404
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
  object Image20: TImage
    Left = 0
    Top = 0
    Width = 20
    Height = 20
  end
  object Image18: TImage
    Left = 12
    Top = 225
    Width = 156
    Height = 67
  end
  object Image14: TImage
    Left = 12
    Top = 126
    Width = 369
    Height = 75
  end
  object Image7: TImage
    Left = 12
    Top = 28
    Width = 369
    Height = 75
  end
  object Label1: TLabel
    Left = 13
    Top = 9
    Width = 69
    Height = 16
    Caption = 'Kolor pisaka'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Image1: TImage
    Left = 25
    Top = 41
    Width = 53
    Height = 49
    OnClick = Image1Click
  end
  object Image2: TImage
    Left = 83
    Top = 41
    Width = 53
    Height = 49
    OnClick = Image2Click
  end
  object Image3: TImage
    Left = 141
    Top = 41
    Width = 53
    Height = 49
    OnClick = Image3Click
  end
  object Image4: TImage
    Left = 199
    Top = 41
    Width = 53
    Height = 49
    OnClick = Image4Click
  end
  object Image5: TImage
    Left = 256
    Top = 41
    Width = 53
    Height = 49
    OnClick = Image5Click
  end
  object Label2: TLabel
    Left = 14
    Top = 109
    Width = 78
    Height = 16
    Caption = 'Kszta'#322't pisaka'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Image6: TImage
    Left = 315
    Top = 41
    Width = 53
    Height = 49
    OnClick = Image6Click
  end
  object Image8: TImage
    Left = 32
    Top = 145
    Width = 40
    Height = 37
    OnClick = Image8Click
  end
  object Image9: TImage
    Left = 90
    Top = 145
    Width = 40
    Height = 37
    OnClick = Image9Click
  end
  object Image10: TImage
    Left = 148
    Top = 145
    Width = 40
    Height = 37
    OnClick = Image10Click
  end
  object Image11: TImage
    Left = 206
    Top = 145
    Width = 40
    Height = 37
    OnClick = Image11Click
  end
  object Image12: TImage
    Left = 263
    Top = 145
    Width = 40
    Height = 37
    OnClick = Image12Click
  end
  object Image13: TImage
    Left = 322
    Top = 146
    Width = 40
    Height = 37
    OnClick = Image13Click
  end
  object Shape1: TShape
    Left = 25
    Top = 242
    Width = 100
    Height = 2
    Brush.Color = -1
  end
  object Shape2: TShape
    Left = 25
    Top = 256
    Width = 100
    Height = 3
    Brush.Color = clBlack
  end
  object Shape3: TShape
    Left = 25
    Top = 270
    Width = 100
    Height = 4
    Brush.Color = clBlack
  end
  object Image15: TImage
    Left = 144
    Top = 238
    Width = 10
    Height = 10
    OnClick = Image15Click
  end
  object Image16: TImage
    Left = 144
    Top = 253
    Width = 10
    Height = 10
    OnClick = Image16Click
  end
  object Image17: TImage
    Left = 144
    Top = 268
    Width = 10
    Height = 10
    OnClick = Image17Click
  end
  object Label3: TLabel
    Left = 14
    Top = 207
    Width = 86
    Height = 16
    Caption = 'Grubo'#347#263' pisaka'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Image19: TImage
    Left = 261
    Top = 262
    Width = 120
    Height = 30
    OnClick = Image19Click
    OnMouseDown = Image19MouseDown
    OnMouseUp = Image19MouseUp
  end
  object CheckBox1: TCheckBox
    Left = 25
    Top = 73
    Width = 55
    Height = 17
    Caption = 'kolor1'
    TabOrder = 0
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 83
    Top = 73
    Width = 55
    Height = 17
    Caption = 'kolor2'
    TabOrder = 1
    Visible = False
  end
  object CheckBox3: TCheckBox
    Left = 141
    Top = 73
    Width = 55
    Height = 17
    Caption = 'kolor3'
    TabOrder = 2
    Visible = False
  end
  object CheckBox4: TCheckBox
    Left = 199
    Top = 73
    Width = 55
    Height = 17
    Caption = 'kolor4'
    TabOrder = 3
    Visible = False
  end
  object CheckBox5: TCheckBox
    Left = 256
    Top = 73
    Width = 55
    Height = 17
    Caption = 'kolor5'
    TabOrder = 4
    Visible = False
  end
  object CheckBox6: TCheckBox
    Left = 315
    Top = 73
    Width = 55
    Height = 17
    Caption = 'kolor6'
    TabOrder = 5
    Visible = False
  end
  object CheckBox7: TCheckBox
    Left = 32
    Top = 166
    Width = 60
    Height = 17
    Caption = 'ksztalt1'
    TabOrder = 6
    Visible = False
  end
  object CheckBox8: TCheckBox
    Left = 90
    Top = 166
    Width = 60
    Height = 17
    Caption = 'ksztalt2'
    TabOrder = 7
    Visible = False
  end
  object CheckBox9: TCheckBox
    Left = 148
    Top = 166
    Width = 60
    Height = 17
    Caption = 'ksztalt3'
    TabOrder = 8
    Visible = False
  end
  object CheckBox10: TCheckBox
    Left = 206
    Top = 166
    Width = 60
    Height = 17
    Caption = 'ksztalt4'
    TabOrder = 9
    Visible = False
  end
  object CheckBox11: TCheckBox
    Left = 263
    Top = 166
    Width = 60
    Height = 17
    Caption = 'ksztalt5'
    TabOrder = 10
    Visible = False
  end
  object CheckBox12: TCheckBox
    Left = 322
    Top = 166
    Width = 60
    Height = 17
    Caption = 'ksztalt6'
    TabOrder = 11
    Visible = False
  end
  object CheckBox13: TCheckBox
    Left = 174
    Top = 229
    Width = 65
    Height = 17
    Caption = 'grubosc1'
    TabOrder = 12
    Visible = False
  end
  object CheckBox14: TCheckBox
    Left = 174
    Top = 253
    Width = 65
    Height = 17
    Caption = 'grubosc2'
    TabOrder = 13
    Visible = False
  end
  object CheckBox15: TCheckBox
    Left = 174
    Top = 277
    Width = 65
    Height = 17
    Caption = 'grubosc3'
    TabOrder = 14
    Visible = False
  end
end
