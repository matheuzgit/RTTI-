unit Urtti;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, system.RTTI, Vcl.StdCtrls, Upessoa;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fpessoa : tpessoa;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
var
 ctx : TRTTIcontext;
 typRtti : TRTTItype;
 mthRtti : TRttiMethod;
 fildRtti : TRttiField;
 prpRtti : TRttiProperty;
begin
  ctx := TRTTIcontext.create;
  try
    typRtti := ctx.GetType(Tform2);

    typRtti.GetMethods;

    for mthRtti in typRtti.GetMethods do
      Memo1.Lines.Add(mthRtti.Name);

    for fildRtti in typRtti.GetFields do
      Memo2.Lines.Add(fildRtti.name);

    for prpRtti in typRtti.GetProperties do
      Memo3.Lines.Add(prpRtti.name);
  finally
    ctx.free;
  end;


end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  fpessoa := tpessoa.create;
end;

end.
