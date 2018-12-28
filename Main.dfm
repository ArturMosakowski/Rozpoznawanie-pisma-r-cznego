object Form1: TForm1
  Left = 192
  Top = 114
  AlphaBlendValue = 150
  BorderStyle = bsSingle
  Caption = 'Rozpoznawanie pisma r'#281'cznego - Artur Mosakowski 2010'
  ClientHeight = 1160
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image6: TImage
    Left = 0
    Top = 0
    Width = 10
    Height = 10
  end
  object Image2: TImage
    Left = 10
    Top = 10
    Width = 375
    Height = 145
  end
  object Image1: TImage
    Left = 23
    Top = 23
    Width = 349
    Height = 119
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Image3: TImage
    Left = 391
    Top = 8
    Width = 120
    Height = 30
    OnClick = Image3Click
    OnMouseDown = Image3MouseDown
    OnMouseUp = Image3MouseUp
  end
  object Image4: TImage
    Left = 391
    Top = 44
    Width = 120
    Height = 30
    OnClick = Image4Click
    OnMouseDown = Image4MouseDown
    OnMouseUp = Image4MouseUp
  end
  object Image5: TImage
    Left = 391
    Top = 125
    Width = 120
    Height = 30
    OnClick = Image5Click
    OnMouseDown = Image5MouseDown
    OnMouseUp = Image5MouseUp
  end
  object Image7: TImage
    Left = 420
    Top = 292
    Width = 19
    Height = 29
    Visible = False
  end
  object Image8: TImage
    Left = 420
    Top = 327
    Width = 99
    Height = 149
    Visible = False
  end
  object Label2: TLabel
    Left = 391
    Top = 80
    Width = 21
    Height = 16
    Caption = '=?='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Image9: TImage
    Left = 8
    Top = 170
    Width = 349
    Height = 119
    Visible = False
  end
  object Label1: TLabel
    Left = 456
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Label1'
    Transparent = True
    Visible = False
  end
  object Image10: TImage
    Left = 8
    Top = 306
    Width = 349
    Height = 119
    Visible = False
  end
  object Image11: TImage
    Left = 23
    Top = 386
    Width = 349
    Height = 119
    Visible = False
  end
  object Image12: TImage
    Left = 36
    Top = 466
    Width = 349
    Height = 119
    Visible = False
  end
  object Image13: TImage
    Left = 56
    Top = 551
    Width = 349
    Height = 119
    Transparent = True
    Visible = False
  end
  object Image14: TImage
    Left = 72
    Top = 623
    Width = 349
    Height = 119
    Transparent = True
    Visible = False
  end
  object Image15: TImage
    Left = 88
    Top = 703
    Width = 349
    Height = 119
    Transparent = True
    Visible = False
  end
  object Image16: TImage
    Left = 101
    Top = 788
    Width = 349
    Height = 119
    Visible = False
  end
  object Image17: TImage
    Left = 108
    Top = 868
    Width = 349
    Height = 119
    Visible = False
  end
  object Image18: TImage
    Left = 121
    Top = 956
    Width = 349
    Height = 119
    Visible = False
  end
  object Image19: TImage
    Left = 133
    Top = 1034
    Width = 349
    Height = 119
    Visible = False
  end
  object Label3: TLabel
    Left = 24
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label4: TLabel
    Left = 38
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label5: TLabel
    Left = 52
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label6: TLabel
    Left = 66
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label7: TLabel
    Left = 80
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label8: TLabel
    Left = 94
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label9: TLabel
    Left = 108
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label10: TLabel
    Left = 122
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label11: TLabel
    Left = 136
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label12: TLabel
    Left = 150
    Top = 184
    Width = 8
    Height = 13
    Caption = 'O'
    Visible = False
  end
  object Label14: TLabel
    Left = 28
    Top = 78
    Width = 339
    Height = 16
    Caption = 'Prosz'#281' czeka'#263', proces mo'#380'e potrwa'#263' do 1 minuty'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Shape1: TShape
    Left = 391
    Top = 102
    Width = 120
    Height = 3
  end
  object Label13: TLabel
    Left = 393
    Top = 82
    Width = 111
    Height = 24
    Caption = 'aaaaaaaaaa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Button6: TButton
    Left = 456
    Top = 160
    Width = 52
    Height = 17
    Caption = 'Start 10'
    TabOrder = 0
    Visible = False
    OnClick = Button6Click
  end
  object Button8: TButton
    Left = 375
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Rozpoznaj'
    TabOrder = 1
    Visible = False
    OnClick = Button8Click
  end
  object Button2: TButton
    Left = 456
    Top = 176
    Width = 52
    Height = 17
    Caption = 'Start 11'
    TabOrder = 2
    Visible = False
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 375
    Top = 193
    Width = 75
    Height = 25
    Caption = 'Start All'
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 456
    Top = 192
    Width = 52
    Height = 17
    Caption = 'Start 12'
    TabOrder = 4
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 456
    Top = 208
    Width = 52
    Height = 17
    Caption = 'Start 13'
    TabOrder = 5
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 456
    Top = 224
    Width = 52
    Height = 17
    Caption = 'Start 14'
    TabOrder = 6
    Visible = False
    OnClick = Button5Click
  end
  object Button7: TButton
    Left = 456
    Top = 240
    Width = 52
    Height = 17
    Caption = 'Start 15'
    TabOrder = 7
    Visible = False
    OnClick = Button7Click
  end
  object Button10: TButton
    Left = 456
    Top = 256
    Width = 52
    Height = 17
    Caption = 'Start 16'
    TabOrder = 8
    Visible = False
    OnClick = Button10Click
  end
  object Button12: TButton
    Left = 456
    Top = 272
    Width = 52
    Height = 17
    Caption = 'Start 17'
    TabOrder = 9
    Visible = False
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 456
    Top = 288
    Width = 52
    Height = 17
    Caption = 'Start 18'
    TabOrder = 10
    Visible = False
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 456
    Top = 304
    Width = 52
    Height = 17
    Caption = 'Start 19'
    TabOrder = 11
    Visible = False
    OnClick = Button14Click
  end
  object MainMenu1: TMainMenu
    Left = 336
    Top = 96
    object Plik1: TMenuItem
      Caption = '&Plik'
      object Zamknij1: TMenuItem
        Caption = 'Zamknij'
        OnClick = Zamknij1Click
      end
    end
    object Edycja1: TMenuItem
      Caption = '&Edycja'
      object Podgldwzorcw1: TMenuItem
        Caption = 'Podgl'#261'd wzorc'#243'w'
        OnClick = Podgldwzorcw1Click
      end
      object Edycjawzorcw1: TMenuItem
        Caption = 'Edycja wzorc'#243'w'
        OnClick = Edycjawzorcw1Click
      end
      object Statystyka1: TMenuItem
        Caption = 'Statystyka'
        OnClick = Statystyka1Click
      end
    end
    object Ustawienia1: TMenuItem
      Caption = '&Ustawienia'
      OnClick = Ustawienia1Click
    end
    object Info1: TMenuItem
      Caption = '&Info'
      OnClick = Info1Click
    end
  end
end
