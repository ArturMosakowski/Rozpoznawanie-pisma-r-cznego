unit Edycja_wzorcow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
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
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image65: TImage;
    Image66: TImage;
    Image67: TImage;
    Image68: TImage;
    Image69: TImage;
    Image70: TImage;
    Image71: TImage;
    Image72: TImage;
    Image73: TImage;
    Image74: TImage;
    Image75: TImage;
    Image76: TImage;
    Image77: TImage;
    Image78: TImage;
    Image79: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Image80: TImage;
    Image81: TImage;
    Image82: TImage;
    Image83: TImage;
    Image84: TImage;
    Image85: TImage;
    Image86: TImage;
    Image87: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image36MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image36MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image37MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image38MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image39MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image41MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image42MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image43MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image44MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image45MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image46MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image47MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image48MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image49MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image50MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image51MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image52MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image53MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image54MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image55MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image56MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image57MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image58MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image59MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image60MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image61MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image62MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image63MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image64MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image65MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image66MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image67MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image68MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image69MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image70MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image37MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image38MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image39MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image40MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image40MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image41MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image42MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image43MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image44MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image45MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image46MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image47MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image48MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image49MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image50MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image51MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image52MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image53MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image54MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image55MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image56MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image57MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image58MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image59MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image60MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image61MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image62MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image63MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image64MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image65MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image66MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image67MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image68MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image69MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image70MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image72MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image73MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image72MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image73MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image74MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image74MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image74MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image75MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image76MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image75MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image76MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image75MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image76MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image41Click(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure Image43Click(Sender: TObject);
    procedure Image44Click(Sender: TObject);
    procedure Image45Click(Sender: TObject);
    procedure Image46Click(Sender: TObject);
    procedure Image47Click(Sender: TObject);
    procedure Image48Click(Sender: TObject);
    procedure Image49Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image53Click(Sender: TObject);
    procedure Image54Click(Sender: TObject);
    procedure Image55Click(Sender: TObject);
    procedure Image56Click(Sender: TObject);
    procedure Image57Click(Sender: TObject);
    procedure Image58Click(Sender: TObject);
    procedure Image59Click(Sender: TObject);
    procedure Image60Click(Sender: TObject);
    procedure Image61Click(Sender: TObject);
    procedure Image62Click(Sender: TObject);
    procedure Image63Click(Sender: TObject);
    procedure Image64Click(Sender: TObject);
    procedure Image65Click(Sender: TObject);
    procedure Image66Click(Sender: TObject);
    procedure Image67Click(Sender: TObject);
    procedure Image68Click(Sender: TObject);
    procedure Image69Click(Sender: TObject);
    procedure Image70Click(Sender: TObject);
    procedure Image36Click(Sender: TObject);
    procedure Image37Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Image40Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image80MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image80MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image80Click(Sender: TObject);
    procedure Image81MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image81MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image81Click(Sender: TObject);
    procedure Image82MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image83MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image84MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image82MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image83MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image84MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image82Click(Sender: TObject);
    procedure Image83Click(Sender: TObject);
    procedure Image84Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form2            : TForm2;
  Licz             : Integer;
  a                : Boolean;  //aktywowanie rysowania (true - rysuj, false - nie rysuj)
  x1, y1           : integer;  //zmienne wykorzystywane do rysowania
  Ktory_zapisujemy : Integer;  //numer znaku zapisywanego do pliku ze wzorcami
  BiezacyWzorzec   : array[0..2,0..599] of Integer; //biezacy wzorzec
  Czy_zapisany     : array[0..2] of Integer;
const
  crPisak=1;
implementation

uses Main, Ustawienia;




procedure CzyscEkran(ktory_image : Integer);
begin
  if ktory_image=1 then
  begin
    Form2.Image74.Canvas.Pen.Color:=clGray;
    Form2.Image74.Canvas.Pen.Width:=1;
    Form2.Image74.Canvas.Rectangle(0,0,120,120);
    Form2.Image74.Canvas.MoveTo(0,39);
    Form2.Image74.Canvas.LineTo(120,39);
    Form2.Image74.Canvas.MoveTo(0,79);
    Form2.Image74.Canvas.LineTo(120,79);
    Form2.Image77.Canvas.Rectangle(0,0,19,29);
  end;
  if ktory_image=2 then
  begin
    Form2.Image75.Canvas.Pen.Color:=clGray;
    Form2.Image75.Canvas.Pen.Width:=1;
    Form2.Image75.Canvas.Rectangle(0,0,120,120);
    Form2.Image75.Canvas.MoveTo(0,39);
    Form2.Image75.Canvas.LineTo(120,39);
    Form2.Image75.Canvas.MoveTo(0,79);
    Form2.Image75.Canvas.LineTo(120,79);
    Form2.Image78.Canvas.Rectangle(0,0,19,29);
  end;
  if ktory_image=3 then
  begin
    Form2.Image76.Canvas.Pen.Color:=clGray;
    Form2.Image76.Canvas.Pen.Width:=1;
    Form2.Image76.Canvas.Rectangle(0,0,120,120);
    Form2.Image76.Canvas.MoveTo(0,39);
    Form2.Image76.Canvas.LineTo(120,39);
    Form2.Image76.Canvas.MoveTo(0,79);
    Form2.Image76.Canvas.LineTo(120,79);
    Form2.Image79.Canvas.Rectangle(0,0,19,29);
  end;
end;

procedure WczytajGrafiki();
begin
  Form2.Image71.Picture.LoadFromFile('Grafiki/tlo1.bmp');
  Form2.Image86.Picture.LoadFromFile('Grafiki/tlo2.bmp');
  Form2.Image72.Picture.LoadFromFile('Grafiki/Buttons/Poprzedni_Up.bmp');
  Form2.Image73.Picture.LoadFromFile('Grafiki/Buttons/Nastepny_Up.bmp');
  Form2.Image80.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Up.bmp');
  Form2.Image81.Picture.LoadFromFile('Grafiki/Buttons/Kasuj_wzorce_Up.bmp');
  Form2.Image82.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
  Form2.Image83.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
  Form2.Image84.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
  Form2.Image87.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
  Form2.Image85.Picture.LoadFromFile('Grafiki/tlo.bmp');

  Form2.Image1.Left:=187;
  Form2.Image1.Top:=27;
  Form2.Image1.Picture.LoadFromFile('Grafiki/ABC/a.bmp');
  Form2.Image36.Left:=184;
  Form2.Image36.Top:=95;
  Form2.Image36.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image2.Left:=187+56;
  Form2.Image2.Top:=27;
  Form2.Image2.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image37.Left:=184+56;
  Form2.Image37.Top:=95;
  Form2.Image37.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image3.Left:=187+2*56;
  Form2.Image3.Top:=27;
  Form2.Image3.Picture.LoadFromFile('Grafiki/ABC/b.bmp');
  Form2.Image38.Left:=184+2*56;
  Form2.Image38.Top:=95;
  Form2.Image38.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image4.Left:=187+3*56;
  Form2.Image4.Top:=27;
  Form2.Image4.Picture.LoadFromFile('Grafiki/ABC/c.bmp');
  Form2.Image39.Left:=184+3*56;
  Form2.Image39.Top:=95;
  Form2.Image39.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image5.Left:=187+4*56;
  Form2.Image5.Top:=27;
  Form2.Image5.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image40.Left:=184+4*56;
  Form2.Image40.Top:=95;
  Form2.Image40.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image6.Left:=187+5*56;
  Form2.Image6.Top:=27;
  Form2.Image6.Picture.LoadFromFile('Grafiki/ABC/d.bmp');
  Form2.Image41.Left:=184+5*56;
  Form2.Image41.Top:=95;
  Form2.Image41.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image7.Left:=187+6*56;
  Form2.Image7.Top:=27;
  Form2.Image7.Picture.LoadFromFile('Grafiki/ABC/e.bmp');
  Form2.Image42.Left:=184+6*56;
  Form2.Image42.Top:=95;
  Form2.Image42.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image8.Left:=187+7*56;
  Form2.Image8.Top:=27;
  Form2.Image8.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image43.Left:=184+7*56;
  Form2.Image43.Top:=95;
  Form2.Image43.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image9.Left:=187+8*56;
  Form2.Image9.Top:=27;
  Form2.Image9.Picture.LoadFromFile('Grafiki/ABC/f.bmp');
  Form2.Image44.Left:=184+8*56;
  Form2.Image44.Top:=95;
  Form2.Image44.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image10.Left:=187+9*56;
  Form2.Image10.Top:=27;
  Form2.Image10.Picture.LoadFromFile('Grafiki/ABC/g.bmp');
  Form2.Image45.Left:=184+9*56;
  Form2.Image45.Top:=95;
  Form2.Image45.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image11.Left:=187+10*56;
  Form2.Image11.Top:=27;
  Form2.Image11.Picture.LoadFromFile('Grafiki/ABC/h.bmp');
  Form2.Image46.Left:=184+10*56;
  Form2.Image46.Top:=95;
  Form2.Image46.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image12.Left:=187+11*56;
  Form2.Image12.Top:=27;
  Form2.Image12.Picture.LoadFromFile('Grafiki/ABC/i.bmp');
  Form2.Image47.Left:=184+11*56;
  Form2.Image47.Top:=95;
  Form2.Image47.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image13.Left:=187+12*56;
  Form2.Image13.Top:=27;
  Form2.Image13.Picture.LoadFromFile('Grafiki/ABC/j.bmp');
  Form2.Image48.Left:=184+12*56;
  Form2.Image48.Top:=95;
  Form2.Image48.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image14.Left:=187+13*56;
  Form2.Image14.Top:=27;
  Form2.Image14.Picture.LoadFromFile('Grafiki/ABC/k.bmp');
  Form2.Image49.Left:=184+13*56;
  Form2.Image49.Top:=95;
  Form2.Image49.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image15.Left:=187+14*56;
  Form2.Image15.Top:=27;
  Form2.Image15.Picture.LoadFromFile('Grafiki/ABC/l.bmp');
  Form2.Image50.Left:=184+14*56;
  Form2.Image50.Top:=95;
  Form2.Image50.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image16.Left:=187+15*56;
  Form2.Image16.Top:=27;
  Form2.Image16.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image51.Left:=184+15*56;
  Form2.Image51.Top:=95;
  Form2.Image51.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image17.Left:=187+16*56;
  Form2.Image17.Top:=27;
  Form2.Image17.Picture.LoadFromFile('Grafiki/ABC/m.bmp');
  Form2.Image52.Left:=184+16*56;
  Form2.Image52.Top:=95;
  Form2.Image52.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image18.Left:=187+17*56;
  Form2.Image18.Top:=27;
  Form2.Image18.Picture.LoadFromFile('Grafiki/ABC/n.bmp');
  Form2.Image53.Left:=184+17*56;
  Form2.Image53.Top:=95;
  Form2.Image53.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image19.Left:=187+18*56;
  Form2.Image19.Top:=27;
  Form2.Image19.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image54.Left:=184+18*56;
  Form2.Image54.Top:=95;
  Form2.Image54.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image20.Left:=187+19*56;
  Form2.Image20.Top:=27;
  Form2.Image20.Picture.LoadFromFile('Grafiki/ABC/o.bmp');
  Form2.Image55.Left:=184+19*56;
  Form2.Image55.Top:=95;
  Form2.Image55.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image21.Left:=187+20*56;
  Form2.Image21.Top:=27;
  Form2.Image21.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image56.Left:=184+20*56;
  Form2.Image56.Top:=95;
  Form2.Image56.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image22.Left:=187+21*56;
  Form2.Image22.Top:=27;
  Form2.Image22.Picture.LoadFromFile('Grafiki/ABC/p.bmp');
  Form2.Image57.Left:=184+21*56;
  Form2.Image57.Top:=95;
  Form2.Image57.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image23.Left:=187+22*56;
  Form2.Image23.Top:=27;
  Form2.Image23.Picture.LoadFromFile('Grafiki/ABC/q.bmp');
  Form2.Image58.Left:=184+22*56;
  Form2.Image58.Top:=95;
  Form2.Image58.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image24.Left:=187+23*56;
  Form2.Image24.Top:=27;
  Form2.Image24.Picture.LoadFromFile('Grafiki/ABC/r.bmp');
  Form2.Image59.Left:=184+23*56;
  Form2.Image59.Top:=95;
  Form2.Image59.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image25.Left:=187+24*56;
  Form2.Image25.Top:=27;
  Form2.Image25.Picture.LoadFromFile('Grafiki/ABC/s.bmp');
  Form2.Image60.Left:=184+24*56;
  Form2.Image60.Top:=95;
  Form2.Image60.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image26.Left:=187+25*56;
  Form2.Image26.Top:=27;
  Form2.Image26.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image61.Left:=184+25*56;
  Form2.Image61.Top:=95;
  Form2.Image61.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image27.Left:=187+26*56;
  Form2.Image27.Top:=27;
  Form2.Image27.Picture.LoadFromFile('Grafiki/ABC/t.bmp');
  Form2.Image62.Left:=184+26*56;
  Form2.Image62.Top:=95;
  Form2.Image62.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image28.Left:=187+27*56;
  Form2.Image28.Top:=27;
  Form2.Image28.Picture.LoadFromFile('Grafiki/ABC/u.bmp');
  Form2.Image63.Left:=184+27*56;
  Form2.Image63.Top:=95;
  Form2.Image63.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image29.Left:=187+28*56;
  Form2.Image29.Top:=27;
  Form2.Image29.Picture.LoadFromFile('Grafiki/ABC/w.bmp');
  Form2.Image64.Left:=184+28*56;
  Form2.Image64.Top:=95;
  Form2.Image64.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image30.Left:=187+29*56;
  Form2.Image30.Top:=27;
  Form2.Image30.Picture.LoadFromFile('Grafiki/ABC/x.bmp');
  Form2.Image65.Left:=184+29*56;
  Form2.Image65.Top:=95;
  Form2.Image65.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image31.Left:=187+30*56;
  Form2.Image31.Top:=27;
  Form2.Image31.Picture.LoadFromFile('Grafiki/ABC/y.bmp');
  Form2.Image66.Left:=184+30*56;
  Form2.Image66.Top:=95;
  Form2.Image66.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image32.Left:=187+31*56;
  Form2.Image32.Top:=27;
  Form2.Image32.Picture.LoadFromFile('Grafiki/ABC/z.bmp');
  Form2.Image67.Left:=184+31*56;
  Form2.Image67.Top:=95;
  Form2.Image67.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image33.Left:=187+32*56;
  Form2.Image33.Top:=27;
  Form2.Image33.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image68.Left:=184+32*56;
  Form2.Image68.Top:=95;
  Form2.Image68.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image34.Left:=187+33*56;
  Form2.Image34.Top:=27;
  Form2.Image34.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  Form2.Image69.Left:=184+33*56;
  Form2.Image69.Top:=95;
  Form2.Image69.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');

  Form2.Image35.Left:=187+34*56;
  Form2.Image35.Top:=27;
  Form2.Image35.Picture.LoadFromFile('Grafiki/ABC/@.bmp');
  Form2.Image70.Left:=184+34*56;
  Form2.Image70.Top:=95;
  Form2.Image70.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;
procedure PokazUkryj();
begin
  if (Form2.Image1.Left<17) or (Form2.Image1.Left>=357) then Form2.Image1.Visible:=False;
  if (Form2.Image1.Left>=17) and (Form2.Image1.Left<357) then Form2.Image1.Visible:=True;
  if (Form2.Image2.Left<17) or (Form2.Image2.Left>=357) then Form2.Image2.Visible:=False;
  if (Form2.Image2.Left>=17) and (Form2.Image2.Left<357) then Form2.Image2.Visible:=True;
  if (Form2.Image3.Left<17) or (Form2.Image3.Left>=357) then Form2.Image3.Visible:=False;
  if (Form2.Image3.Left>=17) and (Form2.Image3.Left<357) then Form2.Image3.Visible:=True;
  if (Form2.Image4.Left<17) or (Form2.Image4.Left>=357) then Form2.Image4.Visible:=False;
  if (Form2.Image4.Left>=17) and (Form2.Image4.Left<357) then Form2.Image4.Visible:=True;
  if (Form2.Image5.Left<17) or (Form2.Image5.Left>=357) then Form2.Image5.Visible:=False;
  if (Form2.Image5.Left>=17) and (Form2.Image5.Left<357) then Form2.Image5.Visible:=True;
  if (Form2.Image6.Left<17) or (Form2.Image6.Left>=357) then Form2.Image6.Visible:=False;
  if (Form2.Image6.Left>=17) and (Form2.Image6.Left<357) then Form2.Image6.Visible:=True;
  if (Form2.Image7.Left<17) or (Form2.Image7.Left>=357) then Form2.Image7.Visible:=False;
  if (Form2.Image7.Left>=17) and (Form2.Image7.Left<357) then Form2.Image7.Visible:=True;
  if (Form2.Image8.Left<17) or (Form2.Image8.Left>=357) then Form2.Image8.Visible:=False;
  if (Form2.Image8.Left>=17) and (Form2.Image8.Left<357) then Form2.Image8.Visible:=True;
  if (Form2.Image9.Left<17) or (Form2.Image9.Left>=357) then Form2.Image9.Visible:=False;
  if (Form2.Image9.Left>=17) and (Form2.Image9.Left<357) then Form2.Image9.Visible:=True;
  if (Form2.Image10.Left<17) or (Form2.Image10.Left>=357) then Form2.Image10.Visible:=False;
  if (Form2.Image10.Left>=17) and (Form2.Image10.Left<357) then Form2.Image10.Visible:=True;
  if (Form2.Image11.Left<17) or (Form2.Image11.Left>=357) then Form2.Image11.Visible:=False;
  if (Form2.Image11.Left>=17) and (Form2.Image11.Left<357) then Form2.Image11.Visible:=True;
  if (Form2.Image12.Left<17) or (Form2.Image12.Left>=357) then Form2.Image12.Visible:=False;
  if (Form2.Image12.Left>=17) and (Form2.Image12.Left<357) then Form2.Image12.Visible:=True;
  if (Form2.Image13.Left<17) or (Form2.Image13.Left>=357) then Form2.Image13.Visible:=False;
  if (Form2.Image13.Left>=17) and (Form2.Image13.Left<357) then Form2.Image13.Visible:=True;
  if (Form2.Image14.Left<17) or (Form2.Image14.Left>=357) then Form2.Image14.Visible:=False;
  if (Form2.Image14.Left>=17) and (Form2.Image14.Left<357) then Form2.Image14.Visible:=True;
  if (Form2.Image15.Left<17) or (Form2.Image15.Left>=357) then Form2.Image15.Visible:=False;
  if (Form2.Image15.Left>=17) and (Form2.Image15.Left<357) then Form2.Image15.Visible:=True;
  if (Form2.Image16.Left<17) or (Form2.Image16.Left>=357) then Form2.Image16.Visible:=False;
  if (Form2.Image16.Left>=17) and (Form2.Image16.Left<357) then Form2.Image16.Visible:=True;
  if (Form2.Image17.Left<17) or (Form2.Image17.Left>=357) then Form2.Image17.Visible:=False;
  if (Form2.Image17.Left>=17) and (Form2.Image17.Left<357) then Form2.Image17.Visible:=True;
  if (Form2.Image18.Left<17) or (Form2.Image18.Left>=357) then Form2.Image18.Visible:=False;
  if (Form2.Image18.Left>=17) and (Form2.Image18.Left<357) then Form2.Image18.Visible:=True;
  if (Form2.Image19.Left<17) or (Form2.Image19.Left>=357) then Form2.Image19.Visible:=False;
  if (Form2.Image19.Left>=17) and (Form2.Image19.Left<357) then Form2.Image19.Visible:=True;
  if (Form2.Image20.Left<17) or (Form2.Image20.Left>=357) then Form2.Image20.Visible:=False;
  if (Form2.Image20.Left>=17) and (Form2.Image20.Left<357) then Form2.Image20.Visible:=True;
  if (Form2.Image21.Left<17) or (Form2.Image21.Left>=357) then Form2.Image21.Visible:=False;
  if (Form2.Image21.Left>=17) and (Form2.Image21.Left<357) then Form2.Image21.Visible:=True;
  if (Form2.Image22.Left<17) or (Form2.Image22.Left>=357) then Form2.Image22.Visible:=False;
  if (Form2.Image22.Left>=17) and (Form2.Image22.Left<357) then Form2.Image22.Visible:=True;
  if (Form2.Image23.Left<17) or (Form2.Image23.Left>=357) then Form2.Image23.Visible:=False;
  if (Form2.Image23.Left>=17) and (Form2.Image23.Left<357) then Form2.Image23.Visible:=True;
  if (Form2.Image24.Left<17) or (Form2.Image24.Left>=357) then Form2.Image24.Visible:=False;
  if (Form2.Image24.Left>=17) and (Form2.Image24.Left<357) then Form2.Image24.Visible:=True;
  if (Form2.Image25.Left<17) or (Form2.Image25.Left>=357) then Form2.Image25.Visible:=False;
  if (Form2.Image25.Left>=17) and (Form2.Image25.Left<357) then Form2.Image25.Visible:=True;
  if (Form2.Image26.Left<17) or (Form2.Image26.Left>=357) then Form2.Image26.Visible:=False;
  if (Form2.Image26.Left>=17) and (Form2.Image26.Left<357) then Form2.Image26.Visible:=True;
  if (Form2.Image27.Left<17) or (Form2.Image27.Left>=357) then Form2.Image27.Visible:=False;
  if (Form2.Image27.Left>=17) and (Form2.Image27.Left<357) then Form2.Image27.Visible:=True;
  if (Form2.Image28.Left<17) or (Form2.Image28.Left>=357) then Form2.Image28.Visible:=False;
  if (Form2.Image28.Left>=17) and (Form2.Image28.Left<357) then Form2.Image28.Visible:=True;
  if (Form2.Image29.Left<17) or (Form2.Image29.Left>=357) then Form2.Image29.Visible:=False;
  if (Form2.Image29.Left>=17) and (Form2.Image29.Left<357) then Form2.Image29.Visible:=True;
  if (Form2.Image30.Left<17) or (Form2.Image30.Left>=357) then Form2.Image30.Visible:=False;
  if (Form2.Image30.Left>=17) and (Form2.Image30.Left<357) then Form2.Image30.Visible:=True;
  if (Form2.Image31.Left<17) or (Form2.Image31.Left>=357) then Form2.Image31.Visible:=False;
  if (Form2.Image31.Left>=17) and (Form2.Image31.Left<357) then Form2.Image31.Visible:=True;
  if (Form2.Image32.Left<17) or (Form2.Image32.Left>=357) then Form2.Image32.Visible:=False;
  if (Form2.Image32.Left>=17) and (Form2.Image32.Left<357) then Form2.Image32.Visible:=True;
  if (Form2.Image33.Left<17) or (Form2.Image33.Left>=357) then Form2.Image33.Visible:=False;
  if (Form2.Image33.Left>=17) and (Form2.Image33.Left<357) then Form2.Image33.Visible:=True;
  if (Form2.Image34.Left<17) or (Form2.Image34.Left>=357) then Form2.Image34.Visible:=False;
  if (Form2.Image34.Left>=17) and (Form2.Image34.Left<357) then Form2.Image34.Visible:=True;
  if (Form2.Image35.Left<17) or (Form2.Image35.Left>=357) then Form2.Image35.Visible:=False;
  if (Form2.Image35.Left>=17) and (Form2.Image35.Left<357) then Form2.Image35.Visible:=True;

  if Form2.Image36.Left=184  then Form2.Image36.Visible:=True;
  if Form2.Image36.Left<>184 then Form2.Image36.Visible:=False;
  if Form2.Image37.Left=184  then Form2.Image37.Visible:=True;
  if Form2.Image37.Left<>184 then Form2.Image37.Visible:=False;
  if Form2.Image38.Left=184  then Form2.Image38.Visible:=True;
  if Form2.Image38.Left<>184 then Form2.Image38.Visible:=False;
  if Form2.Image39.Left=184  then Form2.Image39.Visible:=True;
  if Form2.Image39.Left<>184 then Form2.Image39.Visible:=False;
  if Form2.Image40.Left=184  then Form2.Image40.Visible:=True;
  if Form2.Image40.Left<>184 then Form2.Image40.Visible:=False;
  if Form2.Image41.Left=184  then Form2.Image41.Visible:=True;
  if Form2.Image41.Left<>184 then Form2.Image41.Visible:=False;
  if Form2.Image42.Left=184  then Form2.Image42.Visible:=True;
  if Form2.Image42.Left<>184 then Form2.Image42.Visible:=False;
  if Form2.Image43.Left=184  then Form2.Image43.Visible:=True;
  if Form2.Image43.Left<>184 then Form2.Image43.Visible:=False;
  if Form2.Image44.Left=184  then Form2.Image44.Visible:=True;
  if Form2.Image44.Left<>184 then Form2.Image44.Visible:=False;
  if Form2.Image45.Left=184  then Form2.Image45.Visible:=True;
  if Form2.Image45.Left<>184 then Form2.Image45.Visible:=False;
  if Form2.Image46.Left=184  then Form2.Image46.Visible:=True;
  if Form2.Image46.Left<>184 then Form2.Image46.Visible:=False;
  if Form2.Image47.Left=184  then Form2.Image47.Visible:=True;
  if Form2.Image47.Left<>184 then Form2.Image47.Visible:=False;
  if Form2.Image48.Left=184  then Form2.Image48.Visible:=True;
  if Form2.Image48.Left<>184 then Form2.Image48.Visible:=False;
  if Form2.Image49.Left=184  then Form2.Image49.Visible:=True;
  if Form2.Image49.Left<>184 then Form2.Image49.Visible:=False;
  if Form2.Image50.Left=184  then Form2.Image50.Visible:=True;
  if Form2.Image50.Left<>184 then Form2.Image50.Visible:=False;
  if Form2.Image51.Left=184  then Form2.Image51.Visible:=True;
  if Form2.Image51.Left<>184 then Form2.Image51.Visible:=False;
  if Form2.Image52.Left=184  then Form2.Image52.Visible:=True;
  if Form2.Image52.Left<>184 then Form2.Image52.Visible:=False;
  if Form2.Image53.Left=184  then Form2.Image53.Visible:=True;
  if Form2.Image53.Left<>184 then Form2.Image53.Visible:=False;
  if Form2.Image54.Left=184  then Form2.Image54.Visible:=True;
  if Form2.Image54.Left<>184 then Form2.Image54.Visible:=False;
  if Form2.Image55.Left=184  then Form2.Image55.Visible:=True;
  if Form2.Image55.Left<>184 then Form2.Image55.Visible:=False;
  if Form2.Image56.Left=184  then Form2.Image56.Visible:=True;
  if Form2.Image56.Left<>184 then Form2.Image56.Visible:=False;
  if Form2.Image57.Left=184  then Form2.Image57.Visible:=True;
  if Form2.Image57.Left<>184 then Form2.Image57.Visible:=False;
  if Form2.Image58.Left=184  then Form2.Image58.Visible:=True;
  if Form2.Image58.Left<>184 then Form2.Image58.Visible:=False;
  if Form2.Image59.Left=184  then Form2.Image59.Visible:=True;
  if Form2.Image59.Left<>184 then Form2.Image59.Visible:=False;
  if Form2.Image60.Left=184  then Form2.Image60.Visible:=True;
  if Form2.Image60.Left<>184 then Form2.Image60.Visible:=False;
  if Form2.Image61.Left=184  then Form2.Image61.Visible:=True;
  if Form2.Image61.Left<>184 then Form2.Image61.Visible:=False;
  if Form2.Image62.Left=184  then Form2.Image62.Visible:=True;
  if Form2.Image62.Left<>184 then Form2.Image62.Visible:=False;
  if Form2.Image63.Left=184  then Form2.Image63.Visible:=True;
  if Form2.Image63.Left<>184 then Form2.Image63.Visible:=False;
  if Form2.Image64.Left=184  then Form2.Image64.Visible:=True;
  if Form2.Image64.Left<>184 then Form2.Image64.Visible:=False;
  if Form2.Image65.Left=184  then Form2.Image65.Visible:=True;
  if Form2.Image65.Left<>184 then Form2.Image65.Visible:=False;
  if Form2.Image66.Left=184  then Form2.Image66.Visible:=True;
  if Form2.Image66.Left<>184 then Form2.Image66.Visible:=False;
  if Form2.Image67.Left=184  then Form2.Image67.Visible:=True;
  if Form2.Image67.Left<>184 then Form2.Image67.Visible:=False;
  if Form2.Image68.Left=184  then Form2.Image68.Visible:=True;
  if Form2.Image68.Left<>184 then Form2.Image68.Visible:=False;
  if Form2.Image69.Left=184  then Form2.Image69.Visible:=True;
  if Form2.Image69.Left<>184 then Form2.Image69.Visible:=False;
  if Form2.Image70.Left=184  then Form2.Image70.Visible:=True;
  if Form2.Image70.Left<>184 then Form2.Image70.Visible:=False;

  if Form2.Image1.Left=187  then Form2.Image1.Picture.LoadFromFile('Grafiki/ABC/a.bmp');
  if Form2.Image1.Left<>187 then Form2.Image1.Picture.LoadFromFile('Grafiki/ABC/a_off.bmp');
  if Form2.Image2.Left=187  then Form2.Image2.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image2.Left<>187 then Form2.Image2.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image3.Left=187  then Form2.Image3.Picture.LoadFromFile('Grafiki/ABC/b.bmp');
  if Form2.Image3.Left<>187 then Form2.Image3.Picture.LoadFromFile('Grafiki/ABC/b_off.bmp');
  if Form2.Image4.Left=187  then Form2.Image4.Picture.LoadFromFile('Grafiki/ABC/c.bmp');
  if Form2.Image4.Left<>187 then Form2.Image4.Picture.LoadFromFile('Grafiki/ABC/c_off.bmp');
  if Form2.Image5.Left=187  then Form2.Image5.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image5.Left<>187 then Form2.Image5.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image6.Left=187  then Form2.Image6.Picture.LoadFromFile('Grafiki/ABC/d.bmp');
  if Form2.Image6.Left<>187 then Form2.Image6.Picture.LoadFromFile('Grafiki/ABC/d_off.bmp');
  if Form2.Image7.Left=187  then Form2.Image7.Picture.LoadFromFile('Grafiki/ABC/e.bmp');
  if Form2.Image7.Left<>187 then Form2.Image7.Picture.LoadFromFile('Grafiki/ABC/e_off.bmp');
  if Form2.Image8.Left=187  then Form2.Image8.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image8.Left<>187 then Form2.Image8.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image9.Left=187  then Form2.Image9.Picture.LoadFromFile('Grafiki/ABC/f.bmp');
  if Form2.Image9.Left<>187 then Form2.Image9.Picture.LoadFromFile('Grafiki/ABC/f_off.bmp');
  if Form2.Image10.Left=187  then Form2.Image10.Picture.LoadFromFile('Grafiki/ABC/g.bmp');
  if Form2.Image10.Left<>187 then Form2.Image10.Picture.LoadFromFile('Grafiki/ABC/g_off.bmp');
  if Form2.Image11.Left=187  then Form2.Image11.Picture.LoadFromFile('Grafiki/ABC/h.bmp');
  if Form2.Image11.Left<>187 then Form2.Image11.Picture.LoadFromFile('Grafiki/ABC/h_off.bmp');
  if Form2.Image12.Left=187  then Form2.Image12.Picture.LoadFromFile('Grafiki/ABC/i.bmp');
  if Form2.Image12.Left<>187 then Form2.Image12.Picture.LoadFromFile('Grafiki/ABC/i_off.bmp');
  if Form2.Image13.Left=187  then Form2.Image13.Picture.LoadFromFile('Grafiki/ABC/j.bmp');
  if Form2.Image13.Left<>187 then Form2.Image13.Picture.LoadFromFile('Grafiki/ABC/j_off.bmp');
  if Form2.Image14.Left=187  then Form2.Image14.Picture.LoadFromFile('Grafiki/ABC/k.bmp');
  if Form2.Image14.Left<>187 then Form2.Image14.Picture.LoadFromFile('Grafiki/ABC/k_off.bmp');
  if Form2.Image15.Left=187  then Form2.Image15.Picture.LoadFromFile('Grafiki/ABC/l.bmp');
  if Form2.Image15.Left<>187 then Form2.Image15.Picture.LoadFromFile('Grafiki/ABC/l_off.bmp');
  if Form2.Image16.Left=187  then Form2.Image16.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image16.Left<>187 then Form2.Image16.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image17.Left=187  then Form2.Image17.Picture.LoadFromFile('Grafiki/ABC/m.bmp');
  if Form2.Image17.Left<>187 then Form2.Image17.Picture.LoadFromFile('Grafiki/ABC/m_off.bmp');
  if Form2.Image18.Left=187  then Form2.Image18.Picture.LoadFromFile('Grafiki/ABC/n.bmp');
  if Form2.Image18.Left<>187 then Form2.Image18.Picture.LoadFromFile('Grafiki/ABC/n_off.bmp');
  if Form2.Image19.Left=187  then Form2.Image19.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image19.Left<>187 then Form2.Image19.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image20.Left=187  then Form2.Image20.Picture.LoadFromFile('Grafiki/ABC/o.bmp');
  if Form2.Image20.Left<>187 then Form2.Image20.Picture.LoadFromFile('Grafiki/ABC/o_off.bmp');
  if Form2.Image21.Left=187  then Form2.Image21.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image21.Left<>187 then Form2.Image21.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image22.Left=187  then Form2.Image22.Picture.LoadFromFile('Grafiki/ABC/p.bmp');
  if Form2.Image22.Left<>187 then Form2.Image22.Picture.LoadFromFile('Grafiki/ABC/p_off.bmp');
  if Form2.Image23.Left=187  then Form2.Image23.Picture.LoadFromFile('Grafiki/ABC/q.bmp');
  if Form2.Image23.Left<>187 then Form2.Image23.Picture.LoadFromFile('Grafiki/ABC/q_off.bmp');
  if Form2.Image24.Left=187  then Form2.Image24.Picture.LoadFromFile('Grafiki/ABC/r.bmp');
  if Form2.Image24.Left<>187 then Form2.Image24.Picture.LoadFromFile('Grafiki/ABC/r_off.bmp');
  if Form2.Image25.Left=187  then Form2.Image25.Picture.LoadFromFile('Grafiki/ABC/s.bmp');
  if Form2.Image25.Left<>187 then Form2.Image25.Picture.LoadFromFile('Grafiki/ABC/s_off.bmp');
  if Form2.Image26.Left=187  then Form2.Image26.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image26.Left<>187 then Form2.Image26.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image27.Left=187  then Form2.Image27.Picture.LoadFromFile('Grafiki/ABC/t.bmp');
  if Form2.Image27.Left<>187 then Form2.Image27.Picture.LoadFromFile('Grafiki/ABC/t_off.bmp');
  if Form2.Image28.Left=187  then Form2.Image28.Picture.LoadFromFile('Grafiki/ABC/u.bmp');
  if Form2.Image28.Left<>187 then Form2.Image28.Picture.LoadFromFile('Grafiki/ABC/u_off.bmp');
  if Form2.Image29.Left=187  then Form2.Image29.Picture.LoadFromFile('Grafiki/ABC/w.bmp');
  if Form2.Image29.Left<>187 then Form2.Image29.Picture.LoadFromFile('Grafiki/ABC/w_off.bmp');
  if Form2.Image30.Left=187  then Form2.Image30.Picture.LoadFromFile('Grafiki/ABC/x.bmp');
  if Form2.Image30.Left<>187 then Form2.Image30.Picture.LoadFromFile('Grafiki/ABC/x_off.bmp');
  if Form2.Image31.Left=187  then Form2.Image31.Picture.LoadFromFile('Grafiki/ABC/y.bmp');
  if Form2.Image31.Left<>187 then Form2.Image31.Picture.LoadFromFile('Grafiki/ABC/y_off.bmp');
  if Form2.Image32.Left=187  then Form2.Image32.Picture.LoadFromFile('Grafiki/ABC/z.bmp');
  if Form2.Image32.Left<>187 then Form2.Image32.Picture.LoadFromFile('Grafiki/ABC/z_off.bmp');
  if Form2.Image33.Left=187  then Form2.Image33.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image33.Left<>187 then Form2.Image33.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image34.Left=187  then Form2.Image34.Picture.LoadFromFile('Grafiki/ABC/�.bmp');
  if Form2.Image34.Left<>187 then Form2.Image34.Picture.LoadFromFile('Grafiki/ABC/�_off.bmp');
  if Form2.Image35.Left=187  then Form2.Image35.Picture.LoadFromFile('Grafiki/ABC/@.bmp');
  if Form2.Image35.Left<>187 then Form2.Image35.Picture.LoadFromFile('Grafiki/ABC/@_off.bmp');
end;

procedure ImgToBin();
var
  i, j, licz : Integer;
begin
  Czy_zapisany[0]:=0;
  Czy_zapisany[1]:=0;
  Czy_zapisany[2]:=0;
  licz:=0;
  for i:=0 to 29 do
  begin
    for j:=0 to 19 do
    begin
      if ((Form2.Image77.Canvas.Pixels[j,i]=clBlack)  or
          (Form2.Image77.Canvas.Pixels[j,i]=clBlue)   or
          (Form2.Image77.Canvas.Pixels[j,i]=clRed)    or
          (Form2.Image77.Canvas.Pixels[j,i]=clGreen)  or
          (Form2.Image77.Canvas.Pixels[j,i]=clYellow) or
          (Form2.Image77.Canvas.Pixels[j,i]=clPurple)) then
          begin
            BiezacyWzorzec[0][licz]:=1;
            inc(Czy_zapisany[0]);
          end;
      if ((Form2.Image77.Canvas.Pixels[j,i]<>clBlack)  and
          (Form2.Image77.Canvas.Pixels[j,i]<>clBlue)   and
          (Form2.Image77.Canvas.Pixels[j,i]<>clRed)    and
          (Form2.Image77.Canvas.Pixels[j,i]<>clGreen)  and
          (Form2.Image77.Canvas.Pixels[j,i]<>clYellow) and
          (Form2.Image77.Canvas.Pixels[j,i]<>clPurple)) then BiezacyWzorzec[0][licz]:=0;

      if ((Form2.Image78.Canvas.Pixels[j,i]=clBlack)  or
          (Form2.Image78.Canvas.Pixels[j,i]=clBlue)   or
          (Form2.Image78.Canvas.Pixels[j,i]=clRed)    or
          (Form2.Image78.Canvas.Pixels[j,i]=clGreen)  or
          (Form2.Image78.Canvas.Pixels[j,i]=clYellow) or
          (Form2.Image78.Canvas.Pixels[j,i]=clPurple)) then
          begin
            BiezacyWzorzec[1][licz]:=1;
            inc(Czy_zapisany[1]);
          end;
      if ((Form2.Image78.Canvas.Pixels[j,i]<>clBlack)  and
          (Form2.Image78.Canvas.Pixels[j,i]<>clBlue)   and
          (Form2.Image78.Canvas.Pixels[j,i]<>clRed)    and
          (Form2.Image78.Canvas.Pixels[j,i]<>clGreen)  and
          (Form2.Image78.Canvas.Pixels[j,i]<>clYellow) and
          (Form2.Image78.Canvas.Pixels[j,i]<>clPurple)) then BiezacyWzorzec[1][licz]:=0;

      if ((Form2.Image79.Canvas.Pixels[j,i]=clBlack)  or
          (Form2.Image79.Canvas.Pixels[j,i]=clBlue)   or
          (Form2.Image79.Canvas.Pixels[j,i]=clRed)    or
          (Form2.Image79.Canvas.Pixels[j,i]=clGreen)  or
          (Form2.Image79.Canvas.Pixels[j,i]=clYellow) or
          (Form2.Image79.Canvas.Pixels[j,i]=clPurple)) then
          begin
            BiezacyWzorzec[2][licz]:=1;
            inc(Czy_zapisany[2]);
          end;
      if ((Form2.Image79.Canvas.Pixels[j,i]<>clBlack)  and
          (Form2.Image79.Canvas.Pixels[j,i]<>clBlue)   and
          (Form2.Image79.Canvas.Pixels[j,i]<>clRed)    and
          (Form2.Image79.Canvas.Pixels[j,i]<>clGreen)  and
          (Form2.Image79.Canvas.Pixels[j,i]<>clYellow) and
          (Form2.Image79.Canvas.Pixels[j,i]<>clPurple)) then BiezacyWzorzec[2][licz]:=0;
      inc(licz);
    end;
  end;
end;

procedure Przytnij1();
var
  i, j, licznik                     : Integer;  //Iteracje
  Szerokosc, Dlugosc                : Integer;
  Gorna_G, Dolna_G, Lewa_G, Prawa_G : Integer;  //Granice znaku
begin

{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 599 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form2.Image74.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image74.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image74.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image74.Canvas.Pixels[i,j]=clPurple)) then
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
      for i:=0 to 599 do
      begin
        if ((Form2.Image74.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image74.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image74.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image74.Canvas.Pixels[i,j]=clPurple)) then
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
  for i:=599 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form2.Image74.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image74.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image74.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image74.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
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
      for i:=0 to 599 do
      begin
        if ((Form2.Image74.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image74.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image74.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image74.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image74.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{-----------------------------  Skalowanie  -----------------------------------}
  Form2.Image77.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form2.Image74.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form2.Image77.Canvas.Pixels[i,j]<>clBlack)  and
          (Form2.Image77.Canvas.Pixels[i,j]<>clBlue)   and
          (Form2.Image77.Canvas.Pixels[i,j]<>clRed)    and
          (Form2.Image77.Canvas.Pixels[i,j]<>clGreen)  and
          (Form2.Image77.Canvas.Pixels[i,j]<>clYellow) and
          (Form2.Image77.Canvas.Pixels[i,j]<>clPurple)) then
             Form2.Image77.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
end;

procedure Przytnij2();
var
  i, j, licznik                     : Integer;  //Iteracje
  Szerokosc, Dlugosc                : Integer;
  Gorna_G, Dolna_G, Lewa_G, Prawa_G : Integer;  //Granice znaku
begin

{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 599 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form2.Image75.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image75.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image75.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image75.Canvas.Pixels[i,j]=clPurple)) then
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
      for i:=0 to 599 do
      begin
        if ((Form2.Image75.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image75.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image75.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image75.Canvas.Pixels[i,j]=clPurple)) then
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
  for i:=599 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form2.Image75.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image75.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image75.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image75.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
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
      for i:=0 to 599 do
      begin
        if ((Form2.Image75.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image75.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image75.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image75.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image75.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{-----------------------------  Skalowanie  -----------------------------------}
  Form2.Image78.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form2.Image75.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form2.Image78.Canvas.Pixels[i,j]<>clBlack)  and
          (Form2.Image78.Canvas.Pixels[i,j]<>clBlue)   and
          (Form2.Image78.Canvas.Pixels[i,j]<>clRed)    and
          (Form2.Image78.Canvas.Pixels[i,j]<>clGreen)  and
          (Form2.Image78.Canvas.Pixels[i,j]<>clYellow) and
          (Form2.Image78.Canvas.Pixels[i,j]<>clPurple)) then
             Form2.Image78.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;

end;

procedure Przytnij3();
var
  i, j, licznik                     : Integer;  //Iteracje
  Szerokosc, Dlugosc                : Integer;
  Gorna_G, Dolna_G, Lewa_G, Prawa_G : Integer;  //Granice znaku
begin

{---------------------------  Lewa granica  -----------------------------------}
  licznik:=0;
  for i:=0 to 599 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form2.Image76.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image76.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image76.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image76.Canvas.Pixels[i,j]=clPurple)) then
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
      for i:=0 to 599 do
      begin
        if ((Form2.Image76.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image76.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image76.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image76.Canvas.Pixels[i,j]=clPurple)) then
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
  for i:=599 downto 0 do
  begin
    if licznik=0 then
    begin
      for j:=0 to 119 do
      begin
        if ((Form2.Image76.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image76.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image76.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image76.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
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
      for i:=0 to 599 do
      begin
        if ((Form2.Image76.Canvas.Pixels[i,j]=clBlack)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clBlue)   or
            (Form2.Image76.Canvas.Pixels[i,j]=clRed)    or
            (Form2.Image76.Canvas.Pixels[i,j]=clGreen)  or
            (Form2.Image76.Canvas.Pixels[i,j]=clYellow) or
            (Form2.Image76.Canvas.Pixels[i,j]=clPurple) and (licznik=0)) then
        begin
          Dolna_G:=j+1;
          inc(licznik);
          break;
        end;
      end;
    end;
  end;
{-----------------------------  Skalowanie  -----------------------------------}
  Form2.Image79.Canvas.CopyRect(  //gdzie kopiujemy
                               Rect(0,0,19,29), //jak ma byc wielkosc koncowa
                               Form2.Image76.Canvas, //zrodlo z jakiego kopiujemy
                               Rect(Lewa_G,Gorna_G,Prawa_G,Dolna_G)); //wielkosc poczatkowa (lub wycinek)
  for i:=0 to 19 do
  begin
    for j:=0 to 29 do
    begin
      if ((Form2.Image79.Canvas.Pixels[i,j]<>clBlack)  and
          (Form2.Image79.Canvas.Pixels[i,j]<>clBlue)   and
          (Form2.Image79.Canvas.Pixels[i,j]<>clRed)    and
          (Form2.Image79.Canvas.Pixels[i,j]<>clGreen)  and
          (Form2.Image79.Canvas.Pixels[i,j]<>clYellow) and
          (Form2.Image79.Canvas.Pixels[i,j]<>clPurple)) then
             Form2.Image79.Canvas.Pixels[i,j]:=clWhite;
    end;
  end;
end;

procedure ZapiszWzorce(Ktory : Integer);
var
  plik   : TextFile;
  znak   : string;  //zmienna gdzie beda wrzucane poszczegolne znaki pliku tekstowego
  i, j   : Integer; //iteracje
  tab    : array[0..679] of string;
  Nowy1, Nowy2, Nowy3  : string;
begin
  Nowy1:='';
  Nowy2:='';
  Nowy3:='';
  for i:=0 to 599 do
  begin
    if BiezacyWzorzec[0,i]=1 then Nowy1:=Nowy1+'1';
    if BiezacyWzorzec[0,i]=0 then Nowy1:=Nowy1+'0';
    if BiezacyWzorzec[1,i]=1 then Nowy2:=Nowy2+'1';
    if BiezacyWzorzec[1,i]=0 then Nowy2:=Nowy2+'0';
    if BiezacyWzorzec[2,i]=1 then Nowy3:=Nowy3+'1';
    if BiezacyWzorzec[2,i]=0 then Nowy3:=Nowy3+'0';
  end;

  Nowy1:=Nowy1+'1';
  Nowy2:=Nowy2+'1';
  Nowy3:=Nowy3+'1';

  if (Ktory=0)  then AssignFile(plik, 'Wzorce/a.txt');
  if (Ktory=1)  then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=2)  then AssignFile(plik, 'Wzorce/b.txt');
  if (Ktory=3)  then AssignFile(plik, 'Wzorce/c.txt');
  if (Ktory=4)  then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=5)  then AssignFile(plik, 'Wzorce/d.txt');
  if (Ktory=6)  then AssignFile(plik, 'Wzorce/e.txt');
  if (Ktory=7)  then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=8)  then AssignFile(plik, 'Wzorce/f.txt');
  if (Ktory=9)  then AssignFile(plik, 'Wzorce/g.txt');
  if (Ktory=10) then AssignFile(plik, 'Wzorce/h.txt');
  if (Ktory=11) then AssignFile(plik, 'Wzorce/i.txt');
  if (Ktory=12) then AssignFile(plik, 'Wzorce/j.txt');
  if (Ktory=13) then AssignFile(plik, 'Wzorce/k.txt');
  if (Ktory=14) then AssignFile(plik, 'Wzorce/l.txt');
  if (Ktory=15) then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=16) then AssignFile(plik, 'Wzorce/m.txt');
  if (Ktory=17) then AssignFile(plik, 'Wzorce/n.txt');
  if (Ktory=18) then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=19) then AssignFile(plik, 'Wzorce/o.txt');
  if (Ktory=20) then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=21) then AssignFile(plik, 'Wzorce/p.txt');
  if (Ktory=22) then AssignFile(plik, 'Wzorce/q.txt');
  if (Ktory=23) then AssignFile(plik, 'Wzorce/r.txt');
  if (Ktory=24) then AssignFile(plik, 'Wzorce/s.txt');
  if (Ktory=25) then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=26) then AssignFile(plik, 'Wzorce/t.txt');
  if (Ktory=27) then AssignFile(plik, 'Wzorce/u.txt');
  if (Ktory=28) then AssignFile(plik, 'Wzorce/w.txt');
  if (Ktory=29) then AssignFile(plik, 'Wzorce/x.txt');
  if (Ktory=30) then AssignFile(plik, 'Wzorce/y.txt');
  if (Ktory=31) then AssignFile(plik, 'Wzorce/z.txt');
  if (Ktory=32) then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=33) then AssignFile(plik, 'Wzorce/�.txt');
  if (Ktory=34) then AssignFile(plik, 'Wzorce/@.txt');
  Rewrite(plik);
  WriteLn(plik,Nowy1);
  WriteLn(plik,Nowy1);
  WriteLn(plik,Nowy2);
  WriteLn(plik,Nowy2);
  WriteLn(plik,Nowy3);
  WriteLn(plik,Nowy3);
  Close(plik);
end;
procedure ZapiszClick(Ktory_znak : Integer);
var
  x, y : Integer;
begin
  Przytnij1();
  Przytnij2();
  Przytnij3();
  ImgToBin();
  if (Czy_zapisany[0]=0) or (Czy_zapisany[1]=0) or (Czy_zapisany[2]=0) then
  begin
    Form2.AlphaBlend:=True;
    Form2.Enabled:=False;
    x:=Application.MessageBox('Musisz poda� wszystkie trzy wzorce'+#13+'inaczej zapisanie ich nie b�dzie mo�liwe','B��d przy podawaniu wzorc�w', MB_OK or MB_ICONWARNING);
    if x=1 then
    begin
      Form2.AlphaBlend:=False;
      Form2.Enabled:=True;
    end;
  end;
  if ((Czy_zapisany[0]>0) and (Czy_zapisany[1]>0) and (Czy_zapisany[2]>0)) then
  begin
    Form2.AlphaBlend:=True;
    Form2.Enabled:=False;
    CzyscEkran(1);
    CzyscEkran(2);
    CzyscEkran(3);
    
    y:=Application.MessageBox('Czy na pewno chcesz zapisa� wzorce ?'+#13+'Poprzednie wzorce dla tego znaku zostan� usuni�te.','Zapisanie wzorc�w', MB_YESNO or MB_ICONQUESTION);
    if y=6 then
    begin
      ZapiszWzorce(Ktory_znak);
      Form2.AlphaBlend:=False;
      Form2.Enabled:=True;
    end;
    if y=7 then
    begin
      Form2.AlphaBlend:=False;
      Form2.Enabled:=True;
    end;
  end;
end;
procedure KasujWzorce();
var
  plik : TextFile;
begin
  AssignFile(plik, 'Wzorce/a.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/b.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/c.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/d.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/e.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/f.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/g.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/h.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/i.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/j.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/k.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/l.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/m.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/n.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/o.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/p.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/q.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/r.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/s.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/t.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/u.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/w.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/x.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/y.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/z.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/�.txt'); Rewrite(plik); Close(plik);
  AssignFile(plik, 'Wzorce/@.txt'); Rewrite(plik); Close(plik);
end;
{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if Licz>7 then Form2.Timer1.Enabled:=False;
  if licz<=7 then
  begin
  Form2.Image1.Left:=Form2.Image1.Left-8;
  Form2.Image2.Left:=Form2.Image2.Left-8;
  Form2.Image3.Left:=Form2.Image3.Left-8;
  Form2.Image4.Left:=Form2.Image4.Left-8;
  Form2.Image5.Left:=Form2.Image5.Left-8;
  Form2.Image6.Left:=Form2.Image6.Left-8;
  Form2.Image7.Left:=Form2.Image7.Left-8;
  Form2.Image8.Left:=Form2.Image8.Left-8;
  Form2.Image9.Left:=Form2.Image9.Left-8;
  Form2.Image10.Left:=Form2.Image10.Left-8;
  Form2.Image11.Left:=Form2.Image11.Left-8;
  Form2.Image12.Left:=Form2.Image12.Left-8;
  Form2.Image13.Left:=Form2.Image13.Left-8;
  Form2.Image14.Left:=Form2.Image14.Left-8;
  Form2.Image15.Left:=Form2.Image15.Left-8;
  Form2.Image16.Left:=Form2.Image16.Left-8;
  Form2.Image17.Left:=Form2.Image17.Left-8;
  Form2.Image18.Left:=Form2.Image18.Left-8;
  Form2.Image19.Left:=Form2.Image19.Left-8;
  Form2.Image20.Left:=Form2.Image20.Left-8;
  Form2.Image21.Left:=Form2.Image21.Left-8;
  Form2.Image22.Left:=Form2.Image22.Left-8;
  Form2.Image23.Left:=Form2.Image23.Left-8;
  Form2.Image24.Left:=Form2.Image24.Left-8;
  Form2.Image25.Left:=Form2.Image25.Left-8;
  Form2.Image26.Left:=Form2.Image26.Left-8;
  Form2.Image27.Left:=Form2.Image27.Left-8;
  Form2.Image28.Left:=Form2.Image28.Left-8;
  Form2.Image29.Left:=Form2.Image29.Left-8;
  Form2.Image30.Left:=Form2.Image30.Left-8;
  Form2.Image31.Left:=Form2.Image31.Left-8;
  Form2.Image32.Left:=Form2.Image32.Left-8;
  Form2.Image33.Left:=Form2.Image33.Left-8;
  Form2.Image34.Left:=Form2.Image34.Left-8;
  Form2.Image35.Left:=Form2.Image35.Left-8;
  Form2.Image36.Left:=Form2.Image36.Left-8;
  Form2.Image37.Left:=Form2.Image37.Left-8;
  Form2.Image38.Left:=Form2.Image38.Left-8;
  Form2.Image39.Left:=Form2.Image39.Left-8;
  Form2.Image40.Left:=Form2.Image40.Left-8;
  Form2.Image41.Left:=Form2.Image41.Left-8;
  Form2.Image42.Left:=Form2.Image42.Left-8;
  Form2.Image43.Left:=Form2.Image43.Left-8;
  Form2.Image44.Left:=Form2.Image44.Left-8;
  Form2.Image45.Left:=Form2.Image45.Left-8;
  Form2.Image46.Left:=Form2.Image46.Left-8;
  Form2.Image47.Left:=Form2.Image47.Left-8;
  Form2.Image48.Left:=Form2.Image48.Left-8;
  Form2.Image49.Left:=Form2.Image49.Left-8;
  Form2.Image50.Left:=Form2.Image50.Left-8;
  Form2.Image51.Left:=Form2.Image51.Left-8;
  Form2.Image52.Left:=Form2.Image52.Left-8;
  Form2.Image53.Left:=Form2.Image53.Left-8;
  Form2.Image54.Left:=Form2.Image54.Left-8;
  Form2.Image55.Left:=Form2.Image55.Left-8;
  Form2.Image56.Left:=Form2.Image56.Left-8;
  Form2.Image57.Left:=Form2.Image57.Left-8;
  Form2.Image58.Left:=Form2.Image58.Left-8;
  Form2.Image59.Left:=Form2.Image59.Left-8;
  Form2.Image60.Left:=Form2.Image60.Left-8;
  Form2.Image61.Left:=Form2.Image61.Left-8;
  Form2.Image62.Left:=Form2.Image62.Left-8;
  Form2.Image63.Left:=Form2.Image63.Left-8;
  Form2.Image64.Left:=Form2.Image64.Left-8;
  Form2.Image65.Left:=Form2.Image65.Left-8;
  Form2.Image66.Left:=Form2.Image66.Left-8;
  Form2.Image67.Left:=Form2.Image67.Left-8;
  Form2.Image68.Left:=Form2.Image68.Left-8;
  Form2.Image69.Left:=Form2.Image69.Left-8;
  Form2.Image70.Left:=Form2.Image70.Left-8;
  inc(Licz);
  PokazUkryj();
  end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  if Licz>7 then Form2.Timer2.Enabled:=False;
  if licz<=7 then
  begin
  Form2.Image1.Left:=Form2.Image1.Left+8;
  Form2.Image2.Left:=Form2.Image2.Left+8;
  Form2.Image3.Left:=Form2.Image3.Left+8;
  Form2.Image4.Left:=Form2.Image4.Left+8;
  Form2.Image5.Left:=Form2.Image5.Left+8;
  Form2.Image6.Left:=Form2.Image6.Left+8;
  Form2.Image7.Left:=Form2.Image7.Left+8;
  Form2.Image8.Left:=Form2.Image8.Left+8;
  Form2.Image9.Left:=Form2.Image9.Left+8;
  Form2.Image10.Left:=Form2.Image10.Left+8;
  Form2.Image11.Left:=Form2.Image11.Left+8;
  Form2.Image12.Left:=Form2.Image12.Left+8;
  Form2.Image13.Left:=Form2.Image13.Left+8;
  Form2.Image14.Left:=Form2.Image14.Left+8;
  Form2.Image15.Left:=Form2.Image15.Left+8;
  Form2.Image16.Left:=Form2.Image16.Left+8;
  Form2.Image17.Left:=Form2.Image17.Left+8;
  Form2.Image18.Left:=Form2.Image18.Left+8;
  Form2.Image19.Left:=Form2.Image19.Left+8;
  Form2.Image20.Left:=Form2.Image20.Left+8;
  Form2.Image21.Left:=Form2.Image21.Left+8;
  Form2.Image22.Left:=Form2.Image22.Left+8;
  Form2.Image23.Left:=Form2.Image23.Left+8;
  Form2.Image24.Left:=Form2.Image24.Left+8;
  Form2.Image25.Left:=Form2.Image25.Left+8;
  Form2.Image26.Left:=Form2.Image26.Left+8;
  Form2.Image27.Left:=Form2.Image27.Left+8;
  Form2.Image28.Left:=Form2.Image28.Left+8;
  Form2.Image29.Left:=Form2.Image29.Left+8;
  Form2.Image30.Left:=Form2.Image30.Left+8;
  Form2.Image31.Left:=Form2.Image31.Left+8;
  Form2.Image32.Left:=Form2.Image32.Left+8;
  Form2.Image33.Left:=Form2.Image33.Left+8;
  Form2.Image34.Left:=Form2.Image34.Left+8;
  Form2.Image35.Left:=Form2.Image35.Left+8;
  Form2.Image36.Left:=Form2.Image36.Left+8;
  Form2.Image37.Left:=Form2.Image37.Left+8;
  Form2.Image38.Left:=Form2.Image38.Left+8;
  Form2.Image39.Left:=Form2.Image39.Left+8;
  Form2.Image40.Left:=Form2.Image40.Left+8;
  Form2.Image41.Left:=Form2.Image41.Left+8;
  Form2.Image42.Left:=Form2.Image42.Left+8;
  Form2.Image43.Left:=Form2.Image43.Left+8;
  Form2.Image44.Left:=Form2.Image44.Left+8;
  Form2.Image45.Left:=Form2.Image45.Left+8;
  Form2.Image46.Left:=Form2.Image46.Left+8;
  Form2.Image47.Left:=Form2.Image47.Left+8;
  Form2.Image48.Left:=Form2.Image48.Left+8;
  Form2.Image49.Left:=Form2.Image49.Left+8;
  Form2.Image50.Left:=Form2.Image50.Left+8;
  Form2.Image51.Left:=Form2.Image51.Left+8;
  Form2.Image52.Left:=Form2.Image52.Left+8;
  Form2.Image53.Left:=Form2.Image53.Left+8;
  Form2.Image54.Left:=Form2.Image54.Left+8;
  Form2.Image55.Left:=Form2.Image55.Left+8;
  Form2.Image56.Left:=Form2.Image56.Left+8;
  Form2.Image57.Left:=Form2.Image57.Left+8;
  Form2.Image58.Left:=Form2.Image58.Left+8;
  Form2.Image59.Left:=Form2.Image59.Left+8;
  Form2.Image60.Left:=Form2.Image60.Left+8;
  Form2.Image61.Left:=Form2.Image61.Left+8;
  Form2.Image62.Left:=Form2.Image62.Left+8;
  Form2.Image63.Left:=Form2.Image63.Left+8;
  Form2.Image64.Left:=Form2.Image64.Left+8;
  Form2.Image65.Left:=Form2.Image65.Left+8;
  Form2.Image66.Left:=Form2.Image66.Left+8;
  Form2.Image67.Left:=Form2.Image67.Left+8;
  Form2.Image68.Left:=Form2.Image68.Left+8;
  Form2.Image69.Left:=Form2.Image69.Left+8;
  Form2.Image70.Left:=Form2.Image70.Left+8;
  inc(Licz);
  PokazUkryj();
  end;

end;

procedure TForm2.Image36MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image36.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image36MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image36.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Visible:=False;
  Form1.Visible:=True;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  CzyscEkran(1);
  CzyscEkran(2);
  CzyscEkran(3);
  WczytajGrafiki();
  PokazUkryj();
  Form2.Width:=428;
  Form2.Height:=424;
  Form2.Image85.Width:=460;
  Form2.Image85.Height:=460;

end;

procedure TForm2.Image37MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image37.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image38MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image38.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image39MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image39.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image41MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image41.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image42MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image42.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image43MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image43.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image44MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image44.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image45MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image45.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image46MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image46.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image47MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image47.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image48MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image48.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image49MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image49.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image50MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image50.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image51MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image51.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image52MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image52.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image53MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image53.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image54MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image54.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image55MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image55.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image56MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image56.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image57MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image57.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image58MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image58.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image59MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image59.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image60MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image60.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image61MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image61.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image62MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image62.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image63MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image63.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image64MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image64.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image65MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image65.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image66MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image66.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image67MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image67.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image68MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image68.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image69MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image69.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image70MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image70.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image37MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image37.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image38MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image38.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image39MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image39.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image40MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image40.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image40MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image40.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Down.bmp');
end;

procedure TForm2.Image41MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image41.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image42MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image42.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image43MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image43.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image44MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image44.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image45MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image45.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image46MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image46.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image47MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image47.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image48MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image48.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image49MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image49.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image50MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image50.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image51MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image51.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image52MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image52.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image53MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image53.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image54MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image54.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image55MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image55.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image56MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image56.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image57MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image57.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image58MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image58.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image59MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image59.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image60MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image60.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image61MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image61.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image62MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image62.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image63MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image63.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image64MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image64.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image65MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image65.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image66MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image66.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image67MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image67.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image68MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image68.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image69MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image69.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image70MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image70.Picture.LoadFromFile('Grafiki/Buttons/Zapisz_Up.bmp');
end;

procedure TForm2.Image72MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image72.Picture.LoadFromFile('Grafiki/Buttons/Poprzedni_Down.bmp');
  if Form2.Image1.Left<=131 then
  begin
    Licz:=1;
    Form2.Timer2.Enabled:=True;
  end;
end;

procedure TForm2.Image73MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image73.Picture.LoadFromFile('Grafiki/Buttons/Nastepny_Down.bmp');
  if Form2.Image35.Left>=243 then
  begin
    Licz:=1;
    Form2.Timer1.Enabled:=True;
  end;
end;

procedure TForm2.Image72MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image72.Picture.LoadFromFile('Grafiki/Buttons/Poprzedni_Up.bmp');
end;

procedure TForm2.Image73MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image73.Picture.LoadFromFile('Grafiki/Buttons/Nastepny_Up.bmp');
end;

procedure TForm2.Image74MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=True;
end;

procedure TForm2.Image74MouseMove(Sender: TObject; Shift: TShiftState; X,
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

  Form2.Image74.Cursor:=crPisak;


  Form2.Image74.Canvas.Pen.Width:=3;

  if Form5.CheckBox1.Checked=True then Form2.Image74.Canvas.Pen.Color:=clBlack;
  if Form5.CheckBox2.Checked=True then Form2.Image74.Canvas.Pen.Color:=clBlue;
  if Form5.CheckBox3.Checked=True then Form2.Image74.Canvas.Pen.Color:=clRed;
  if Form5.CheckBox4.Checked=True then Form2.Image74.Canvas.Pen.Color:=clGreen;
  if Form5.CheckBox5.Checked=True then Form2.Image74.Canvas.Pen.Color:=clYellow;
  if Form5.CheckBox6.Checked=True then Form2.Image74.Canvas.Pen.Color:=clPurple;
  if (a=true) then
  begin
    Image74.Canvas.MoveTo(x1,y1);
    Image74.Canvas.LineTo(x,y);
  end;
  x1:=x;
  y1:=y;
end;

procedure TForm2.Image74MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=False;
end;

procedure TForm2.Image75MouseMove(Sender: TObject; Shift: TShiftState; X,
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

  Form2.Image75.Cursor:=crPisak;
  Form2.Image75.Canvas.Pen.Width:=3;

  if Form5.CheckBox1.Checked=True then Form2.Image75.Canvas.Pen.Color:=clBlack;
  if Form5.CheckBox2.Checked=True then Form2.Image75.Canvas.Pen.Color:=clBlue;
  if Form5.CheckBox3.Checked=True then Form2.Image75.Canvas.Pen.Color:=clRed;
  if Form5.CheckBox4.Checked=True then Form2.Image75.Canvas.Pen.Color:=clGreen;
  if Form5.CheckBox5.Checked=True then Form2.Image75.Canvas.Pen.Color:=clYellow;
  if Form5.CheckBox6.Checked=True then Form2.Image75.Canvas.Pen.Color:=clPurple;
  if (a=true) then
  begin
    Image75.Canvas.MoveTo(x1,y1);
    Image75.Canvas.LineTo(x,y);
  end;
  x1:=x;
  y1:=y;
end;

procedure TForm2.Image76MouseMove(Sender: TObject; Shift: TShiftState; X,
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

  Form2.Image76.Cursor:=crPisak;
  Form2.Image76.Canvas.Pen.Width:=3;

  if Form5.CheckBox1.Checked=True then Form2.Image76.Canvas.Pen.Color:=clBlack;
  if Form5.CheckBox2.Checked=True then Form2.Image76.Canvas.Pen.Color:=clBlue;
  if Form5.CheckBox3.Checked=True then Form2.Image76.Canvas.Pen.Color:=clRed;
  if Form5.CheckBox4.Checked=True then Form2.Image76.Canvas.Pen.Color:=clGreen;
  if Form5.CheckBox5.Checked=True then Form2.Image76.Canvas.Pen.Color:=clYellow;
  if Form5.CheckBox6.Checked=True then Form2.Image76.Canvas.Pen.Color:=clPurple;
  if (a=true) then
  begin
    Image76.Canvas.MoveTo(x1,y1);
    Image76.Canvas.LineTo(x,y);
  end;
  x1:=x;
  y1:=y;
end;

procedure TForm2.Image75MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=True;
end;

procedure TForm2.Image76MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=True;
end;

procedure TForm2.Image75MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=False;
end;

procedure TForm2.Image76MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  a:=False;
end;

procedure TForm2.Image80Click(Sender: TObject);
begin
  Form2.Visible:=False;
  Form1.Visible:=True;
end;

procedure TForm2.Image80MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image80.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Down.bmp');
end;

procedure TForm2.Image80MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image80.Picture.LoadFromFile('Grafiki/Buttons/Zamknij_Up.bmp');
end;

procedure TForm2.Image81Click(Sender: TObject);
var
  x : Integer;
begin
  Form2.AlphaBlend:=True;
  Form2.Enabled:=False;
  x:=Application.MessageBox('Wzorce wszystkich znak�w zostan� skasowane.'+#13+'Czy na pewno chcesz kontynuowa�?','Kasowanie wzorc�w', MB_YESNO or MB_ICONQUESTION);
    if x=6 then
    begin
      KasujWzorce();
      Form2.AlphaBlend:=False;
      Form2.Enabled:=True;
    end;
    if x=7 then
    begin
      Form2.AlphaBlend:=False;
      Form2.Enabled:=True;
    end;
end;

procedure TForm2.Image81MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image81.Picture.LoadFromFile('Grafiki/Buttons/Kasuj_wzorce_Down.bmp');
end;

procedure TForm2.Image81MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image81.Picture.LoadFromFile('Grafiki/Buttons/Kasuj_wzorce_Up.bmp');
end;

procedure TForm2.Image82Click(Sender: TObject);
begin
  CzyscEkran(1);
end;

procedure TForm2.Image82MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image82.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Down.bmp');
end;

procedure TForm2.Image82MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image82.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
end;

procedure TForm2.Image83Click(Sender: TObject);
begin
  CzyscEkran(2);
end;

procedure TForm2.Image83MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image83.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Down.bmp');
end;

procedure TForm2.Image83MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image83.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
end;

procedure TForm2.Image84Click(Sender: TObject);
begin
  CzyscEkran(3);
end;

procedure TForm2.Image84MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image84.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Down.bmp');
end;

procedure TForm2.Image84MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form2.Image84.Picture.LoadFromFile('Grafiki/Buttons/Czysc_ekran_Up.bmp');
end;

procedure TForm2.Image41Click(Sender: TObject);
begin
  ZapiszClick(5);
end;

procedure TForm2.Image42Click(Sender: TObject);
begin
  ZapiszClick(6);
end;

procedure TForm2.Image43Click(Sender: TObject);
begin
  ZapiszClick(7);
end;

procedure TForm2.Image44Click(Sender: TObject);
begin
  ZapiszClick(8);
end;

procedure TForm2.Image45Click(Sender: TObject);
begin
  ZapiszClick(9);
end;

procedure TForm2.Image46Click(Sender: TObject);
begin
  ZapiszClick(10);
end;

procedure TForm2.Image47Click(Sender: TObject);
begin
  ZapiszClick(11);
end;

procedure TForm2.Image48Click(Sender: TObject);
begin
  ZapiszClick(12);
end;

procedure TForm2.Image49Click(Sender: TObject);
begin
  ZapiszClick(13);
end;

procedure TForm2.Image50Click(Sender: TObject);
begin
  ZapiszClick(14);
end;

procedure TForm2.Image51Click(Sender: TObject);
begin
  ZapiszClick(15);
end;

procedure TForm2.Image52Click(Sender: TObject);
begin
  ZapiszClick(16);
end;

procedure TForm2.Image53Click(Sender: TObject);
begin
  ZapiszClick(17);
end;

procedure TForm2.Image54Click(Sender: TObject);
begin
  ZapiszClick(18);
end;

procedure TForm2.Image55Click(Sender: TObject);
begin
  ZapiszClick(19);
end;

procedure TForm2.Image56Click(Sender: TObject);
begin
  ZapiszClick(20);
end;

procedure TForm2.Image57Click(Sender: TObject);
begin
  ZapiszClick(21);
end;

procedure TForm2.Image58Click(Sender: TObject);
begin
  ZapiszClick(22);
end;

procedure TForm2.Image59Click(Sender: TObject);
begin
  ZapiszClick(23);
end;

procedure TForm2.Image60Click(Sender: TObject);
begin
  ZapiszClick(24);
end;

procedure TForm2.Image61Click(Sender: TObject);
begin
  ZapiszClick(25);
end;

procedure TForm2.Image62Click(Sender: TObject);
begin
  ZapiszClick(26);
end;

procedure TForm2.Image63Click(Sender: TObject);
begin
  ZapiszClick(27);
end;

procedure TForm2.Image64Click(Sender: TObject);
begin
  ZapiszClick(28);
end;

procedure TForm2.Image65Click(Sender: TObject);
begin
  ZapiszClick(29);
end;

procedure TForm2.Image66Click(Sender: TObject);
begin
  ZapiszClick(30);
end;

procedure TForm2.Image67Click(Sender: TObject);
begin
  ZapiszClick(31);
end;

procedure TForm2.Image68Click(Sender: TObject);
begin
  ZapiszClick(32);
end;

procedure TForm2.Image69Click(Sender: TObject);
begin
  ZapiszClick(33);
end;

procedure TForm2.Image70Click(Sender: TObject);
begin
  ZapiszClick(34);
end;

procedure TForm2.Image36Click(Sender: TObject);
begin
  ZapiszClick(0);
end;

procedure TForm2.Image37Click(Sender: TObject);
begin
  ZapiszClick(1);
end;

procedure TForm2.Image38Click(Sender: TObject);
begin
  ZapiszClick(2);
end;

procedure TForm2.Image39Click(Sender: TObject);
begin
  ZapiszClick(3);
end;

procedure TForm2.Image40Click(Sender: TObject);
begin
  ZapiszClick(4);
end;

end.
