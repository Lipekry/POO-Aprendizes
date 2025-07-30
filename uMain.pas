unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPersonagem, uPlayer, uBoss, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MeuEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    wListaPersonagens:TObjectList<TPersonagem>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  wListaPersonagens:=TObjectList<TPersonagem>.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  wListaPersonagens.Free;
end;

end.
