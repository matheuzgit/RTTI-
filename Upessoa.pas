unit Upessoa;

interface

type
  tpessoa = class

  private
    Fidade: integer;
    Fnome: string;
    procedure Setidade(const Value: integer);
    procedure Setnome(const Value: string);

  public
    constructor create;

    property nome : string read Fnome write Setnome;

    property idade : integer read Fidade write Setidade;
  end;

implementation

{ tpessoa }

constructor tpessoa.create;
begin
  Fnome := 'matheus';
  Fidade := 23;
end;

procedure tpessoa.Setidade(const Value: integer);
begin
  Fidade := Value;
end;

procedure tpessoa.Setnome(const Value: string);
begin
  Fnome := Value;
end;

end.
