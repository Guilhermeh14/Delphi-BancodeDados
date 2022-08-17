program PrjConexaoBanco;

uses
  Vcl.Forms,
  Untconexao in 'Untconexao.pas' {FrmCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCidades, FrmCidades);
  Application.Run;
end.
