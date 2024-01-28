unit uCadastroBasicoClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, AdvMetroButton, dxGDIPlusClasses, AdvPanel;

type
  TfrmCadastroBasicoClientes = class(TForm)
    Shape1: TShape;
    fdqryClientes: TFDQuery;
    dbedtNome: TDBEdit;
    Label1: TLabel;
    dsClientes: TDataSource;
    dbedtLogradouro: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    fdqryClientessit_001: TIntegerField;
    fdqryClientesemp_001: TIntegerField;
    fdqryClientescli_001: TIntegerField;
    fdqryClientescli_002: TWideStringField;
    fdqryClientescep_004: TWideStringField;
    fdqryClientescep_003: TWideStringField;
    fdqryClientescelular1: TWideStringField;
    Label3: TLabel;
    dbedtCelular: TDBEdit;
    fdqryClientescli_007: TWideStringField;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    AdvPanel2: TAdvPanel;
    Image1: TImage;
    Label31: TLabel;
    AdvPanel3: TAdvPanel;
    AdvMetroButton1: TAdvMetroButton;
    AdvPanel1: TAdvPanel;
    AdvPanel4: TAdvPanel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtNomeEnter(Sender: TObject);
    procedure dbedtNomeExit(Sender: TObject);
    procedure dbedtLogradouroEnter(Sender: TObject);
    procedure dbedtLogradouroExit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure dbedtCelularEnter(Sender: TObject);
    procedure dbedtCelularExit(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvPanel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBasicoClientes: TfrmCadastroBasicoClientes;

implementation

{$R *.dfm}

uses uProceduresFunctions , u_principal;

procedure TfrmCadastroBasicoClientes.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroBasicoClientes.AdvPanel2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage (self.Handle, WM_SYSCOMMAND, $F012, 0) ;
end;

procedure TfrmCadastroBasicoClientes.DBEdit1Enter(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := $00C9F2BD;
end;

procedure TfrmCadastroBasicoClientes.DBEdit1Exit(Sender: TObject);
begin
  dbedtCelular.Text := CelularCliente;
  fdqryClientescelular1.AsString := CelularCliente;
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := clWhite;
end;

procedure TfrmCadastroBasicoClientes.dbedtCelularEnter(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := $00C9F2BD;
end;

procedure TfrmCadastroBasicoClientes.dbedtCelularExit(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := clWhite;
end;

procedure TfrmCadastroBasicoClientes.dbedtLogradouroEnter(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := $00C9F2BD;
end;

procedure TfrmCadastroBasicoClientes.dbedtLogradouroExit(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := clWhite;
end;

procedure TfrmCadastroBasicoClientes.dbedtNomeEnter(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := $00C9F2BD;
end;


procedure TfrmCadastroBasicoClientes.dbedtNomeExit(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBEdit) then
// mudar a cor do componente
  TDBEdit(Sender).Color := clWhite;
end;

procedure TfrmCadastroBasicoClientes.DBMemo1Enter(Sender: TObject);
begin
// verificar o camponente
  if (Sender is TDBMemo) then
// mudar a cor do componente
  TDBEdit(Sender).Color := $00C9F2BD;
end;

procedure TfrmCadastroBasicoClientes.DBMemo1Exit(Sender: TObject);
begin
  // verificar o camponente
  if (Sender is TDBMemo) then
// mudar a cor do componente
  TDBEdit(Sender).Color := clWhite;
end;

procedure TfrmCadastroBasicoClientes.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := AnsiUpperCase( Key )[1];
  if Key = #13 then
    if MessageDlg('Deseja Salvar este cadastro',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      fdqryClientescli_001.AsInteger := NovoId('clientes', 'cli_001', 1);
      fdqryClientesemp_001.AsInteger := 1;
      fdqryClientessit_001.AsInteger := 4;
      fdqryClientes.post;
      MensagemAVISO('Excelente ! Cliente Cadastrado, agora você ja pode aceitar o pedido do cliente');
      frmCadastroBasicoClientes.Close;
    end
    else
      dbedtNome.SetFocus;
end;

procedure TfrmCadastroBasicoClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //2º habilitando a passagem dos campos pelo enter
  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmCadastroBasicoClientes.FormShow(Sender: TObject);
begin
  //1º Abre a query, da um insert na tabela e foca o primeiro campo
  fdqryClientes.Open();
  fdqryClientes.Insert;
  dbedtNome.SetFocus;
end;

end.
