program Imc_POO;

uses
  Vcl.Forms,
  uFrmIndice in 'uFrmIndice.pas' {FrmIndice},
  uPessoa in 'uPessoa.pas',
  uResultado in 'uResultado.pas',
  uCalculadora in 'uCalculadora.pas',
  uFrmRequisitos in 'uFrmRequisitos.pas' {Requisitos},
  uFrmResultado in 'uFrmResultado.pas' {FrmResultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmIndice, FrmIndice);
  Application.CreateForm(TRequisitos, Requisitos);
  Application.CreateForm(TFrmResultado, FrmResultado);
  Application.Run;
end.
