unit Untconexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmCidades = class(TForm)
    Conexao: TADOConnection;
    Cidades: TADODataSet;
    CidadesCódigo: TAutoIncField;
    CidadesNome: TWideStringField;
    CidadesEstado: TWideStringField;
    datCidade: TDataSource;
    DBGrid1: TDBGrid;
    BtnPesq: TBitBtn;
    EdtPesquisa: TEdit;
    procedure BtnPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCidades: TFrmCidades;

implementation

{$R *.dfm}

procedure TFrmCidades.BtnPesqClick(Sender: TObject);
begin

 Cidades.Locate('Nome', EdtPesquisa.Text, [loCaseInsensitive,loPartialKey]);

end;

end.
