unit Podglad_wzorcow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, StrUtils, Math, Menus;
type
  TForm3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Wzorce : array[0..34,0..2,0..599] of Integer;
implementation

uses Main, Ustawienia;
{==============================================================================}
{=====================  WCZYTYWANIE WZORCOW  ==================================}
{==============================================================================}
procedure WczytajWzorce(Ktory_znak : Integer);
var
  plik   : TextFile;
  znak   : string;  //zmienna gdzie beda wrzucane poszczegolne znaki pliku tekstowego
  i, j   : Integer; //iteracje
begin
  if Ktory_znak=0 then  AssignFile(plik, 'Wzorce/a.txt');
  if Ktory_znak=1 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=2 then  AssignFile(plik, 'Wzorce/b.txt');
  if Ktory_znak=3 then  AssignFile(plik, 'Wzorce/c.txt');
  if Ktory_znak=4 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=5 then  AssignFile(plik, 'Wzorce/d.txt');
  if Ktory_znak=6 then  AssignFile(plik, 'Wzorce/e.txt');
  if Ktory_znak=7 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=8 then  AssignFile(plik, 'Wzorce/f.txt');
  if Ktory_znak=9 then  AssignFile(plik, 'Wzorce/g.txt');
  if Ktory_znak=10 then  AssignFile(plik, 'Wzorce/h.txt');
  if Ktory_znak=11 then  AssignFile(plik, 'Wzorce/i.txt');
  if Ktory_znak=12 then  AssignFile(plik, 'Wzorce/j.txt');
  if Ktory_znak=13 then  AssignFile(plik, 'Wzorce/k.txt');
  if Ktory_znak=14 then  AssignFile(plik, 'Wzorce/l.txt');
  if Ktory_znak=15 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=16 then  AssignFile(plik, 'Wzorce/m.txt');
  if Ktory_znak=17 then  AssignFile(plik, 'Wzorce/n.txt');
  if Ktory_znak=18 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=19 then  AssignFile(plik, 'Wzorce/o.txt');
  if Ktory_znak=20 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=21 then  AssignFile(plik, 'Wzorce/p.txt');
  if Ktory_znak=22 then  AssignFile(plik, 'Wzorce/q.txt');
  if Ktory_znak=23 then  AssignFile(plik, 'Wzorce/r.txt');
  if Ktory_znak=24 then  AssignFile(plik, 'Wzorce/s.txt');
  if Ktory_znak=25 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=26 then  AssignFile(plik, 'Wzorce/t.txt');
  if Ktory_znak=27 then  AssignFile(plik, 'Wzorce/u.txt');
  if Ktory_znak=28 then  AssignFile(plik, 'Wzorce/w.txt');
  if Ktory_znak=29 then  AssignFile(plik, 'Wzorce/x.txt');
  if Ktory_znak=30 then  AssignFile(plik, 'Wzorce/y.txt');
  if Ktory_znak=31 then  AssignFile(plik, 'Wzorce/z.txt');
  if Ktory_znak=32 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=33 then  AssignFile(plik, 'Wzorce/�.txt');
  if Ktory_znak=34 then  AssignFile(plik, 'Wzorce/@.txt');

  Reset(plik);
  while not EOF (plik) do
    begin

        readln(plik,znak);
        for j:=1 to 600 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][0][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 600 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][1][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 600 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][2][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
    end;
 Close(plik);
end;
{==============================================================================}
{=========================  PODGLAD WZORCOW  ==================================}
{==============================================================================}
procedure Pokaz(Ktory_znak : Integer);
var
  i, j, licz : Integer;
begin
  Form3.Image1.Canvas.Rectangle(-1,-1,20,30);
  Form3.Image2.Canvas.Rectangle(-1,-1,20,30);
  Form3.Image3.Canvas.Rectangle(-1,-1,20,30);
  Form3.Image4.Canvas.Rectangle(-1,-1,100,150);
  Form3.Image5.Canvas.Rectangle(-1,-1,100,150);
  Form3.Image6.Canvas.Rectangle(-1,-1,100,150);
  licz:=0;
  for i:=0 to 29 do
  begin
    for j:=0 to 19 do
    begin
      if ((Wzorce[Ktory_znak][0][licz]=1) and (Form5.CheckBox1.Checked=True)) then Form3.Image1.Canvas.Pixels[j,i]:=clBlack;
      if ((Wzorce[Ktory_znak][0][licz]=1) and (Form5.CheckBox2.Checked=True)) then Form3.Image1.Canvas.Pixels[j,i]:=clBlue;
      if ((Wzorce[Ktory_znak][0][licz]=1) and (Form5.CheckBox3.Checked=True)) then Form3.Image1.Canvas.Pixels[j,i]:=clRed;
      if ((Wzorce[Ktory_znak][0][licz]=1) and (Form5.CheckBox4.Checked=True)) then Form3.Image1.Canvas.Pixels[j,i]:=clGreen;
      if ((Wzorce[Ktory_znak][0][licz]=1) and (Form5.CheckBox5.Checked=True)) then Form3.Image1.Canvas.Pixels[j,i]:=clYellow;
      if ((Wzorce[Ktory_znak][0][licz]=1) and (Form5.CheckBox6.Checked=True)) then Form3.Image1.Canvas.Pixels[j,i]:=clPurple;

      if ((Wzorce[Ktory_znak][1][licz]=1) and (Form5.CheckBox1.Checked=True)) then Form3.Image2.Canvas.Pixels[j,i]:=clBlack;
      if ((Wzorce[Ktory_znak][1][licz]=1) and (Form5.CheckBox2.Checked=True)) then Form3.Image2.Canvas.Pixels[j,i]:=clBlue;
      if ((Wzorce[Ktory_znak][1][licz]=1) and (Form5.CheckBox3.Checked=True)) then Form3.Image2.Canvas.Pixels[j,i]:=clRed;
      if ((Wzorce[Ktory_znak][1][licz]=1) and (Form5.CheckBox4.Checked=True)) then Form3.Image2.Canvas.Pixels[j,i]:=clGreen;
      if ((Wzorce[Ktory_znak][1][licz]=1) and (Form5.CheckBox5.Checked=True)) then Form3.Image2.Canvas.Pixels[j,i]:=clYellow;
      if ((Wzorce[Ktory_znak][1][licz]=1) and (Form5.CheckBox6.Checked=True)) then Form3.Image2.Canvas.Pixels[j,i]:=clPurple;

      if ((Wzorce[Ktory_znak][2][licz]=1) and (Form5.CheckBox1.Checked=True)) then Form3.Image3.Canvas.Pixels[j,i]:=clBlack;
      if ((Wzorce[Ktory_znak][2][licz]=1) and (Form5.CheckBox2.Checked=True)) then Form3.Image3.Canvas.Pixels[j,i]:=clBlue;
      if ((Wzorce[Ktory_znak][2][licz]=1) and (Form5.CheckBox3.Checked=True)) then Form3.Image3.Canvas.Pixels[j,i]:=clRed;
      if ((Wzorce[Ktory_znak][2][licz]=1) and (Form5.CheckBox4.Checked=True)) then Form3.Image3.Canvas.Pixels[j,i]:=clGreen;
      if ((Wzorce[Ktory_znak][2][licz]=1) and (Form5.CheckBox5.Checked=True)) then Form3.Image3.Canvas.Pixels[j,i]:=clYellow;
      if ((Wzorce[Ktory_znak][2][licz]=1) and (Form5.CheckBox6.Checked=True)) then Form3.Image3.Canvas.Pixels[j,i]:=clPurple;
      inc(licz);
    end;
  end;
  Form3.Image4.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form3.Image1.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  Form3.Image5.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form3.Image2.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  Form3.Image6.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form3.Image3.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
end;

{$R *.dfm}

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  Pokaz(Form3.ComboBox1.ItemIndex);
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Visible:=False;
  Form1.Visible:=True;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Form3.Image7.Width:=370;
  Form3.Image7.Height:=320;
  Form3.Image7.Picture.LoadFromFile('Grafiki/tlo.bmp');
  Form3.Image8.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Up.bmp');
  Form3.Image9.Picture.LoadFromFile('Grafiki/tlo3.bmp');
  WczytajWzorce(0);
  WczytajWzorce(1);
  WczytajWzorce(2);
  WczytajWzorce(3);
  WczytajWzorce(4);
  WczytajWzorce(5);
  WczytajWzorce(6);
  WczytajWzorce(7);
  WczytajWzorce(8);
  WczytajWzorce(9);
  WczytajWzorce(10);
  WczytajWzorce(11);
  WczytajWzorce(12);
  WczytajWzorce(13);
  WczytajWzorce(14);
  WczytajWzorce(15);
  WczytajWzorce(16);
  WczytajWzorce(17);
  WczytajWzorce(18);
  WczytajWzorce(19);
  WczytajWzorce(20);
  WczytajWzorce(21);
  WczytajWzorce(22);
  WczytajWzorce(23);
  WczytajWzorce(24);
  WczytajWzorce(25);
  WczytajWzorce(26);
  WczytajWzorce(27);
  WczytajWzorce(28);
  WczytajWzorce(29);
  WczytajWzorce(30);
  WczytajWzorce(31);
  WczytajWzorce(32);
  WczytajWzorce(33);
  WczytajWzorce(34);
end;

procedure TForm3.Image8Click(Sender: TObject);
begin
  Form3.Visible:=False;
  Form1.Visible:=True;
end;

procedure TForm3.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form3.Image8.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Down.bmp');
end;

procedure TForm3.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form3.Image8.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Up.bmp');
end;

end.
