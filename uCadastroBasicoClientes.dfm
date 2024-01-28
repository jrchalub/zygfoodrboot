object frmCadastroBasicoClientes: TfrmCadastroBasicoClientes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = ':: Cadastro B'#225'sico de Clientes ::'
  ClientHeight = 286
  ClientWidth = 866
  Color = 12047095
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 8
    Top = 52
    Width = 849
    Height = 225
    Brush.Color = 10537523
    Pen.Color = 7817758
    Pen.Width = 2
  end
  object Label1: TLabel
    Left = 32
    Top = 74
    Width = 124
    Height = 19
    Caption = 'Nome do Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 407
    Top = 74
    Width = 76
    Height = 19
    Caption = 'Endere'#231'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 176
    Width = 53
    Height = 19
    Caption = 'Bairro :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 407
    Top = 169
    Width = 198
    Height = 19
    Caption = 'Complemento/Observa'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 260
    Top = 176
    Width = 60
    Height = 19
    Caption = 'Celular :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbedtNome: TDBEdit
    Left = 32
    Top = 97
    Width = 369
    Height = 27
    CharCase = ecUpperCase
    DataField = 'cli_002'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnEnter = dbedtNomeEnter
    OnExit = dbedtNomeExit
  end
  object dbedtLogradouro: TDBEdit
    Left = 407
    Top = 97
    Width = 426
    Height = 27
    CharCase = ecUpperCase
    DataField = 'cep_004'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnEnter = dbedtLogradouroEnter
    OnExit = dbedtLogradouroExit
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 200
    Width = 219
    Height = 27
    CharCase = ecUpperCase
    DataField = 'cep_003'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
  end
  object dbedtCelular: TDBEdit
    Left = 260
    Top = 200
    Width = 141
    Height = 27
    DataField = 'celular1'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnEnter = dbedtCelularEnter
    OnExit = dbedtCelularExit
  end
  object DBMemo1: TDBMemo
    Left = 407
    Top = 200
    Width = 426
    Height = 68
    DataField = 'cli_007'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnEnter = DBMemo1Enter
    OnExit = DBMemo1Exit
    OnKeyPress = DBMemo1KeyPress
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = 7817758
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    UseDockManager = True
    OnMouseMove = AdvPanel2MouseMove
    Version = '2.5.8.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object Image1: TImage
      Left = 0
      Top = 9
      Width = 30
      Height = 37
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000001E
        0000001E08060000003B30AEA200000006624B474400FF00FF00FFA0BDA79300
        00039549444154480DE5555B48146114FEFE995D77B552BB20596857BA6D6461
        B78D6E1AAD4992D2157A28ABA71EA38728A2ECA11B113DF5D24314111416DD88
        B212254B8210BA831B686549058566BAB6B33B7FE7FF576D76767666BBBC359C
        73E6FCDFF9CEF96667FED901FEB783FDEE0FF6FBFDE95EAF37A028CA04CE790E
        F56BBAAE1FA8AFAF8F509EB2FD96707171F1169A7C9C7C28B9D1767476769E6C
        6A6AD28CA05DCEEC8AC61A895601D84F9ECCBE30C676D6D6D69E4D4630E2CCB8
        48961715152DA1A1755477E2D3DDE715757575D7896B6B8A6DB5AF48A2BB284D
        101D3E986175A11B3B021EA4B98801308F4BD92D33879030CCCC0F040283A2D1
        4807E790A3870E62583CC985259355CCC853D13FE0716B14FBAEF6221CE1DCED
        4E1B515353F3D53CCBB896C38C8039D7346D22FD625759810B4BA7B85040624A
        BF9A813C679C8AAA722FF65CEE65D168743495FE4E98066493CBDB29CE763E6F
        BC2ACBF47A9977BDC48DC1F11917E669C38C0DA9E4337343994E3C47E163A59F
        776E5BA0CB399108C7C5DB2D1067095010B911DBBE58C7F1B22F62335235B939
        0A536BEBC6D931619576C4C4BC2C8833E1D2446EC4D6CE242E478B2CDA0467E1
        E6E06678328F89198CF670A16F38C55FBB2B01F3641E4130B845F0EDDC519855
        4107E337EC86C4D514F586EC890313178EC2A285ADB8D940E73BE4F6C6708B95
        5C6BB427C5AA29094BAA9B6D02D75FCBDC2AE87A10CC5589140F96224FD2F899
        913E78B35F60703EA07A2486E80FE0FB3BA0E7B38F6DFDFA2A063A47DAA7CEA4
        0146E863377A3F021DCD80D2D7AA8BCF3007387A067829244A0A1C492938F5A4
        64EAFBEAF31A57694D42BA0608274581F93E549F9B73E6E5322AA6648EC2AB1E
        74CF2EBF1F6A1C999F7FFB756BD782A3EF5786CD938FB49585832D5D0B87E5E6
        DE2B6F083DAC68E82E3473CC6BD50C18D715F74395F4A5BB422FEE58579A1B4C
        5570E9D91035144D438EA70B9FB44C9C685B8E436F4BD529FE59C8C91F053AF2
        A8A772F2B6BD6DCDA70F3EA5B5A525DD5C150F7AD673CE2E50571CA7FDF933B4
        3F7E84F69E0C2A01A333BA316AAE1FB9D367C8B521700EBEE1FAA28C6A033690
        C60DED47D7DDE559616FE80D5D7936AC0E7AC4E8ED8C55BC59448BA589917784
        DDE9636ECD67DFCC35CB671CF684B6D2346B5131415C6E3A090A17B9C02C9D65
        7B2262566251498408616C0DC57F62F4B8565B0DB216069B6645FE43CC67D5D7
        F72F105FE25C3FCC18925C543CD769453B4C77E2FC1FF59F36C60502100D7975
        0000000049454E44AE426082}
      OnMouseMove = AdvPanel2MouseMove
      ExplicitHeight = 30
    end
    object Label31: TLabel
      Left = 40
      Top = 17
      Width = 190
      Height = 19
      Caption = 'Cadastro b'#225'sico de clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnMouseMove = AdvPanel2MouseMove
    end
    object AdvPanel3: TAdvPanel
      Left = 0
      Top = 0
      Width = 866
      Height = 9
      Align = alTop
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      OnMouseMove = AdvPanel2MouseMove
      Version = '2.5.8.0'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 0
      ColorTo = 7817758
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
    end
    object AdvMetroButton1: TAdvMetroButton
      AlignWithMargins = True
      Left = 830
      Top = 12
      Width = 33
      Height = 31
      Align = alRight
      Appearance.PictureColor = 13675815
      Appearance.PictureColorHover = 11242762
      Caption = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000332494441545809C557CB
        6B1361109F59774D415B34BB690F8AE2A107054B4541AF4569C5E2A587D0524F
        56F0051E15EC650FFA0FF464C116AD162588088A78919E051FB5582F3D4885D8
        D7265256A169D21D67927C357D6C76034B13BED9C9F79BDF3CBED96F5F0850FA
        0DBD9D89B9B8EF1621F423E02146F7B344397E03E02CA1375E58B686EC24AE4A
        7094C3BDD7CE0134F00D00B5CB7C07E4B3AED1C53B9D895F684FFC6830727B3F
        70756D3B90B822054E367AD9339ABED27463E7934B1DD4EE6AF16B1A02F5C9B4
        3E427D1A201CAD4FF262D6631AAB3D2CF51A8D5240BD9217F3862E80AFD74502
        F852F4AA72287396AA503698C216F08DF4B5B6C12EF324200E6F885039619B70
        8C35AF8D0B9EAE34F9FD0F2C8057344F79383F78AE650111A975397E13089F6F
        09C898D88473BBBB79DECB4317731658AA8EC0027825E9C227734E45492671AD
        D58D5FAA2C826FDDCF04139BE2957DD26AEEA7F1FE3B8717E9675638A5F231AB
        DFEEC082426C9B34FD746614355CB9DB19BF2E2B5FB74D906EE49C71BEC12515
        E6A7033B5072C4A4BEEA3C90A4A539806DA3576830AFA8B6FFC749337219DE27
        18985C7C427640A8225B3B21A812BB86952B9F901D50744C4A6B25914294164C
        6C61DAAE7C44D75800BB10FAFB54B3B1EB76C33FD8766C80B156D7ECADDC8C8A
        2698D878473F5158181DBE008217F998395079A949DB5329DAA512892D619903
        C05C8505E9B0056C59B9BCC219B9ECAB99A64C6AF823192AD1D55398AFA51381
        0510D0D7CD2B9755BB187FC4AF70DD00D09371B28F05E3FFC5B1DE09A0A92250
        E5105800EFEA16FD4FA645C59044338DD9A780D4AB302EB24F30B1296C692ED3
        2CBE6AEEA7C3DE077E6AE09D8D5B8959C7C9C873A0C727E04BCB327BB3CED261
        0FB4F7CC91B76B56FE236C01FCE2048B1E409A9F0D27FCC3F149E14736730E32
        27C11238F4404699C097573307E6B696011FC59CAA056E760BB10736BB443B97
        02FE461BB2A668AE14F0BD269728C908D31A9FDBB12863D6128BF7CB985688B9
        0F79EF4ED5E2180D17275797CD11CDEE38B24279BCC0378DC96802878AC21FA7
        5EB77C2173174A0E768A76EB4DCE65241CE08BFE38A3319628478E834D21D188
        99B046E599C173F8076C4C2096EB2BEC810000000049454E44AE426082}
      ParentFont = False
      TabOrder = 1
      Version = '1.2.0.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 46
    Width = 5
    Height = 240
    Align = alLeft
    BevelOuter = bvNone
    Color = 7817758
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    UseDockManager = True
    Version = '2.5.8.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12047095
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
  end
  object AdvPanel4: TAdvPanel
    Left = 861
    Top = 46
    Width = 5
    Height = 240
    Align = alRight
    BevelOuter = bvNone
    Color = 7817758
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UseDockManager = True
    Version = '2.5.8.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12047095
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
  end
  object fdqryClientes: TFDQuery
    Connection = BotDAO.CN
    SQL.Strings = (
      
        'select sit_001,emp_001, cli_001, cli_002,  cep_004, cep_003, cli' +
        '_007, celular1'
      '  from clientes cli '
      '')
    Left = 704
    Top = 144
    object fdqryClientessit_001: TIntegerField
      FieldName = 'sit_001'
      Origin = 'sit_001'
    end
    object fdqryClientesemp_001: TIntegerField
      FieldName = 'emp_001'
      Origin = 'emp_001'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqryClientescli_001: TIntegerField
      FieldName = 'cli_001'
      Origin = 'cli_001'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqryClientescli_002: TWideStringField
      FieldName = 'cli_002'
      Origin = 'cli_002'
      Size = 90
    end
    object fdqryClientescep_004: TWideStringField
      FieldName = 'cep_004'
      Origin = 'cep_004'
      Size = 125
    end
    object fdqryClientescep_003: TWideStringField
      FieldName = 'cep_003'
      Origin = 'cep_003'
      Size = 50
    end
    object fdqryClientescelular1: TWideStringField
      FieldName = 'celular1'
      Origin = 'celular1'
      EditMask = '(99)99999-9999;0;_'
    end
    object fdqryClientescli_007: TWideStringField
      FieldName = 'cli_007'
      Origin = 'cli_007'
      Size = 80
    end
  end
  object dsClientes: TDataSource
    DataSet = fdqryClientes
    Left = 779
    Top = 148
  end
end
