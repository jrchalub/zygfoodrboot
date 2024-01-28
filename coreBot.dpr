program coreBot;

uses
  Vcl.Forms,
  Windows,
  uTInject.ConfigCEF,
  u_principal in 'u_principal.pas' {frmPrincipal},
  uBotConversa in 'uBotConversa.pas',
  uBotGestor in 'uBotGestor.pas',
  uBotDAO in 'uBotDAO.pas' {BotDAO: TDataModule},
  uBlackList in 'uBlackList.pas' {frmBlackList},
  uItemPedido in 'uItemPedido.pas' {frmItemPedido},
  Vcl.Themes,
  Vcl.Styles,
  uConfig in 'uConfig.pas' {fconfig},
  uBackup in 'uBackup.pas' {fbackup},
  fPedidos in 'fPedidos.pas' {formPedidos},
  fsplash in 'fsplash.pas' {splash},
  ftabela in 'ftabela.pas' {tabela},
  uGraficoVendas in 'uGraficoVendas.pas' {frmGraficoVendas},
  uGraficoTipo in 'uGraficoTipo.pas' {frmGraficoTipos},
  uAjustes in 'uAjustes.pas' {frmAjustes},
  uProceduresFunctions in 'uProceduresFunctions.pas',
  uCadastroBasicoClientes in 'uCadastroBasicoClientes.pas' {frmCadastroBasicoClientes},
  uLoginParaCancelamento in 'uLoginParaCancelamento.pas' {frmLoginParaCancelamento};

{$R *.res}

begin
  If not GlobalCEFApp.StartMainProcess then
     Exit;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'coreBot';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TBotDAO, BotDAO);
  Application.CreateForm(TfrmCadastroBasicoClientes, frmCadastroBasicoClientes);
  Application.Run;
end.
