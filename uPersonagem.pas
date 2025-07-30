unit uPersonagem;

interface

type TPersonagem = class
  protected
    Nome:String;
    Vida:Integer;
    Nivel:Integer;
    Forca:Integer;
    Defesa:Integer;
    Vivo:Boolean;
    function getVidaReal:Integer;
  public
    //Getters & Setters
    function getNome:String;
    procedure setNome(aNome:String);
    function getVida:Integer;
    procedure setVida(aVida:Integer);
    function getNivel:Integer;
    procedure setNivel(aNivel:Integer);
    function getForca:Integer;
    procedure setForca(AForca:Integer);
    function getDefesa:Integer;
    procedure setDefesa(aDefesa:Integer);
    //Métodos relevantes
    function isAlive:Boolean;
    function ataque(aOponente:TPersonagem):Integer;
  end;

implementation

uses System.Math;

{ TPersonagem }

function TPersonagem.getForca: Integer;
begin
  Result:=Self.Forca;
end;

function TPersonagem.getVidaReal: Integer;
begin
  Result:=Self.getVida;
end;

function TPersonagem.ataque(aOponente: TPersonagem):Integer;
var novaVida,novaDefesa:Integer;
begin
  novaVida:=Round( (aOponente.getVidaReal-Self.getForca) /2);
  novaDefesa:=Round( (aOponente.getVidaReal-Self.getForca) /2);
  aOponente.setVida(novaVida);
  aOponente.setDefesa(novaDefesa);
  Result:=Self.getForca;
end;

function TPersonagem.getDefesa: Integer;
begin
   Result:=Self.Defesa;
end;

function TPersonagem.getNivel: Integer;
begin
   Result:=Self.Nivel;
end;

function TPersonagem.getNome: String;
begin
   Result:=Self.Nome;
end;

function TPersonagem.getVida: Integer;
begin
   Result:=Self.Vida;
end;

function TPersonagem.isAlive: Boolean;
begin
  Result:=Self.Vida>0;
end;

procedure TPersonagem.setForca(aForca: Integer);
begin
  Self.Forca:=aForca;
end;

procedure TPersonagem.setDefesa(aDefesa: Integer);
begin
  Self.Defesa:=aDefesa;
end;

procedure TPersonagem.setNivel(aNivel: Integer);
begin
  Self.Nivel:=aNivel;
end;

procedure TPersonagem.setNome(aNome: String);
begin
  Self.Nome:=aNome;
end;

procedure TPersonagem.setVida(aVida: Integer);
begin
  Self.Vida:=aVida;
end;

end.
