program Rozpoznawanie;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Edycja_wzorcow in 'Edycja_wzorcow.pas' {Form2},
  Podglad_wzorcow in 'Podglad_wzorcow.pas' {Form3},
  Statystyka in 'Statystyka.pas' {Form4},
  Ustawienia in 'Ustawienia.pas' {Form5},
  Info in 'Info.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
