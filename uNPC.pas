unit uNPC;

interface

uses uPersonagem, System.Classes;

  type TNPC = class (TPersonagem)
    Falas:TStringList;
    function ataque(aOponente:TPersonagem):Integer;
    constructor Create(aNome:String); overload;
    constructor Create(aNome:String;aFalas:TStringList); overload;
    destructor Destroy; override;
  end;

implementation

{ TNPC }

constructor TNPC.Create(aNome:String);
begin
  Self.Nome:=aNome;
  Self.Falas:=TStringList.Create;
  Self.Falas.Add('Olá');
  Self.Falas.Add('Meu nome é '+Self.getNome);
  Self.Falas.Add('Aooba');
  Self.Falas.Add('Parece que vai chover hoje né coisa');
  Self.Falas.Add('E o corinthians hein?');
  Self.Falas.Add('Como isso afeta o grêmio?');
  Self.Falas.Add('Irineu... você não sabe nem eu');
  Self.Falas.Add('Sabe me dizer com quantos paus se fazem uma canoa?');
end;

function TNPC.ataque(aOponente: TPersonagem): Integer;
begin
  Result:=0;
end;

constructor TNPC.Create(aNome: String; aFalas: TStringList);
begin
  Self.Nome:=aNome;
  if Falas<>nil then Self.Falas:=aFalas;
end;

destructor TNPC.Destroy;
begin
  Self.Falas.Clear;
  Self.Falas.Free;
  inherited;
end;

end.
