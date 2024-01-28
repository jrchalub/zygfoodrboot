unit uProceduresFunctions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.PGDef, FireDAC.Phys.PG, FireDAC.Comp.UI,
  Data.DB, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, dxGDIPlusClasses, Vcl.StdCtrls,
  Vcl.ComCtrls, StrUtils, Vcl.Buttons;

  function GeraConexaoAoBanco_PostGreSQL():TFDConnection;
  function CriarQuery(qry : TFDQuery) : TFDQuery;
  function GeraConexaoAoBanco_MySQL():TFDConnection;
  function MensagemAVISO(Msg:string):boolean;
  procedure PreparaQuerySQL(var Query : TFDQuery; sql : string );
  function ExecutaConsultaSQL(var Query : TFDQuery; sql : string ) : boolean;
  function NovoId(tabela, nome_campo_chave : string; id_empresa : integer; nome_campo_id_empresa : string = 'emp_001'; filtro : string ='') : integer;
  procedure ChamarFormulario(aClasseForm: TComponentClass;var aForm);

var
ConexaoFireDAC_PostGres, ConexaoFireDAC_MySQl : TFDConnection;


implementation

uses uBotDAO;

procedure PreparaQuerySQL(var Query : TFDQuery; sql : string );
begin
  Query.close;
  Query.SQL.Clear;
  Query.SQL.Add(sql);
end;

function ExecutaConsultaSQL(var Query : TFDQuery; sql : string ) : boolean;
begin
  PreparaQuerySQL( Query ,sql );
  Query.Open;
  Result:= Query.RecordCount>0;
end;

function NovoId(tabela, nome_campo_chave : string; id_empresa : integer; nome_campo_id_empresa : string = 'emp_001'; filtro : string ='') : integer;
var qr_aux : TFDQuery;
    sql : string;
begin
  qr_aux := TFDQuery.Create(nil);
  qr_aux.Connection := BotDAO.CN;
  if trim(filtro) ='' then filtro := ' true ';

  sql := Format('select coalesce(max(%s) ,0)+1 from %s where %s=%d and %s', [nome_campo_chave, tabela, nome_campo_id_empresa, id_empresa, filtro]);
  if ExecutaConsultaSQL(qr_aux, sql) then
    result:= qr_aux.Fields[0].AsInteger
  else
    result:=0;
  FreeAndNil(qr_aux);
end;

function MensagemAVISO(Msg:string):boolean;
begin
  Result := (Application.MessageBox(pchar(Msg),'AVISO' , MB_OK + MB_ICONWARNING) = ID_YES);
end;

function CriarQuery(qry : TFDQuery) : TFDQuery;
begin
   qry := TFDQuery.Create(nil);
   Result := qry;
end;

function GeraConexaoAoBanco_PostGreSQL():TFDConnection;
var
  linkMySQL  : TFDPhysPgDriverLink;
  WaitCursor : TFDGUIxWaitCursor;
begin
    linkMySQL  := TFDPhysPgDriverLink.Create(Application);
    WaitCursor := TFDGUIxWaitCursor.Create(Application);
    ConexaoFireDAC_PostGres := TFDConnection.Create(Application);
    try
      ConexaoFireDAC_PostGres.Connected := False;
      ConexaoFireDAC_PostGres.Params.Clear;

      ConexaoFireDAC_PostGres.DriverName := 'PG';
      ConexaoFireDAC_PostGres.Params.Add('User_Name=postgres');
      ConexaoFireDAC_PostGres.Params.Add('Password=123');
      ConexaoFireDAC_PostGres.Params.Add('Server=LOCALHOST');
      ConexaoFireDAC_PostGres.Params.Add('Database=COREFOOD');

      ConexaoFireDAC_PostGres.Connected := True;

      Result := ConexaoFireDAC_PostGres;
      except on E: Exception do
         begin
           if (ConexaoFireDAC_PostGres <> nil) then
             ConexaoFireDAC_PostGres.Free;

           ShowMessage(E.Message
                       + #13#13 +
                       'Não foi possível realizar a conexão.' + #13 +
                       'Verifique se os parâmetros estão corretos.');
           raise;
         end;
    end;
end;

function GeraConexaoAoBanco_MySQL():TFDConnection;
var
  linkMySQL  : TFDPhysPgDriverLink;
  WaitCursor : TFDGUIxWaitCursor;
begin
    linkMySQL  := TFDPhysPgDriverLink.Create(Application);
    WaitCursor := TFDGUIxWaitCursor.Create(Application);
    ConexaoFireDAC_MySQl := TFDConnection.Create(Application);
    try
      ConexaoFireDAC_MySQl.Connected := False;
      ConexaoFireDAC_MySQl.Params.Clear;

      ConexaoFireDAC_MySQl.DriverName := 'MySQL';
      ConexaoFireDAC_MySQl.Params.Add('User_Name=root');
      ConexaoFireDAC_MySQl.Params.Add('Password=');
      ConexaoFireDAC_MySQl.Params.Add('Server=LOCALHOST');
      ConexaoFireDAC_MySQl.Params.Add('Database=COREFOOD');

      ConexaoFireDAC_MySQl.Connected := True;

      Result := ConexaoFireDAC_MySQl;
      except on E: Exception do
         begin
           if (ConexaoFireDAC_MySQl <> nil) then
             ConexaoFireDAC_MySQl.Free;

           ShowMessage(E.Message
                       + #13#13 +
                       'Não foi possível realizar a conexão.' + #13 +
                       'Verifique se os parâmetros estão corretos.');
           raise;
         end;
    end;
end;


procedure ChamarFormulario(aClasseForm: TComponentClass;var aForm);
begin
  if (TForm(aForm) = nil) then
    Application.CreateForm(aClasseForm,aForm);
  try
    Tform(aForm).Show;
  except
    FreeAndNil(Tform(aForm));
  end;
end;

end.
