unit uPlayer;

interface

uses uPersonagem, System.SysUtils;

  type TPlayer = class (TPersonagem)
  private
    function getVidaReal:Integer;
  protected
    NickName:String;
    Experiencia:Double;
  public
    function getNickName:String;
    procedure setNickName(aNickName:String);
    function getExperiencia:Double;
    procedure setExperiencia(aExperiencia:Double);

    //Métodos Polimorfos
    function getForca:Integer;
    procedure setForca(aForca:Integer);
  end;

implementation

{ TPlayer }

function TPlayer.getExperiencia: Double;
begin
  Result:=Self.Experiencia;
end;

function TPlayer.getForca: Integer;
begin
  Result:=(inherited getForca)+getNivel;
end;

function TPlayer.getNickName: String;
begin
  Result:=Self.NickName;
end;

function TPlayer.getVidaReal: Integer;
begin
  Result:= (inherited getVida) + (inherited getDefesa);
end;

procedure TPlayer.setExperiencia(aExperiencia: Double);
begin
  Self.Experiencia:=aExperiencia;
end;

procedure TPlayer.setForca(aForca: Integer);
begin
  if aForca<=0 then raise Exception.Create('A força atribuída ao personagem não pode ser menor que ou igual a 0. TPlayer.setForca');
  inherited setForca(aForca);
end;

procedure TPlayer.setNickName(aNickName: String);
begin
  if aNickName='' then raise Exception.Create('O NickName não pode ser vazio!');
  if aNickName.Length<5 then raise Exception.Create('O NickName tem que ser maior que 5!');
  Self.NickName:=aNickName;
end;

end.
