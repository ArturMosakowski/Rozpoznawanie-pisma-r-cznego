unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, StrUtils, Math, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    Zamknij1: TMenuItem;
    Edycja1: TMenuItem;
    Podgldwzorcw1: TMenuItem;
    Edycjawzorcw1: TMenuItem;
    Ustawienia1: TMenuItem;
    Info1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Label2: TLabel;
    Statystyka1: TMenuItem;
    Image9: TImage;
    Label1: TLabel;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button6: TButton;
    Button8: TButton;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button10: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Shape1: TShape;
    procedure Podgldwzorcw1Click(Sender: TObject);
    procedure Edycjawzorcw1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5Click(Sender: TObject);
    procedure Zamknij1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4Click(Sender: TObject);
    procedure Statystyka1Click(Sender: TObject);
    procedure Ustawienia1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Info1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1    : TForm1;
  a              : Boolean;  //aktywowanie rysowania (true - rysuj, false - nie rysuj)
  x1, y1         : Integer;  //zmienne wykorzystywane do rysowania
  b              : Integer; //licznik zegara
  Wzorce         : array[0..34,0..11,0..604] of Integer; //tablica wzorcow
  Wagi           : array[0..34,0..24,0..599] of real;  //wagi [nr_neuronu, waga_na_neuronie]
  We             : array[0..34,0..24] of real;  //wejscia do poszczegolnych neuronow
  Wy             : array[0..34,0..24] of real;  //wyjscia z poszczegolnych neuronow
  ktory          : Integer;  //numer wzorca
  beta           : real;  //wspolczynnik beta w funkcji sigmoidalnej
  n              : real;  //wspolczynnik uczenia
  Eps            : array[0..34,0..24] of real;  //bledy na poszczegolnych neuronach
  EpsSieci       : array[0..34] of real;  //blad sieci po epoce
  Epoka          : array[0..34] of Integer;  //numer epoki
  BiezacyWzorzec : array[0..599] of Integer; //biezacy wzorzec
  SPR            : Integer; //sprawdza czy zostal jakis znak do rozpoznania
  PG, LG1, LG2   : Integer; //prawa granica[IMG4], lewa granica[IMG3]
  SzerZnak       : Integer; //szerokosc napisanego znaku
  Staty          : array[0..34] of Integer;  //tablica ze statystykami
  Ustawienia1    : array[0..2] of Integer;  //tablica z ustawieniami aplikacji
  Up, Down       : array[0..99] of Integer;
  Punkty         : array[0..9999] of Integer;
  Lp, Pp         : Integer;
  l              : integer;
  Przedzialy     : array[0..9,0..2] of Integer;
  Ktora_litera   : Integer;
const
  crPisak=1;
implementation

uses Podglad_wzorcow, Edycja_wzorcow, Statystyka, Ustawienia, Info;
{==============================================================================}
{=========================  CZYSZCZENIE EKRANU  ===============================}
{==============================================================================}
procedure CzyscEkran();
begin
  Form1.Image1.Canvas.Pen.Color:=clGray;
  Form1.Image1.Canvas.Brush.Color:=clWhite;
  Form1.Image1.Canvas.Pen.Width:=1;
  Form1.Image1.Canvas.Rectangle(0,0,349,119);
  Form1.Image1.Canvas.MoveTo(0,39);
  Form1.Image1.Canvas.LineTo(349,39);
  Form1.Image1.Canvas.MoveTo(0,79);
  Form1.Image1.Canvas.LineTo(349,79);

  Form1.Image7.Canvas.Brush.Color:=clWhite;
  Form1.Image7.Canvas.Pen.Color:=clWhite;
  Form1.Image7.Canvas.Rectangle(-1,-1,20,30);
  Form1.Image8.Canvas.Brush.Color:=clWhite;
  Form1.Image8.Canvas.Pen.Color:=clWhite;
  Form1.Image8.Canvas.Rectangle(-1,-1,100,150);

  Form1.Label1.Caption:='';
end;
{==============================================================================}
{=========================  WCZYTYWANIE GRAFIK  ===============================}
{==============================================================================}
procedure WczytajGrafiki();
begin
  Form1.Image2.Picture.LoadFromFile('Grafiki/tlo4.bmp');
  Form1.Image3.Picture.LoadFromFile('Grafiki/Buttons/Sprawdz_Up.bmp');
  Form1.Image4.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
  Form1.Image5.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Up.bmp');
  Form1.Image6.Picture.LoadFromFile('Grafiki/tlo.bmp');
end;
{==============================================================================}
{=========================  WCZYTYWANIE WZORCOW  ==============================}
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
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][0][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][1][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][2][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][3][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][4][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][5][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
    end;
 Close(plik);
end;
{==============================================================================}
{=========================  WCZYTYWANIE ANTYWZORCOW  ==========================}
{==============================================================================}
procedure WczytajAntywzorce(Ktory_znak : Integer);
var
  plik   : TextFile;
  znak   : string;  //zmienna gdzie beda wrzucane poszczegolne znaki pliku tekstowego
  i, j   : Integer; //iteracje
begin
  if Ktory_znak=0 then  AssignFile(plik, 'Antywzorce/a.txt');
  if Ktory_znak=1 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=2 then  AssignFile(plik, 'Antywzorce/b.txt');
  if Ktory_znak=3 then  AssignFile(plik, 'Antywzorce/c.txt');
  if Ktory_znak=4 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=5 then  AssignFile(plik, 'Antywzorce/d.txt');
  if Ktory_znak=6 then  AssignFile(plik, 'Antywzorce/e.txt');
  if Ktory_znak=7 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=8 then  AssignFile(plik, 'Antywzorce/f.txt');
  if Ktory_znak=9 then  AssignFile(plik, 'Antywzorce/g.txt');
  if Ktory_znak=10 then  AssignFile(plik, 'Antywzorce/h.txt');
  if Ktory_znak=11 then  AssignFile(plik, 'Antywzorce/i.txt');
  if Ktory_znak=12 then  AssignFile(plik, 'Antywzorce/j.txt');
  if Ktory_znak=13 then  AssignFile(plik, 'Antywzorce/k.txt');
  if Ktory_znak=14 then  AssignFile(plik, 'Antywzorce/l.txt');
  if Ktory_znak=15 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=16 then  AssignFile(plik, 'Antywzorce/m.txt');
  if Ktory_znak=17 then  AssignFile(plik, 'Antywzorce/n.txt');
  if Ktory_znak=18 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=19 then  AssignFile(plik, 'Antywzorce/o.txt');
  if Ktory_znak=20 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=21 then  AssignFile(plik, 'Antywzorce/p.txt');
  if Ktory_znak=22 then  AssignFile(plik, 'Antywzorce/q.txt');
  if Ktory_znak=23 then  AssignFile(plik, 'Antywzorce/r.txt');
  if Ktory_znak=24 then  AssignFile(plik, 'Antywzorce/s.txt');
  if Ktory_znak=25 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=26 then  AssignFile(plik, 'Antywzorce/t.txt');
  if Ktory_znak=27 then  AssignFile(plik, 'Antywzorce/u.txt');
  if Ktory_znak=28 then  AssignFile(plik, 'Antywzorce/w.txt');
  if Ktory_znak=29 then  AssignFile(plik, 'Antywzorce/x.txt');
  if Ktory_znak=30 then  AssignFile(plik, 'Antywzorce/y.txt');
  if Ktory_znak=31 then  AssignFile(plik, 'Antywzorce/z.txt');
  if Ktory_znak=32 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=33 then  AssignFile(plik, 'Antywzorce/�.txt');
  if Ktory_znak=34 then  AssignFile(plik, 'Antywzorce/@.txt');

  Reset(plik);
  while not EOF (plik) do
    begin

        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][6][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][7][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][8][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][9][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][10][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
        readln(plik,znak);
        for j:=1 to 601 do
        begin
          if znak<>'' then
          begin
            Wzorce[Ktory_znak][11][j-1]:=StrToInt(MidBStr(znak, j, 1));
          end;
        end;
    end;
 Close(plik);
end;
{==============================================================================}
{===========================  LOSOWANIE WAG  ==================================}
{==============================================================================}
procedure LosujWagi(Ktory_znak : Integer);
var
  i, j : Integer;  //iteracje
begin
  Randomize;
  for i:=0 to 24 do
  begin
    for j:=0 to 599 do
    begin
      Wagi[Ktory_znak][i][j]:=(Random(200)-100)/1000;
      if Wagi[Ktory_znak][i][j]=0 then Wagi[Ktory_znak][i][j]:=0.0001;
    end;
  end;
end;
{==============================================================================}
{========================  WSTECZNA PROPAGACJA BLEDOW  ========================}
{==============================================================================}
procedure WPB(KtoryZnak : Integer);
var
  i, j, k, l : Integer;  //iteracje
begin

  beta:=1;
  n:=0.1;
{-------------------------------Przetworzenie----------------------------------}
  for i:=0 to 24 do
  begin
   we[KtoryZnak][i]:=0;
   wy[KtoryZnak][i]:=0;
  end;

  for i:=0 to 23 do
  begin
    for j:=0 to 599 do
    begin
      We[KtoryZnak][i]:=We[KtoryZnak][i]+Wzorce[KtoryZnak][ktory][j]*Wagi[KtoryZnak][i][j];
    end;
    Wy[KtoryZnak][i]:=RoundTo(1 / (1 + exp(-beta*(We[KtoryZnak][i]))),-5);
  end;
  for i:=24 to 24 do
  begin
    for j:=0 to 23 do
    begin
      We[KtoryZnak][i]:=We[KtoryZnak][i]+Wy[KtoryZnak][j]*Wagi[KtoryZnak][i][j];
    end;
  end;

  for i:=24 to 24 do
    Wy[KtoryZnak][i]:=RoundTo(1 /(1+exp(-beta*(We[KtoryZnak][i]))),-5);
{------------------Obliczanie bledow na wszystkich neuronach-------------------}
  for i:=0 to 24 do
  begin
   Eps[KtoryZnak][i]:=0;
  end;

 Eps[KtoryZnak][24]:=Wzorce[KtoryZnak][ktory][600]-Wy[KtoryZnak][24];

 for i:=0 to 23 do
   Eps[KtoryZnak][i]:=Eps[KtoryZnak][24]*Wagi[KtoryZnak][24][i];
{--------------------------------Adaptacja wag---------------------------------}
 for i:=0 to 23 do
 begin
   for j:=0 to 599 do
   begin
     Wagi[KtoryZnak][i][j]:=Wagi[KtoryZnak][i][j]+n*Eps[KtoryZnak][i]*(wy[KtoryZnak][i]*(1-wy[KtoryZnak][i]))*Wzorce[KtoryZnak][ktory][j];
   end;
 for k:=24 to 24 do
 begin
   for l:=0 to 23 do
     Wagi[KtoryZnak][k][l]:=Wagi[KtoryZnak][k][l]+n*Eps[KtoryZnak][k]*(wy[KtoryZnak][k]*(1-wy[KtoryZnak][k]))*wy[KtoryZnak][l];
   end;
 end;
{--------------------------------Obliczanie bledow na wyjsciu------------------}
 EpsSieci[KtoryZnak]:=EpsSieci[KtoryZnak]+(Wzorce[KtoryZnak][ktory][600]-Wy[KtoryZnak][24])*(Wzorce[KtoryZnak][ktory][600]-Wy[KtoryZnak][24]);
end;
{==============================================================================}
{================================  UCZENIE SIECI  =============================}
{==============================================================================}
procedure UczSiec(Ktory_znak : Integer);
var
  i, j : Integer;  //iteracje
begin
  Epoka[Ktory_znak]:=1;
  Ktory:=0;
  EpsSieci[Ktory_znak]:=1;
  for j:=0 to 49 do  //ilosc epok
  begin
    for i:=0 to 11 do  //ilosc wzorcow
    begin
      ktory:=i;
      WPB(Ktory_znak);
    end;
    EpsSieci[Ktory_znak]:=RoundTo(sqrt(EpsSieci[Ktory_znak]/(12*1)),-5);
    inc(Epoka[Ktory_znak]);
  end;
end;
{==============================================================================}
{****************  ZAPISYWANIE BIEZACEGO WZORCA BINARNIE  *********************}
{==============================================================================}
procedure ImgToBin();
var
  i, j, licz : Integer;
begin
  licz:=0;
  for i:=0 to 29 do
  begin
    for j:=0 to 19 do
    begin
      if ((Form1.Image7.Canvas.Pixels[j,i]=clBlack) or
         (Form1.Image7.Canvas.Pixels[j,i]=clBlue)   or
         (Form1.Image7.Canvas.Pixels[j,i]=clRed)    or
         (Form1.Image7.Canvas.Pixels[j,i]=clGreen)  or
         (Form1.Image7.Canvas.Pixels[j,i]=clYellow) or
         (Form1.Image7.Canvas.Pixels[j,i]=clPurple)) then BiezacyWzorzec[licz]:=1;
      if ((Form1.Image7.Canvas.Pixels[j,i]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[j,i]<>clBlue)   and
         (Form1.Image7.Canvas.Pixels[j,i]<>clRed)    and
         (Form1.Image7.Canvas.Pixels[j,i]<>clGreen)  and
         (Form1.Image7.Canvas.Pixels[j,i]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[j,i]<>clPurple)) then BiezacyWzorzec[licz]:=0;
      inc(licz);
    end;
  end;
end;

{==============================================================================}
{*****************************  ROZPOZNAWANIE    ******************************}
{==============================================================================}
procedure Rozpoznaj(KtoryZnak : Integer);
var
  i, j : Integer;  //iteracje
begin
beta:=1;
  for i:=0 to 24 do
  begin
   we[KtoryZnak][i]:=0;
   wy[KtoryZnak][i]:=0;
  end;

  for i:=0 to 23 do
  begin
    for j:=0 to 599 do
    begin
      We[KtoryZnak][i]:=We[KtoryZnak][i]+BiezacyWzorzec[j]*Wagi[KtoryZnak][i][j];
    end;
    Wy[KtoryZnak][i]:=RoundTo(1/(1 + exp(-beta*(We[KtoryZnak][i]))),-5);
  end;

    for j:=0 to 23 do
    begin
      We[KtoryZnak][24]:=We[KtoryZnak][24]+Wy[KtoryZnak][j]*Wagi[KtoryZnak][24][j];
    end;

  Wy[KtoryZnak][24]:=RoundTo(1 /(1+exp(-beta*(We[KtoryZnak][24]))),-5);
end;
{==============================================================================}
{***********  WCZYTYWANIE WZORCOW, LOSOWANIE WAG, UCZENIE SIECI    ************}
{==============================================================================}
procedure Start();
begin
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

  WczytajAntywzorce(0);
  WczytajAntywzorce(1);
  WczytajAntywzorce(2);
  WczytajAntywzorce(3);
  WczytajAntywzorce(4);
  WczytajAntywzorce(5);
  WczytajAntywzorce(6);
  WczytajAntywzorce(7);
  WczytajAntywzorce(8);
  WczytajAntywzorce(9);
  WczytajAntywzorce(10);
  WczytajAntywzorce(11);
  WczytajAntywzorce(12);
  WczytajAntywzorce(13);
  WczytajAntywzorce(14);
  WczytajAntywzorce(15);
  WczytajAntywzorce(16);
  WczytajAntywzorce(17);
  WczytajAntywzorce(18);
  WczytajAntywzorce(19);
  WczytajAntywzorce(20);
  WczytajAntywzorce(21);
  WczytajAntywzorce(22);
  WczytajAntywzorce(23);
  WczytajAntywzorce(24);
  WczytajAntywzorce(25);
  WczytajAntywzorce(26);
  WczytajAntywzorce(27);
  WczytajAntywzorce(28);
  WczytajAntywzorce(29);
  WczytajAntywzorce(30);
  WczytajAntywzorce(31);
  WczytajAntywzorce(32);
  WczytajAntywzorce(33);
  WczytajAntywzorce(34);

  LosujWagi(0);
  LosujWagi(1);
  LosujWagi(2);
  LosujWagi(3);
  LosujWagi(4);
  LosujWagi(5);
  LosujWagi(6);
  LosujWagi(7);
  LosujWagi(8);
  LosujWagi(9);
  LosujWagi(10);
  LosujWagi(11);
  LosujWagi(12);
  LosujWagi(13);
  LosujWagi(14);
  LosujWagi(15);
  LosujWagi(16);
  LosujWagi(17);
  LosujWagi(18);
  LosujWagi(19);
  LosujWagi(20);
  LosujWagi(21);
  LosujWagi(22);
  LosujWagi(23);
  LosujWagi(24);
  LosujWagi(25);
  LosujWagi(26);
  LosujWagi(27);
  LosujWagi(28);
  LosujWagi(29);
  LosujWagi(30);
  LosujWagi(31);
  LosujWagi(32);
  LosujWagi(33);
  LosujWagi(34);

  UczSiec(0);
  UczSiec(1);
  UczSiec(2);
  UczSiec(3);
  UczSiec(4);
  UczSiec(5);
  UczSiec(6);
  UczSiec(7);
  UczSiec(8);
  UczSiec(9);
  UczSiec(10);
  UczSiec(11);
  UczSiec(12);
  UczSiec(13);
  UczSiec(14);
  UczSiec(15);
  UczSiec(16);
  UczSiec(17);
  UczSiec(18);
  UczSiec(19);
  UczSiec(20);
  UczSiec(21);
  UczSiec(22);
  UczSiec(23);
  UczSiec(24);
  UczSiec(25);
  UczSiec(26);
  UczSiec(27);
  UczSiec(28);
  UczSiec(29);
  UczSiec(30);
  UczSiec(31);
  UczSiec(32);
  UczSiec(33);
  UczSiec(34);
end;
{==============================================================================}
{===================  WCZYTYWANIE DANYCH STATYSTYCZNYCH  ======================}
{==============================================================================}
procedure WczytajStatystyke();
var
  plik   : TextFile;
  znak   : string;  //zmienna gdzie beda wrzucane poszczegolne znaki pliku tekstowego
  i  : Integer; //iteracje
begin
  AssignFile(plik, 'Statystyka.txt');
  Reset(plik);
  while not EOF (plik) do
  begin
    readln(plik, znak);
    for i:=1 to 35 do
    begin
      if znak<>'' then
      begin
        Staty[i-1]:=StrToInt(znak);
        readln(plik, znak);
      end;
    end;
  end;
 Close(plik);
end;
{==============================================================================}
{===================  ZAPISYWANIE DANYCH STATYSTYCZNYCH  ======================}
{==============================================================================}
procedure ZapiszStatystyke();
var
  plik   : TextFile;
  znak   : string;  //zmienna gdzie beda wrzucane poszczegolne znaki pliku tekstowego
  i, j   : Integer; //iteracje
  tab    : array[0..34] of String;
begin
  for i:=0 to 34 do
  begin
    tab[i]:=IntToStr(Staty[i]);
  end;

  AssignFile(plik, 'Statystyka.txt');
  Rewrite(plik);
  for j:=0 to 34 do
  begin
    WriteLn(plik,tab[j]);
  end;
  Close(plik);
end;
{==============================================================================}
{==========================  WCZYTYWANIE USTAWIEN  ============================}
{==============================================================================}
procedure WczytajUstawienia();
var
  plik   : TextFile;
  znak   : string;  //zmienna gdzie beda wrzucane poszczegolne znaki pliku tekstowego
  i, j   : Integer; //iteracje
begin
  AssignFile(plik, 'Ustawienia.txt');
  Reset(plik);
  while not EOF (plik) do
  begin
    readln(plik, znak);
    for i:=1 to 3 do
    begin
      if znak<>'' then
      begin
        Ustawienia1[i-1]:=StrToInt(znak);
        readln(plik, znak);
      end;
    end;
  end;
 Close(plik);
end;
procedure ImgToImg(Ktory_Img : Integer);
begin
  if Ktory_Img=1 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=10 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image10.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=11 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image11.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=12 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image12.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=13 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image13.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=14 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image14.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=15 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image15.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=16 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image16.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=17 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image17.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=18 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image18.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
  if Ktory_Img=19 then
  begin
    Form1.Image9.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image19.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
  end;
end;
{==============================================================================}
{*******************  WYCINANIE OBSZARU ZAPISANEGO IMG1  **********************}
{==============================================================================}
procedure Wytnij2();
var
  i, j, licznik                     : Integer;  //Iteracje
  Gorna_G, Dolna_G, Lewa_G, Prawa_G : Integer;  //Granice znaku
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image9.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image9.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image9.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image9.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image9.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image9.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image9.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image9.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image9.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image9.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image9.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image9.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image9.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image9.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image9.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image9.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image9.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image9.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image9.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image9.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image9.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image9.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image9.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image9.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{--------------------------  Rysowanie granic  --------------------------------}
  Form1.Image9.Canvas.Pen.Width:=1;
  Form1.Image9.Canvas.Pen.Color:=clSilver;
  Form1.Image9.Canvas.Brush.Color:=clSilver;
  Form1.Image9.Canvas.Rectangle(0,0,Lewa_G,119);
  Form1.Image9.Canvas.Rectangle(0,0,349,Gorna_G);
  Form1.Image9.Canvas.Rectangle(0,Dolna_G,349,119);
  Form1.Image9.Canvas.Rectangle(Prawa_G,1,349,119);
{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image9.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;

  PG:=Prawa_G;
  LG2:=Lewa_G;
  SzerZnak:=Prawa_G-Lewa_G;
end;
{==============================================================================}
{************************  SKRACANIE PRAWEJ GRANICY  **************************}
{==============================================================================}
procedure WZP();
begin
    Form1.Image9.Canvas.Pen.Color:=clSilver;
    Form1.Image9.Canvas.Brush.Color:=clSilver;
    Form1.Image9.Canvas.Rectangle(PG-6,0,349,119);
end;
{==============================================================================}
{************************  SKRACANIE LEWEJ GRANICY   **************************}
{==============================================================================}
procedure WZL(Ktory_Img : Integer);
var
  i, j, licznik, Lewa_G : Integer;
begin

if Ktory_Img=10 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image10.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image10.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image10.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image10.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image10.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image10.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image10.Canvas.Pen.Color:=clSilver;
  Form1.Image10.Canvas.Brush.Color:=clSilver;
  Form1.Image10.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=11 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image11.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image11.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image11.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image11.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image11.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image11.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image11.Canvas.Pen.Color:=clSilver;
  Form1.Image11.Canvas.Brush.Color:=clSilver;
  Form1.Image11.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=12 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image12.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image12.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image12.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image12.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image12.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image12.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image12.Canvas.Pen.Color:=clSilver;
  Form1.Image12.Canvas.Brush.Color:=clSilver;
  Form1.Image12.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=13 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image13.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image13.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image13.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image13.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image13.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image13.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image13.Canvas.Pen.Color:=clSilver;
  Form1.Image13.Canvas.Brush.Color:=clSilver;
  Form1.Image13.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=14 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image14.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image14.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image14.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image14.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image14.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image14.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image14.Canvas.Pen.Color:=clSilver;
  Form1.Image14.Canvas.Brush.Color:=clSilver;
  Form1.Image14.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=15 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image15.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image15.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image15.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image15.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image15.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image15.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image15.Canvas.Pen.Color:=clSilver;
  Form1.Image15.Canvas.Brush.Color:=clSilver;
  Form1.Image15.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=16 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image16.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image16.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image16.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image16.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image16.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image16.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image16.Canvas.Pen.Color:=clSilver;
  Form1.Image16.Canvas.Brush.Color:=clSilver;
  Form1.Image16.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=17 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image17.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image17.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image17.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image17.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image17.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image17.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image17.Canvas.Pen.Color:=clSilver;
  Form1.Image17.Canvas.Brush.Color:=clSilver;
  Form1.Image17.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=18 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image18.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image18.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image18.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image18.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image18.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image18.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image18.Canvas.Pen.Color:=clSilver;
  Form1.Image18.Canvas.Brush.Color:=clSilver;
  Form1.Image18.Canvas.Rectangle(0,0,PG,119);
end;

if Ktory_Img=19 then
begin
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image19.Canvas.Pixels[i,j]=clBlack)  or
            (Form1.Image19.Canvas.Pixels[i,j]=clBlue)   or
            (Form1.Image19.Canvas.Pixels[i,j]=clRed)    or
            (Form1.Image19.Canvas.Pixels[i,j]=clGreen)  or
            (Form1.Image19.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image19.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
  Form1.Image19.Canvas.Pen.Color:=clSilver;
  Form1.Image19.Canvas.Brush.Color:=clSilver;
  Form1.Image19.Canvas.Rectangle(0,0,PG,119);
end;
end;
{==============================================================================}
{************  DZIELENIE OBRAZU ZAPISANEGO NA CZESCI NIEPODZIELNE  ************}
{==============================================================================}
procedure PodzielObraz();
var
  i, j : Integer;
begin
  if Przedzialy[0,2]>0 then
  begin
    Form1.Image10.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image10.Canvas.Pen.Color:=clWhite;
    Form1.Image10.Canvas.Rectangle(0,0,Przedzialy[0,0],119);
    Form1.Image10.Canvas.Rectangle(Przedzialy[0,1]+1,0,349,119);
  end;
  if Przedzialy[1,2]>0 then
  begin
    Form1.Image11.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image11.Canvas.Pen.Color:=clWhite;
    Form1.Image11.Canvas.Rectangle(0,0,Przedzialy[1,0],119);
    Form1.Image11.Canvas.Rectangle(Przedzialy[1,1]+1,0,349,119);
  end;
  if Przedzialy[2,2]>0 then
  begin
    Form1.Image12.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image12.Canvas.Pen.Color:=clWhite;
    Form1.Image12.Canvas.Rectangle(0,0,Przedzialy[2,0],119);
    Form1.Image12.Canvas.Rectangle(Przedzialy[2,1]+1,0,349,119);
  end;
  if Przedzialy[3,2]>0 then
  begin
    Form1.Image13.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image13.Canvas.Pen.Color:=clWhite;
    Form1.Image13.Canvas.Rectangle(0,0,Przedzialy[3,0],119);
    Form1.Image13.Canvas.Rectangle(Przedzialy[3,1]+1,0,349,119);
  end;
  if Przedzialy[4,2]>0 then
  begin
    Form1.Image14.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image14.Canvas.Pen.Color:=clWhite;
    Form1.Image14.Canvas.Rectangle(0,0,Przedzialy[4,0],119);
    Form1.Image14.Canvas.Rectangle(Przedzialy[4,1]+1,0,349,119);
  end;
  if Przedzialy[5,2]>0 then
  begin
    Form1.Image15.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image15.Canvas.Pen.Color:=clWhite;
    Form1.Image15.Canvas.Rectangle(0,0,Przedzialy[5,0],119);
    Form1.Image15.Canvas.Rectangle(Przedzialy[5,1]+1,0,349,119);
  end;
  if Przedzialy[6,2]>0 then
  begin
    Form1.Image16.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image16.Canvas.Pen.Color:=clWhite;
    Form1.Image16.Canvas.Rectangle(0,0,Przedzialy[6,0],119);
    Form1.Image16.Canvas.Rectangle(Przedzialy[6,1]+1,0,349,119);
  end;
  if Przedzialy[7,2]>0 then
  begin
    Form1.Image17.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image17.Canvas.Pen.Color:=clWhite;
    Form1.Image17.Canvas.Rectangle(0,0,Przedzialy[7,0],119);
    Form1.Image17.Canvas.Rectangle(Przedzialy[7,1]+1,0,349,119);
  end;
  if Przedzialy[8,2]>0 then
  begin
    Form1.Image18.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image18.Canvas.Pen.Color:=clWhite;
    Form1.Image18.Canvas.Rectangle(0,0,Przedzialy[8,0],119);
    Form1.Image18.Canvas.Rectangle(Przedzialy[8,1]+1,0,349,119);
  end;
  if Przedzialy[9,2]>0 then
  begin
    Form1.Image19.Canvas.CopyRect(  //gdzie kopiujemy
                                 Rect(0,0,349,119), //jak ma byc wielkosc koncowa
                                 Form1.Image1.Canvas, //zrodlo z jakiego kopiujemy
                                 Rect(0,0,349,119)); //wielkosc poczatkowa (lub wycinek)
    Form1.Image19.Canvas.Pen.Color:=clWhite;
    Form1.Image19.Canvas.Rectangle(0,0,Przedzialy[9,0],119);
    Form1.Image19.Canvas.Rectangle(Przedzialy[9,1]+1,0,349,119);
  end;

  l:=0;
  for i:=0 to 9 do
  begin
    for j:=0 to 2 do
    begin
      Przedzialy[i,j]:=0;
    end;
  end;
end;
{==============================================================================}
{*******************  WYCINANIE OBSZARU ZAPISANEGO IMG10-19  ******************}
{==============================================================================}
procedure Wytnij10_19(Ktory_Img : Integer);
var
  i, j, licznik                     : Integer;  //Iteracje
  Gorna_G, Dolna_G, Lewa_G, Prawa_G : Integer;  //Granice znaku
begin

if Ktory_Img=10 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image10.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image10.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image10.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image10.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image10.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image10.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image10.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image10.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image10.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image10.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image10.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image10.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image10.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image10.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image10.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image10.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image10.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image10.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image10.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image10.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image10.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image10.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image10.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image10.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image10.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=11 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image11.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image11.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image11.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image11.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image11.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image11.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image11.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image11.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image11.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image11.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image11.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image11.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image11.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image11.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image11.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image11.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image11.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image11.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image11.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image11.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image11.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image11.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image11.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image11.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image11.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=12 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image12.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image12.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image12.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image12.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image12.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image12.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image12.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image12.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image12.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image12.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image12.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image12.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image12.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image12.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image12.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image12.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image12.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image12.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image12.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image12.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image12.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image12.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image12.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image12.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image12.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=13 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image13.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image13.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image13.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image13.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image13.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image13.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image13.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image13.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image13.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image13.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image13.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image13.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image13.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image13.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image13.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image13.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image13.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image13.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image13.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image13.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image13.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image13.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image13.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image13.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image13.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=14 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image14.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image14.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image14.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image14.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image14.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image14.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image14.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image14.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image14.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image14.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image14.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image14.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image14.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image14.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image14.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image14.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image14.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image14.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image14.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image14.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image14.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image14.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image14.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image14.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image14.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=15 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image15.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image15.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image15.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image15.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image15.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image15.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image15.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image15.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image15.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image15.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image15.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image15.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image15.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image15.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image15.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image15.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image15.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image15.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image15.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image15.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image15.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image15.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image15.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image15.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image15.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=16 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image16.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image16.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image16.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image16.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image16.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image16.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image16.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image16.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image16.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image16.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image16.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image16.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image16.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image16.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image16.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image16.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image16.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image16.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image16.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image16.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image16.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image16.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image16.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image16.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image16.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=17 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image17.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image17.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image17.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image17.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image17.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image17.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image17.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image17.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image17.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image17.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image17.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image17.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image17.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image17.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image17.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image17.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image17.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image17.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image17.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image17.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image17.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image17.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image17.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image17.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image17.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=18 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image18.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image18.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image18.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image18.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image18.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image18.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image18.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image18.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image18.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image18.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image18.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image18.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image18.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image18.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image18.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image18.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image18.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image18.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image18.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image18.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image18.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image18.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image18.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image18.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image18.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;

if Ktory_Img=19 then
begin
{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 349 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image19.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image19.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image19.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image19.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image19.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image19.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Lewa_G:=i;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Gorna granica  ----------------------------------}
  licznik:=0;
  for j:=0 to 119 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image19.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image19.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image19.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image19.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image19.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image19.Canvas.Pixels[i,j]=clPurple)) then
        begin
          Gorna_G:=j;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Prawa granica  ----------------------------------}
  licznik:=0;
  for i:=349 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form1.Image19.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image19.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image19.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image19.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image19.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image19.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Prawa_G:=i+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{---------------------------  Dolna granica  ----------------------------------}
  licznik:=0;
  for j:=119 downto 0 do
  begin
    if licznik=0 then
    begin
      for i:=0 to 349 do
      begin
        if ((Form1.Image19.Canvas.Pixels[i,j]=clBlack) or
            (Form1.Image19.Canvas.Pixels[i,j]=clBlue) or
            (Form1.Image19.Canvas.Pixels[i,j]=clRed) or
            (Form1.Image19.Canvas.Pixels[i,j]=clGreen) or
            (Form1.Image19.Canvas.Pixels[i,j]=clYellow) or
            (Form1.Image19.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;

{-----------------------------  Skalowanie  -----------------------------------}
  Form1.Image7.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form1.Image19.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form1.Image7.Canvas.Pixels[i,j]<>clBlack) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clBlue) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clRed) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clGreen) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clYellow) and
         (Form1.Image7.Canvas.Pixels[i,j]<>clPurple)) then
        Form1.Image7.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
  Form1.Image8.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,99,149), //jak ma byc wielkosc koncowa
                               Form1.Image7.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(0,0,19,29)); //wielkosc poczatkowa (lub wycinek)
  LG1:=Lewa_G;
end;
end;
{==============================================================================}
{*****************  PETLA WYKONYWANA PRZY ROZPOZNAWANIU ZNAKU  ****************}
{==============================================================================}
procedure Petla(Ktory : Integer);
begin
if Ktory=10 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(10);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(10);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label3.Caption:=Form1.Label3.Caption+Form1.Label2.Caption;
      WZL(10);
      Wytnij10_19(10);
      ImgToImg(10);
      Wytnij2();
      Petla(10);
    end;
  end;
end;

if Ktory=11 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(11);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(11);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label4.Caption:=Form1.Label4.Caption+Form1.Label2.Caption;
      WZL(11);
      Wytnij10_19(11);
      ImgToImg(11);
      Wytnij2();
      Petla(11);
    end;
  end;
end;

if Ktory=12 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(12);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(12);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(12);
      Wytnij10_19(12);
      ImgToImg(12);
      Wytnij2();
      Petla(12);
    end;
  end;
end;

if Ktory=13 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(13);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(13);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(13);
      Wytnij10_19(13);
      ImgToImg(13);
      Wytnij2();
      Petla(13);
    end;
  end;
end;

if Ktory=14 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(14);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(14);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(14);
      Wytnij10_19(14);
      ImgToImg(14);
      Wytnij2();
      Petla(14);
    end;
  end;
end;

if Ktory=15 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(15);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(15);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(15);
      Wytnij10_19(15);
      ImgToImg(15);
      Wytnij2();
      Petla(15);
    end;
  end;
end;

if Ktory=16 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(16);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(16);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(16);
      Wytnij10_19(16);
      ImgToImg(16);
      Wytnij2();
      Petla(16);
    end;
  end;
end;

if Ktory=17 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(17);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(17);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(17);
      Wytnij10_19(17);
      ImgToImg(17);
      Wytnij2();
      Petla(17);
    end;
  end;
end;

if Ktory=18 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(18);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(18);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(18);
      Wytnij10_19(18);
      ImgToImg(18);
      Wytnij2();
      Petla(18);
    end;
  end;
end;

if Ktory=19 then
begin
  if (SzerZnak>=70) and (SzerZnak<349) then
  begin
    WZP();
    Wytnij2();
    Petla(19);
  end;
  if (SzerZnak<70) and (SzerZnak>0) then
  begin
    Wytnij2();
    Form1.Button8.Click();
    if Form1.Label2.Caption='=?=' then
    begin
      WZP();
      Wytnij2();
      Petla(19);
    end;
    if Form1.Label2.Caption<>'=?=' then
    begin
      Form1.Label5.Caption:=Form1.Label5.Caption+Form1.Label2.Caption;
      WZL(19);
      Wytnij10_19(19);
      ImgToImg(19);
      Wytnij2();
      Petla(19);
    end;
  end;
end;
end;
{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  Wytnij10_19(16);
  ImgToImg(16);
  Wytnij2();
  //Petla(16);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label9.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label9.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Wytnij10_19(17);
  ImgToImg(17);
  Wytnij2();
  //Petla(17);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label10.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label10.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Wytnij10_19(18);
  ImgToImg(18);
  Wytnij2();
  //Petla(18);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label11.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label11.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Wytnij10_19(19);
  ImgToImg(19);
  Wytnij2();
  //Petla(19);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label12.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label12.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  PodzielObraz();
  CzyscEkran();
  Form1.Label3.Caption:='';
  Form1.Label4.Caption:='';
  Form1.Label5.Caption:='';
  Form1.Label6.Caption:='';
  Form1.Label7.Caption:='';
  Form1.Label8.Caption:='';
  Form1.Label9.Caption:='';
  Form1.Label10.Caption:='';
  Form1.Label11.Caption:='';
  Form1.Label12.Caption:='';
  Form1.Label13.Caption:='';
  Form1.Button6.Click();
  if ktora_litera>=2 then Form1.Button2.Click();
  if ktora_litera>=3 then Form1.Button3.Click();
  if ktora_litera>=4 then Form1.Button4.Click();
  if ktora_litera>=5 then Form1.Button5.Click();
  if ktora_litera>=6 then Form1.Button7.Click();
  if ktora_litera>=7 then Form1.Button10.Click();
  if ktora_litera>=8 then Form1.Button12.Click();
  if ktora_litera>=9 then Form1.Button13.Click();
  if ktora_litera>=10 then Form1.Button14.Click();
  ktora_litera:=0;
  Form1.Label13.Caption:=Form1.Label3.Caption+Form1.Label4.Caption+
                         Form1.Label5.Caption+Form1.Label6.Caption+
                         Form1.Label7.Caption+Form1.Label8.Caption+
                         Form1.Label9.Caption+Form1.Label10.Caption+
                         Form1.Label11.Caption+Form1.Label12.Caption+' ';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Wytnij10_19(11);
  ImgToImg(11);
  Wytnij2();
  //Petla(11);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label4.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label4.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Wytnij10_19(12);
  ImgToImg(12);
  Wytnij2();
  //Petla(12);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label5.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label5.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Wytnij10_19(13);
  ImgToImg(13);
  Wytnij2();
  //Petla(13);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label6.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label6.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Wytnij10_19(14);
  ImgToImg(14);
  Wytnij2();
  //Petla(14);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label7.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label7.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Wytnij10_19(10);
  ImgToImg(10);
  Wytnij2();
  //Petla(10);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label3.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label3.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Wytnij10_19(15);
  ImgToImg(15);
  Wytnij2();
  //Petla(15);
  Form1.Button8.Click();
  if Form1.Label2.Caption='=?=' then Form1.Label8.Caption:=' ';
  if Form1.Label2.Caption<>'=?=' then Form1.Label8.Caption:=Form1.Label2.Caption;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  tmp  : Real;
  i, k : Integer;
begin
  ImgToBin();
  Rozpoznaj(0);
  Rozpoznaj(1);
  Rozpoznaj(2);
  Rozpoznaj(3);
  Rozpoznaj(4);
  Rozpoznaj(5);
  Rozpoznaj(6);
  Rozpoznaj(7);
  Rozpoznaj(8);
  Rozpoznaj(9);
  Rozpoznaj(10);
  Rozpoznaj(11);
  Rozpoznaj(12);
  Rozpoznaj(13);
  Rozpoznaj(14);
  Rozpoznaj(15);
  Rozpoznaj(16);
  Rozpoznaj(17);
  Rozpoznaj(18);
  Rozpoznaj(19);
  Rozpoznaj(20);
  Rozpoznaj(21);
  Rozpoznaj(22);
  Rozpoznaj(23);
  Rozpoznaj(24);
  Rozpoznaj(25);
  Rozpoznaj(26);
  Rozpoznaj(27);
  Rozpoznaj(28);
  Rozpoznaj(29);
  Rozpoznaj(30);
  Rozpoznaj(31);
  Rozpoznaj(32);
  Rozpoznaj(33);
  Rozpoznaj(34);
  tmp:=0;
  for i:=0 to 34 do
  begin
    if tmp< Wy[i][24] then
    begin
      tmp:=Wy[i][24];
      k:=i;
    end;
  end;
  case k of
  0: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='a';
         Inc(Staty[0]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  1: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='�';
         Inc(Staty[1]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  2: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='b';
         Inc(Staty[2]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  3: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='c';
         Inc(Staty[3]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  4: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='�';
         Inc(Staty[4]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  5: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='d';
         Inc(Staty[5]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  6: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='e';
         Inc(Staty[6]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  7: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='�';
         Inc(Staty[7]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  8: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='f';
         Inc(Staty[8]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  9: begin
       if tmp>0.94 then
       begin
         Form1.Label2.Caption:='g';
         Inc(Staty[9]);
         ZapiszStatystyke();
       end;
       if tmp<0.94 then Form1.Label2.Caption:='=?=';
     end;
  10: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='h';
          Inc(Staty[10]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  11: begin
       if tmp>0.94 then
       begin
          Form1.Label2.Caption:='i';
          Inc(Staty[11]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  12: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='j';
          Inc(Staty[12]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  13: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='k';
          Inc(Staty[13]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  14: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='l';
          Inc(Staty[14]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  15: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='�';
          Inc(Staty[15]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  16: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='m';
          Inc(Staty[16]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  17: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='n';
          Inc(Staty[17]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  18: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='�';
          Inc(Staty[18]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  19: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='o';
          Inc(Staty[19]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  20: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='�';
          Inc(Staty[20]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  21: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='p';
          Inc(Staty[21]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  22: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='q';
          Inc(Staty[22]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  23: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='r';
          Inc(Staty[23]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  24: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='s';
          Inc(Staty[24]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  25: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='�';
          Inc(Staty[25]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  26: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='t';
          Inc(Staty[26]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  27: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='u';
          Inc(Staty[27]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  28: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='w';
          Inc(Staty[28]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  29: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='x';
          Inc(Staty[29]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  30: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='y';
          Inc(Staty[30]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  31: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='z';
          Inc(Staty[31]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  32: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='�';
          Inc(Staty[32]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  33: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='�';
          Inc(Staty[33]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  34: begin
        if tmp>0.94 then
        begin
          Form1.Label2.Caption:='@';
          Inc(Staty[34]);
          ZapiszStatystyke();
        end;
        if tmp<0.94 then Form1.Label2.Caption:='=?=';
      end;
  end;
end;

procedure TForm1.Edycjawzorcw1Click(Sender: TObject);
begin
  Form2.Visible:=True;
  Form1.Visible:=False;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i, j : Integer;
begin
  WczytajGrafiki();
  CzyscEkran();
  Form1.Image6.Width:=800;
  Form1.Image6.Height:=230;
  Form1.Height:=215;
  Start();
  WczytajStatystyke();
  Form1.Label2.Caption:='';
  WczytajUstawienia();
  Form1.Label1.Caption:='';
  ktora_litera:=0;
  l:=0;
  for i:=0 to 9 do
  begin
    for j:=0 to 2 do
    begin
      Przedzialy[i,j]:=0;
    end;
  end;
  Form1.Label3.Caption:='';
  Form1.Label4.Caption:='';
  Form1.Label5.Caption:='';
  Form1.Label6.Caption:='';
  Form1.Label7.Caption:='';
  Form1.Label8.Caption:='';
  Form1.Label9.Caption:='';
  Form1.Label10.Caption:='';
  Form1.Label11.Caption:='';
  Form1.Label12.Caption:='';
  Form1.Label13.Caption:='';
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=True;
  Form1.Label13.Caption:='';
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Form5.CheckBox1.Checked=True) then
  begin
    if (Form5.CheckBox7.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Kredka_1.cur');
    if (Form5.CheckBox8.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Marker_1.cur');
    if (Form5.CheckBox9.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Palec_1.cur');
    if (Form5.CheckBox10.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Pioro_1.cur');
    if (Form5.CheckBox11.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_11.cur');
    if (Form5.CheckBox12.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_21.cur');
  end;
  if (Form5.CheckBox2.Checked=True) then
  begin
    if (Form5.CheckBox7.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Kredka_2.cur');
    if (Form5.CheckBox8.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Marker_2.cur');
    if (Form5.CheckBox9.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Palec_2.cur');
    if (Form5.CheckBox10.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Pioro_2.cur');
    if (Form5.CheckBox11.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_12.cur');
    if (Form5.CheckBox12.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_22.cur');
  end;
  if (Form5.CheckBox3.Checked=True) then
  begin
    if (Form5.CheckBox7.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Kredka_3.cur');
    if (Form5.CheckBox8.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Marker_3.cur');
    if (Form5.CheckBox9.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Palec_3.cur');
    if (Form5.CheckBox10.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Pioro_3.cur');
    if (Form5.CheckBox11.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_13.cur');
    if (Form5.CheckBox12.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_23.cur');
  end;
  if (Form5.CheckBox4.Checked=True) then
  begin
    if (Form5.CheckBox7.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Kredka_4.cur');
    if (Form5.CheckBox8.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Marker_4.cur');
    if (Form5.CheckBox9.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Palec_4.cur');
    if (Form5.CheckBox10.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Pioro_4.cur');
    if (Form5.CheckBox11.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_14.cur');
    if (Form5.CheckBox12.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_24.cur');
  end;
  if (Form5.CheckBox5.Checked=True) then
  begin
    if (Form5.CheckBox7.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Kredka_5.cur');
    if (Form5.CheckBox8.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Marker_5.cur');
    if (Form5.CheckBox9.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Palec_5.cur');
    if (Form5.CheckBox10.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Pioro_5.cur');
    if (Form5.CheckBox11.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_15.cur');
    if (Form5.CheckBox12.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_25.cur');
  end;
  if (Form5.CheckBox6.Checked=True) then
  begin
    if (Form5.CheckBox7.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Kredka_6.cur');
    if (Form5.CheckBox8.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Marker_6.cur');
    if (Form5.CheckBox9.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Palec_6.cur');
    if (Form5.CheckBox10.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Pioro_6.cur');
    if (Form5.CheckBox11.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_16.cur');
    if (Form5.CheckBox12.Checked=True) then
      Screen.Cursors[crPisak]:=LoadCursorFromFile('Grafiki\Opcje\Kursory\Strzalka_26.cur');
  end;

  Form1.Image1.Cursor:=crPisak;

  if Form5.CheckBox13.Checked=True then Form1.Image1.Canvas.Pen.Width:=2;
  if Form5.CheckBox14.Checked=True then Form1.Image1.Canvas.Pen.Width:=3;
  if Form5.CheckBox15.Checked=True then Form1.Image1.Canvas.Pen.Width:=4;

  if Form5.CheckBox1.Checked=True then Form1.Image1.Canvas.Pen.Color:=clBlack;
  if Form5.CheckBox2.Checked=True then Form1.Image1.Canvas.Pen.Color:=clBlue;
  if Form5.CheckBox3.Checked=True then Form1.Image1.Canvas.Pen.Color:=clRed;
  if Form5.CheckBox4.Checked=True then Form1.Image1.Canvas.Pen.Color:=clGreen;
  if Form5.CheckBox5.Checked=True then Form1.Image1.Canvas.Pen.Color:=clYellow;
  if Form5.CheckBox6.Checked=True then Form1.Image1.Canvas.Pen.Color:=clPurple;

  if (a=true) then
  begin
    Image1.Canvas.MoveTo(x1,y1);
    Image1.Canvas.LineTo(x,y);
    Punkty[l]:=X;
    inc(l);
  end;
  x1:=x;
  y1:=y;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, j : Integer;
begin
  a:=False;

  Pp:=0;
  Lp:=1000;

  if ktora_litera=0 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    Przedzialy[0,0]:=Lp;
    Przedzialy[0,1]:=Pp;
    Przedzialy[0,2]:=Lp+Pp;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;


  if ktora_litera=1 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if Lp+Pp>Przedzialy[0,2] then
    begin
      Przedzialy[1,0]:=Lp;
      Przedzialy[1,1]:=Pp;
      Przedzialy[1,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=2 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) then
    begin
      Przedzialy[2,0]:=Lp;
      Przedzialy[2,1]:=Pp;
      Przedzialy[2,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=3 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) then
    begin
      Przedzialy[3,0]:=Lp;
      Przedzialy[3,1]:=Pp;
      Przedzialy[3,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=4 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) and
       (Lp+pP>Przedzialy[3,2]) then
    begin
      Przedzialy[4,0]:=Lp;
      Przedzialy[4,1]:=Pp;
      Przedzialy[4,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=5 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) and
       (Lp+pP>Przedzialy[3,2]) and (Lp+pP>Przedzialy[4,2]) then
    begin
      Przedzialy[5,0]:=Lp;
      Przedzialy[5,1]:=Pp;
      Przedzialy[5,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=6 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) and
       (Lp+pP>Przedzialy[3,2]) and (Lp+pP>Przedzialy[4,2]) and (Lp+pP>Przedzialy[5,2])then
    begin
      Przedzialy[6,0]:=Lp;
      Przedzialy[6,1]:=Pp;
      Przedzialy[6,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=7 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) and
       (Lp+pP>Przedzialy[3,2]) and (Lp+pP>Przedzialy[4,2]) and (Lp+pP>Przedzialy[5,2]) and
       (Lp+pP>Przedzialy[6,2]) then
    begin
      Przedzialy[7,0]:=Lp;
      Przedzialy[7,1]:=Pp;
      Przedzialy[7,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=8 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) and
       (Lp+pP>Przedzialy[3,2]) and (Lp+pP>Przedzialy[4,2]) and (Lp+pP>Przedzialy[5,2]) and
       (Lp+pP>Przedzialy[6,2]) and (Lp+pP>Przedzialy[7,2]) then
    begin
      Przedzialy[8,0]:=Lp;
      Przedzialy[8,1]:=Pp;
      Przedzialy[8,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  if ktora_litera=9 then
  begin
    for i:=0 to 9999 do
    begin
      if Pp<Punkty[i] then Pp:=Punkty[i];
      if (Lp>Punkty[i]) and (Punkty[i]<>0) then Lp:=Punkty[i];
    end;
    if (Lp+pP>Przedzialy[0,2]) and (Lp+pP>Przedzialy[1,2]) and (Lp+pP>Przedzialy[2,2]) and
       (Lp+pP>Przedzialy[3,2]) and (Lp+pP>Przedzialy[4,2]) and (Lp+pP>Przedzialy[5,2]) and
       (Lp+pP>Przedzialy[6,2]) and (Lp+pP>Przedzialy[7,2]) and (Lp+pP>Przedzialy[8,2])then
    begin
      Przedzialy[9,0]:=Lp;
      Przedzialy[9,1]:=Pp;
      Przedzialy[9,2]:=Lp+Pp;
    end;
    for j:=0 to 9999 do
    begin
      Punkty[j]:=0;
      l:=0;
    end;
  end;

  inc(ktora_litera);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  PodzielObraz();
  CzyscEkran();
  Form1.Label3.Caption:='';
  Form1.Label4.Caption:='';
  Form1.Label5.Caption:='';
  Form1.Label6.Caption:='';
  Form1.Label7.Caption:='';
  Form1.Label8.Caption:='';
  Form1.Label9.Caption:='';
  Form1.Label10.Caption:='';
  Form1.Label11.Caption:='';
  Form1.Label12.Caption:='';
  Form1.Label13.Caption:='';
  Form1.Button6.Click();
  if ktora_litera>=2 then Form1.Button2.Click();
  if ktora_litera>=3 then Form1.Button3.Click();
  if ktora_litera>=4 then Form1.Button4.Click();
  if ktora_litera>=5 then Form1.Button5.Click();
  if ktora_litera>=6 then Form1.Button7.Click();
  if ktora_litera>=7 then Form1.Button10.Click();
  if ktora_litera>=8 then Form1.Button12.Click();
  if ktora_litera>=9 then Form1.Button13.Click();
  if ktora_litera>=10 then Form1.Button14.Click();
  ktora_litera:=0;
  Form1.Label13.Caption:=Form1.Label3.Caption+Form1.Label4.Caption+
                         Form1.Label5.Caption+Form1.Label6.Caption+
                         Form1.Label7.Caption+Form1.Label8.Caption+
                         Form1.Label9.Caption+Form1.Label10.Caption+
                         Form1.Label11.Caption+Form1.Label12.Caption+' ';
  Form1.Label14.Visible:=False;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Image3.Picture.LoadFromFile('Grafiki/Buttons/Sprawdz_Down.bmp');
  Form1.Label14.Visible:=True;
end;

procedure TForm1.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Image3.Picture.LoadFromFile('Grafiki/Buttons/Sprawdz_Up.bmp');
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  CzyscEkran();
  ktora_litera:=0;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Image4.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Down.bmp');
end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Image4.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  ZapiszStatystyke();
  Close();
end;

procedure TForm1.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Image5.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Down.bmp');
end;

procedure TForm1.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.Image5.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Up.bmp');
end;

procedure TForm1.Info1Click(Sender: TObject);
begin
  Form1.AlphaBlend:=True;
  Form1.Enabled:=False;
  Form6.Visible:=True;
end;

procedure TForm1.Podgldwzorcw1Click(Sender: TObject);
begin
  Form3.Visible:=True;
  Form1.Visible:=False;
end;

procedure TForm1.Statystyka1Click(Sender: TObject);
begin
  Form4.Visible:=True;
  Form1.Visible:=False;
end;

procedure TForm1.Ustawienia1Click(Sender: TObject);
begin
  Form5.Visible:=True;
  Form1.Visible:=False;
end;

procedure TForm1.Zamknij1Click(Sender: TObject);
begin
  Close();
end;

end.
