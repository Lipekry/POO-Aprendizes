unit uBoss;

interface

  uses uPersonagem;

  type TBoss = class (TPersonagem)
    HabilidadeEspecial:String;
    function getHabilidadeEspecial:String;
    procedure setHabilidadeEspecial(aHabilidade:String);

    //Métodos Polimorfos
    function getForca:Integer;
    procedure setForca(aForca:Integer);
  end;

implementation

uses System.SysUtils;

{ TBoss }

function TBoss.getForca: Integer;
begin
  Result:=Self.Forca+(inherited getNivel*2);
end;

function TBoss.getHabilidadeEspecial: String;
begin
  Result:=Self.HabilidadeEspecial;
end;

procedure TBoss.setForca(aForca: Integer);
begin
  if aForca<=0 then raise Exception.Create('A força atribuída ao personagem não pode ser menor que ou igual a 0. TPlayer.setForca');
  Self.Forca:=aForca;
end;

procedure TBoss.setHabilidadeEspecial(aHabilidade: String);
begin
  Self.HabilidadeEspecial:=aHabilidade;
end;

end.
