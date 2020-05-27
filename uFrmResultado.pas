unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uPessoa, uResultado;

type
  TFrmResultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LbAltura: TLabel;
    LbPeso: TLabel;
    LbSexo: TLabel;
    LbImc: TLabel;
    LbDesc: TLabel;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; pessoa: TPessoa;
      recorde: RResultado);
  end;

var
  FrmResultado: TFrmResultado;

implementation

constructor TFrmResultado.Create(AOwner: TComponent; pessoa: TPessoa;
  recorde: RResultado);
begin
  inherited Create(AOwner);

  try

    LbAltura.Caption := FloatToStr(pessoa.altura);
    LbPeso.Caption := FloatToStr(pessoa.peso);
    LbSexo.Caption := pessoa.sexo;

    LbImc.Caption := FormatFloat('#.##', recorde.Valor);
    LbDesc.Caption := recorde.Descricao;
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

{$R *.dfm}

end.
