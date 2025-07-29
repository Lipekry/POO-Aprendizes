unit uClasses;

interface

  type TPersonagem = class
  private
    Nome:String;
    Genero:String;
    Vida:Integer;
    Nivel:Integer;
    Dano:Integer;
    Defesa:Integer;
  public
    function getDano:Integer;
    procedure setDano(ADano:Integer);
    constructor Create(aDano,aDefesa:Integer);
  end;

  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiencia:Double;
    function getDano:Integer;
    procedure setDano(ADano:Integer);
  end;

  type TBoss = class (TPersonagem)
    HabilidadeEspecial:String;
    function getDano:Integer;
    procedure setDano(ADano:Integer);
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
  Result:=Self.Dano;
end;

procedure TPersonagem.setDano(ADano: Integer);
begin
  Self.Dano:=ADano;
end;

{ TBoss }

function TBoss.getDano: Integer;
begin

end;

procedure TBoss.setDano(ADano: Integer);
begin

end;

{ TPlayer }

function TPlayer.getDano: Integer;
begin

end;

procedure TPlayer.setDano(ADano: Integer);
begin

end;

end.
