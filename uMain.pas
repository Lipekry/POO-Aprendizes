unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MeuEdit: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uClasses, System.Generics.Collections;

procedure TForm1.Button1Click(Sender: TObject);
var personagem:TPersonagem;
    player:TPlayer;
    boss:TBoss;
    ListaPersonagens:TObjectList<TPersonagem>;
begin
  ListaPersonagens:=TObjectList<TPersonagem>.Create;
  ListaPersonagens.Add(TBoss.Create(1,1));
  ListaPersonagens.Add(TBoss.Create(1,1));
  ListaPersonagens.Add(TBoss.Create(1,1));
  ListaPersonagens.Add(TPlayer.Create(1,1));
  ListaPersonagens.Add(TPlayer.Create(1,1));
  ListaPersonagens.Add(TPlayer.Create(1,1));

  for personagem in ListaPersonagens do begin
    personagem.getDano;
  end;

end;

end.
