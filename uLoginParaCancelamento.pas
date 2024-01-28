unit uLoginParaCancelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Comp.Client,
  AdvGlowButton, Vcl.ExtCtrls, AdvMetroButton, dxGDIPlusClasses, AdvPanel;

type
  TfrmLoginParaCancelamento = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    AdvPanel2: TAdvPanel;
    Image1: TImage;
    Label31: TLabel;
    AdvPanel3: TAdvPanel;
    AdvMetroButton1: TAdvMetroButton;
    AdvPanel4: TAdvPanel;
    AdvPanel1: TAdvPanel;
    Panel1: TPanel;
    Image2: TImage;
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure AdvPanel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginParaCancelamento: TfrmLoginParaCancelamento;

implementation

{$R *.dfm}

uses uProceduresFunctions, u_principal;

procedure TfrmLoginParaCancelamento.AdvMetroButton1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmLoginParaCancelamento.AdvPanel2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage (self.Handle, WM_SYSCOMMAND, $F012, 0) ;
end;

procedure TfrmLoginParaCancelamento.edtSenhaKeyPress(Sender: TObject;var Key: Char);
var
  motivo:string;
  mensagem:string;
  fdqryVerificaSenha, fdqryVerificandoStatusDoPedido, fdqryApagandoPedidosDoCoreFood : TFDQuery;
begin
  if Key = #13 then
  begin
    //1� Passo
    //Cria as querys que far�o a rotina funcionar
    fdqryVerificaSenha                        := CriarQuery(fdqryVerificaSenha);
    fdqryVerificaSenha.Connection             := GeraConexaoAoBanco_PostGreSQL();

    fdqryVerificandoStatusDoPedido            := CriarQuery(fdqryVerificandoStatusDoPedido);
    fdqryVerificandoStatusDoPedido.Connection := GeraConexaoAoBanco_PostGreSQL();

    fdqryApagandoPedidosDoCoreFood               := CriarQuery(fdqryApagandoPedidosDoCoreFood);
    fdqryApagandoPedidosDoCoreFood.Connection    := GeraConexaoAoBanco_PostGreSQL();

    //2� Passo
    //Verifica se a senha do usuario 14(WhatsApp) esta correta.
    //Usuario 14 foi criado apenas pra resolver cancelamento de pedido que ja foi entregue.
    fdqryVerificaSenha.Close;
    with fdqryVerificaSenha.SQL do
    begin
      Add('select USU_002, usu_004 from usuarios WHERE USU_004 = ' + QuotedStr(edtSenha.Text));
    end;
    fdqryVerificaSenha.Open();

    //3� Passo
    //Se a senha estiver correta, faz a rotina de cancelamento na tabela tb_pedido apenas.
    //Ser� criado uma trigger que fara a dele��o do pedido cancelado aqui na tbl_pedido do sistema coreboot.
    //Aqui no Sistema Coreboot ser� apenas mudado o status na tabela tbm_pedido de E para C.
    //na Tabela Tbl_ItemPedido ser�o detados os itens daquele pedido.
    //Essa Dele��o ser� feita no sistema corefood nas seguintes tabelas:
    // nesta mesma ordem:vendasitem / vendasitemopcional / vendas /  cliente
    if fdqryVerificaSenha.RecordCount > 0 then
    begin
    //4� Passo
    //Selecionar o pedido a ser cancelado
      fdqryVerificandoStatusDoPedido.Close;
      with fdqryVerificandoStatusDoPedido.SQL do
      begin
        Clear;
        Add('select pedido_id, pedido_status from tbl_pedido');
        Add('where pedido_status = ' + QuotedStr('E'));
        Add(' and pedido_id = ' + IntToStr(idPedido));
      end;
      fdqryVerificandoStatusDoPedido.Open();

      //5� Passo
      //Ao Encontrar o pedido que ser� cancelado fazer a rotina abaixo
      //if fdqryVerificandoStatusDoPedido.RecordCount > 0 then
      begin
        if frmPrincipal.uPedidos.RecordCount > 0 then
        begin
          if Application.MessageBox('Tem certeza que deseja cancelar o pedido?','ATEN��O',MB_YESNO+MB_ICONQUESTION)=ID_YES then
          begin
            motivo:=InputBox('','MOTIVO DO CANCELAMENTO','');

            with frmPrincipal.auxiliar do
            begin
              //5.1 Atualizando a coluna de status do pedido E para C.
              Close;
              sql.Clear;
              SQL.Add('update tbl_pedido set pedido_status=:status,pedido_motivo=:motivo where pedido_id=:id');
              ParamByName('status').AsString := 'C';
              ParamByName('motivo').AsString := motivo;
              ParamByName('id').AsInteger    := idPedido;
              ExecSQL;
            end;

            //Apagando o pedido do sistema corefood
            fdqryApagandoPedidosDoCoreFood.Close;
            with fdqryApagandoPedidosDoCoreFood.SQL do
            begin
              Clear;
              Add('select apagavendacoreboot(' + QuotedStr(IntToStr(idPedido)) + ')');
            end;
            fdqryApagandoPedidosDoCoreFood.Open();
          end;
            MensagemAVISO('Pedido cancelado com sucesso !');

            mensagem := '';
            mensagem := mensagem+frmPrincipal.Inject1.Emoticons.Triste+' Ol� *'+nome+'* ! \n';
            mensagem := mensagem+'Seu pedido foi cancelado ! \n\n ';
            mensagem := mensagem+'*Motivo*: '+motivo+' \n\n';
            mensagem := mensagem+frmPrincipal.Inject1.Emoticons.LoiraAteLogo+' Esperamos v�-lo(a) novamente ! \n ';

            frmPrincipal.Inject1.Send(fone,mensagem);
            close;
        end;
      end;
    end;
  end;

end;



procedure TfrmLoginParaCancelamento.FormShow(Sender: TObject);
begin
        edtSenha.Clear;
end;

end.
