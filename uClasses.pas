unit uClasses;

interface

  //Abstração
  //Encapsulamento
  type TPersonagem = class
  private
    Nome:String;
    Genero:String;
    Vida:Integer;
    Nivel:Integer;
    Dano:Integer;
    Defesa:Integer;
  public
    //Getter & Setter
    function getDano:Integer;
    procedure setDano(ADano:Integer);
    function getGenero:String;
    procedure setGenero(aGenero:String);
    constructor Create(aDano,aDefesa:Integer);
  end;

  //Herança
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiencia:Double;
  end;

  type TBoss = class (TPersonagem)

  end;

implementation

uses System.SysUtils;

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);
begin
  Self.setDano(aDano);
  Self.Defesa:=aDefesa;
end;

function TPersonagem.getDano: Integer;
begin
  Result:=Self.Dano+Self.Nivel;
end;

function TPersonagem.getGenero: String;
begin
  Result:=Self.Genero;
end;

procedure TPersonagem.setGenero(aGenero: String);
begin
  Self.Genero:=aGenero;
end;

procedure TPersonagem.setDano(ADano: Integer);
begin
  if ADano<1 then begin
    raise Exception.Create('O Dano tem que ser maior que zero. TPersonagem.setDano');
  end;
  Self.Dano:=ADano;
end;

end.
