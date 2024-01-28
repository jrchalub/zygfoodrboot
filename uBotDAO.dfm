object BotDAO: TBotDAO
  OnCreate = DataModuleCreate
  Height = 535
  Width = 944
  object CN: TFDConnection
    Params.Strings = (
      'Database=COREFOOD'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    AfterConnect = CNAfterConnect
    AfterDisconnect = CNAfterDisconnect
    Left = 56
    Top = 32
  end
  object qry_verificaListaNegra: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 55
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 191
    Top = 457
  end
  object qry_registrarCardapio: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 55
    Top = 160
  end
  object qry_mostrarCardapio: TFDQuery
    Connection = CN
    SQL.Strings = (
      
        'select * from tbl_cardapio where cardapio_id='#39'1'#39' order by cardap' +
        'io_id ASC')
    Left = 55
    Top = 216
    object qry_mostrarCardapiocardapio_id: TIntegerField
      FieldName = 'cardapio_id'
    end
    object qry_mostrarCardapioimg1: TWideStringField
      FieldName = 'img1'
      Size = 255
    end
    object qry_mostrarCardapioimg2: TWideStringField
      FieldName = 'img2'
      Size = 255
    end
    object qry_mostrarCardapioimg3: TWideStringField
      FieldName = 'img3'
      Size = 255
    end
    object qry_mostrarCardapioimg4: TWideStringField
      FieldName = 'img4'
      Size = 255
    end
    object qry_mostrarCardapioimg5: TWideStringField
      FieldName = 'img5'
      Size = 255
    end
  end
  object qry_registrarEndereco: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 191
    Top = 160
  end
  object qry_mostrarEndereco: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_endereco where endereco_id='#39'1'#39)
    Left = 191
    Top = 216
    object qry_mostrarEnderecoendereco_id: TIntegerField
      FieldName = 'endereco_id'
    end
    object qry_mostrarEnderecoendereco_imagem: TWideStringField
      FieldName = 'endereco_imagem'
      Size = 255
    end
  end
  object qry_pizza: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select m.mat_001, '
      '        m.mat_003, '
      '        m.mat_004, '
      '        m.mat_008,'
      '        Cast('#39'Lanches'#39' as varchar(10))as categoria,'
      
        '        cast(concat(u.uni_003, '#39' - '#39', u.uni_002) as varchar(100)' +
        ') as unidade,'
      '        m.sit_001 as id_situacao,'
      '        cast(fn_situacoes(m.sit_001) as varchar(100)) as status'
      'from materiais m'
      'left join categoria_whatsapp c on c.id = m.id_menu '
      
        'left join unidades u on u.uni_001 = m.uni_001 and u.emp_001=m.em' +
        'p_001'
      'where whatsapp = '#39'S'#39' and m.id_catWhatsapp = 2'
      'order by id_menu'
      ''
      ''
      ''
      ''
      '/* select '
      '      m.mat_001, '
      '      m.mat_003, '
      '      m.mat_004, '
      '      m.mat_008,'
      '      c.categoria as categoria,'
      
        '      cast(concat(u.uni_003, '#39' - '#39', u.uni_002) as varchar(100)) ' +
        'as unidade,'
      '      m.sit_001 as id_situacao,'
      '      cast(fn_situacoes(m.sit_001) as varchar(100)) as status'
      'from materiais m'
      
        '--left join categoria_ c on c.cat_001=m.cat_001 and c.emp_001=m.' +
        'emp_001'
      
        'left join categoria_whatsapp c on c.id = m.id_menu -- and c.emp_' +
        '001=m.emp_001'
      
        'left join unidades u on u.uni_001=m.uni_001 and u.emp_001=m.emp_' +
        '001'
      '--where c.cat_002 in('#39'PIZZAS'#39', '#39'DOCES'#39', '#39'SALGADOS'#39', '#39'REFEICOES'#39')'
      'where m.id_menu = 2'
      'order by id_menu   */')
    Left = 321
    Top = 160
    object qry_pizzamat_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mat_001'
      Origin = 'mat_001'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_pizzamat_003: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 50
      FieldName = 'mat_003'
      Origin = 'mat_003'
      Size = 100
    end
    object qry_pizzamat_008: TBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'mat_008'
      Origin = 'mat_008'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object qry_pizzamat_004: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      DisplayWidth = 15
      FieldName = 'mat_004'
      Origin = 'mat_004'
      Size = 50
    end
    object qry_pizzacategoria: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'categoria'
      Origin = 'categoria'
      ReadOnly = True
      Size = 10
    end
    object qry_pizzaunidade: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      DisplayWidth = 15
      FieldName = 'unidade'
      Origin = 'unidade'
      ReadOnly = True
      Size = 100
    end
    object qry_pizzaid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Origin = 'id_situacao'
    end
    object qry_pizzastatus: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      DisplayWidth = 20
      FieldName = 'status'
      Origin = 'status'
      ReadOnly = True
      Size = 100
    end
  end
  object qry_bebida: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select m.mat_001, '
      '        m.mat_003, '
      '        m.mat_004, '
      '        m.mat_008,'
      '        '#39'Bebidas'#39' as categoria,'
      
        '        cast(concat(u.uni_003, '#39' - '#39', u.uni_002) as varchar(100)' +
        ') as unidade,'
      '        m.sit_001 as id_situacao,'
      '        cast(fn_situacoes(m.sit_001) as varchar(100)) as status'
      'from materiais m'
      'left join categoria_whatsapp c on c.id = m.id_menu '
      
        'left join unidades u on u.uni_001 = m.uni_001 and u.emp_001=m.em' +
        'p_001'
      'where whatsapp = '#39'S'#39' and m.id_catWhatsapp = 3'
      'order by id_menu'
      ''
      ''
      '/*select '
      '      m.mat_001, '
      '      m.mat_003, '
      '      m.mat_004, '
      '      m.mat_008,'
      '      c.cat_002 as categoria,'
      
        '      cast(concat(u.uni_003, '#39' - '#39', u.uni_002) as varchar(100)) ' +
        'as unidade,'
      '      m.sit_001 as id_situacao,'
      '      cast(fn_situacoes(m.sit_001) as varchar(100)) as status'
      'from materiais m'
      
        'left join categoria c on c.cat_001=m.cat_001 and c.emp_001=m.emp' +
        '_001'
      
        'left join unidades u on u.uni_001=m.uni_001 and u.emp_001=m.emp_' +
        '001'
      'where c.cat_002 in('#39'REFRIGERANTES'#39', '#39'CERVEJAS'#39', '#39'SUCOS'#39')'
      'order by mat_001 */')
    Left = 399
    Top = 160
    object qry_bebidamat_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mat_001'
      Origin = 'mat_001'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_bebidamat_003: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'mat_003'
      Origin = 'mat_003'
      Size = 100
    end
    object qry_bebidamat_004: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'mat_004'
      Origin = 'mat_004'
      Size = 50
    end
    object qry_bebidamat_008: TBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'mat_008'
      Origin = 'mat_008'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object qry_bebidacategoria: TWideMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'categoria'
      Origin = 'categoria'
      ReadOnly = True
      BlobType = ftWideMemo
      Size = 30
    end
    object qry_bebidaunidade: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Origin = 'unidade'
      ReadOnly = True
      Size = 100
    end
    object qry_bebidaid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Origin = 'id_situacao'
    end
    object qry_bebidastatus: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'status'
      Origin = 'status'
      ReadOnly = True
      Size = 100
    end
  end
  object ds_bebida: TDataSource
    DataSet = qry_bebida
    Left = 400
    Top = 216
  end
  object ds_pizza: TDataSource
    DataSet = qry_pizza
    Left = 322
    Top = 216
  end
  object qry_listaMenuPizza: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 55
    Top = 304
  end
  object qry_listaOpcoesPizza: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 191
    Top = 304
  end
  object qry_insereItemPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 319
    Top = 304
  end
  object qry_consultaPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 55
    Top = 384
  end
  object qry_novoPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 191
    Top = 384
  end
  object qry_removerItemPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 319
    Top = 384
  end
  object qry_atualizaPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 744
    Top = 384
  end
  object qry_somatorioPizzaGrande: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 451
    Top = 384
  end
  object qry_somatorioPizzaMedia: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 596
    Top = 384
  end
  object qry_retornaValor: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 591
    Top = 304
  end
  object qry_retornaCamposItemPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'SELECT * FROM tbl_bebida')
    Left = 447
    Top = 304
  end
  object qry_atualizaCamposItemPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 590
    Top = 224
  end
  object qry_listaOpcoesBebidas: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_agenda as a join tbl_cliente as b'
      'on a.id_cliente = b.id')
    Left = 591
    Top = 160
  end
  object qry_listaMenuBebida: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_listaNegra')
    Left = 743
    Top = 160
  end
  object qry_blackList: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_listaNegra')
    Left = 743
    Top = 224
    object qry_blackListlistanegra_id: TIntegerField
      FieldName = 'listanegra_id'
    end
    object qry_blackListlistanegra_fone: TWideStringField
      FieldName = 'listanegra_fone'
    end
  end
  object ds_blackList: TDataSource
    DataSet = qry_blackList
    Left = 744
    Top = 304
  end
  object qry_pedidos: TFDQuery
    Connection = CN
    SQL.Strings = (
      'SELECT * FROM tbl_pedido ORDER BY pedido_id DESC')
    Left = 847
    Top = 160
    object qry_pedidospedido_id: TIntegerField
      FieldName = 'pedido_id'
    end
    object qry_pedidospedido_data: TSQLTimeStampField
      FieldName = 'pedido_data'
    end
    object qry_pedidospedido_cliente: TWideStringField
      FieldName = 'pedido_cliente'
      Size = 255
    end
    object qry_pedidospedido_cliente_fone: TWideStringField
      FieldName = 'pedido_cliente_fone'
    end
    object qry_pedidospedido_valor_total: TBCDField
      FieldName = 'pedido_valor_total'
      Precision = 10
      Size = 2
    end
    object qry_pedidospedido_forma_pgt: TWideStringField
      FieldName = 'pedido_forma_pgt'
    end
    object qry_pedidospedido_status: TWideStringField
      FieldName = 'pedido_status'
    end
    object qry_pedidospedido_obs: TWideStringField
      FieldName = 'pedido_obs'
      Size = 250
    end
    object qry_pedidospedido_localentrega: TWideStringField
      FieldName = 'pedido_localentrega'
      Size = 250
    end
  end
  object ds_pedidos: TDataSource
    DataSet = qry_pedidos
    Left = 848
    Top = 224
  end
  object qry_itemPedido: TFDQuery
    Connection = CN
    SQL.Strings = (
      'SELECT * FROM tbl_pedido ORDER BY pedido_id DESC')
    Left = 847
    Top = 304
  end
  object ds_itemPedido: TDataSource
    DataSet = qry_itemPedido
    Left = 848
    Top = 384
  end
  object taxas: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_taxas order by bairro asc')
    Left = 544
    Top = 464
    object taxasid_taxa: TIntegerField
      FieldName = 'id_taxa'
    end
    object taxasbairro: TWideStringField
      FieldName = 'bairro'
      Size = 180
    end
    object taxasvalor: TBCDField
      FieldName = 'valor'
      Precision = 10
      Size = 2
    end
  end
  object ds_taxas: TDataSource
    DataSet = taxas
    Left = 640
    Top = 464
  end
  object uLogo: TFDQuery
    Connection = CN
    SQL.Strings = (
      'select * from tbl_logo where id_logo='#39'1'#39)
    Left = 752
    Top = 464
    object uLogoid_logo: TIntegerField
      FieldName = 'id_logo'
    end
    object uLogoimagem: TWideStringField
      FieldName = 'imagem'
      Size = 255
    end
  end
  object dsLogo: TDataSource
    DataSet = uLogo
    Left = 824
    Top = 464
  end
  object bdHost: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = bdHostAfterConnect
    Left = 464
    Top = 24
  end
  object config: TFDQuery
    Connection = bdHost
    SQL.Strings = (
      'select * from config where id='#39'1'#39)
    Left = 560
    Top = 32
    object configid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object configIP: TStringField
      FieldName = 'IP'
      Origin = 'IP'
      Required = True
      Size = 120
    end
    object configBanco: TStringField
      FieldName = 'Banco'
      Origin = 'Banco'
      Required = True
      Size = 120
    end
    object configLogin: TStringField
      FieldName = 'Login'
      Origin = 'Login'
      Required = True
      Size = 80
    end
    object configSenha: TStringField
      FieldName = 'Senha'
      Origin = 'Senha'
      Size = 80
    end
    object configPorta: TIntegerField
      FieldName = 'Porta'
      Origin = 'Porta'
      Required = True
    end
    object configtaxa: TFloatField
      FieldName = 'taxa'
      Origin = 'taxa'
    end
    object configimpressao: TStringField
      DisplayLabel = 'Permitir Impress'#227'o'
      FieldName = 'impressao'
      Origin = 'impressao'
      FixedChar = True
      Size = 3
    end
    object configImpressora: TStringField
      DisplayWidth = 20
      FieldName = 'Impressora'
      Origin = 'Impressora'
      Size = 255
    end
    object configMostrar: TIntegerField
      FieldName = 'Mostrar'
      Origin = 'Mostrar'
    end
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 464
    Top = 88
  end
  object dsConfig: TDataSource
    DataSet = config
    Left = 552
    Top = 88
  end
  object qry_adicionais: TFDQuery
    Connection = CN
    SQL.Strings = (
      'SELECT * FROM opcional '
      'where whatsapp = '#39'S'#39' order by id_opcional asc')
    Left = 479
    Top = 160
    object qry_adicionaisid_opcional: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_opcional'
      Origin = 'id_opcional'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_adicionaisid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_adicionaisdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object qry_adicionaisvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object qry_adicionaisid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Origin = 'id_situacao'
    end
  end
  object ds_adicionais: TDataSource
    DataSet = qry_adicionais
    Left = 480
    Top = 216
  end
  object ds_cardapio: TDataSource
    DataSet = qry_mostrarCardapio
    Left = 56
    Top = 264
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 200
    Top = 80
  end
end
