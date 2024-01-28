object fconfig: Tfconfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'CONFIGURA'#199#213'ES'
  ClientHeight = 410
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 604
    Height = 364
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 777
      Top = 372
      Width = 677
      Height = 55
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Color = 12047095
      Ctl3D = False
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
      StyleElements = []
    end
    object tab: TPageControl
      Left = 5
      Top = 0
      Width = 594
      Height = 299
      ActivePage = Conexão
      Align = alClient
      TabOrder = 1
      object Conexão: TTabSheet
        Caption = 'Conex'#227'o'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 586
          Height = 268
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Configura'#231#245'es de Conex'#227'o:'
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TabStop = True
          StyleElements = []
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 13
            Height = 16
            Caption = 'IP'
            FocusControl = edtIp
          end
          object Label2: TLabel
            Left = 16
            Top = 72
            Width = 103
            Height = 16
            Caption = 'Banco de Dados'
            FocusControl = edtBanco
          end
          object Label3: TLabel
            Left = 16
            Top = 120
            Width = 34
            Height = 16
            Caption = 'Login'
            FocusControl = edtLogin
          end
          object Label4: TLabel
            Left = 16
            Top = 168
            Width = 40
            Height = 16
            Caption = 'Senha'
            FocusControl = edtSenha
          end
          object Label5: TLabel
            Left = 223
            Top = 168
            Width = 36
            Height = 16
            Caption = 'Porta'
            FocusControl = DBEdit5
            Visible = False
          end
          object edtIp: TDBEdit
            Left = 16
            Top = 40
            Width = 324
            Height = 22
            Color = clWhite
            DataField = 'IP'
            DataSource = BotDAO.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6316128
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            StyleElements = []
          end
          object edtBanco: TDBEdit
            Left = 16
            Top = 90
            Width = 324
            Height = 22
            Color = clWhite
            DataField = 'Banco'
            DataSource = BotDAO.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6316128
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            StyleElements = []
          end
          object edtLogin: TDBEdit
            Left = 16
            Top = 136
            Width = 201
            Height = 22
            Color = clWhite
            DataField = 'Login'
            DataSource = BotDAO.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6316128
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 2
            StyleElements = []
          end
          object edtSenha: TDBEdit
            Left = 16
            Top = 184
            Width = 201
            Height = 22
            Color = clWhite
            DataField = 'Senha'
            DataSource = BotDAO.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6316128
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 3
            StyleElements = []
          end
          object DBEdit5: TDBEdit
            Left = 223
            Top = 184
            Width = 164
            Height = 22
            DataField = 'Porta'
            DataSource = BotDAO.dsConfig
            PasswordChar = '*'
            TabOrder = 4
            Visible = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Geral'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 580
          Height = 262
          Align = alClient
          Caption = 'Selecione a Impressora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label6: TLabel
            Left = 8
            Top = 97
            Width = 113
            Height = 16
            Caption = 'Taxa Fixa Entrega'
            FocusControl = DBEdit1
          end
          object cbImpressora: TComboBox
            Left = 9
            Top = 32
            Width = 336
            Height = 24
            Style = csDropDownList
            TabOrder = 0
            OnChange = cbImpressoraChange
          end
          object edtImpressora: TDBEdit
            Left = 9
            Top = 66
            Width = 336
            Height = 24
            DataField = 'Impressora'
            DataSource = BotDAO.dsConfig
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 113
            Width = 164
            Height = 24
            DataField = 'taxa'
            DataSource = BotDAO.dsConfig
            TabOrder = 2
          end
          object edtImp: TDBRadioGroup
            Left = 9
            Top = 143
            Width = 163
            Height = 67
            Caption = 'Permitir Imprimir?'
            Columns = 2
            DataField = 'impressao'
            DataSource = BotDAO.dsConfig
            Items.Strings = (
              'SIM'
              'NAO')
            TabOrder = 3
            Values.Strings = (
              'SIM'
              'NAO')
          end
        end
      end
    end
    object AdvPanel5: TAdvPanel
      Left = 0
      Top = 299
      Width = 604
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      Color = 12047095
      TabOrder = 2
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
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object SpeedButton1: TSpeedButton
        Left = 728
        Top = 2
        Width = 129
        Height = 40
        Action = DatasetCancel1
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        StyleElements = []
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 626
        Top = 6
        Width = 129
        Height = 40
        Action = DatasetPost1
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        StyleElements = []
        OnClick = SpeedButton2Click
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 5
        Top = 3
        Width = 100
        Height = 59
        Align = alLeft
        Action = DatasetPost1
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A200000006624B474400FF00FF00FFA0BDA7930000036D49444154480DE5566D
          4B5441147E66EE2E6985D8BBEE566614157D295CD2350CAA1F9048217D0822E8
          5B8144BFA12282FE409164696A05F682DF12824CB71708CBB7302D36574B322D
          A9F6BE4C67EEBAE3DDBB7773D528A8CB3933739E39E73C77CE7D9901FEB78BCD
          65C14DA2495B3B525CC22C51CC9908C8584BB061C1D960B820F4943166492C1B
          CD8A38128B6C1742D450C203025845BD977CA06477041317CB0ACBBABD1C9C18
          F93ACDD47167B4730525BA00C68ED08C469A8D98E47FD5328CD3E5EBCA3F650A
          C848DC31DC5102B0160A0C92CE47A280A82C0B943DF30AF6247E3CFC781B036F
          A7807CD285C8670B5AB83C10EA7527E16EE0D1C8A3D544DA4AF842492905F239
          CCD687B1E769EF451AB1267C6729A288F477C98645423FE34E9642DCFEFEC94E
          081CC5022EDDD2D1327017133F265416011C8B44233B1440831462CEC5493746
          76D622491BFB9BD135F612753DF5988C7F49C672938B134943F68AB84DB4F920
          C40109CE47E3661CD77B6E6068E2AD1DBE6AF14A2CF12FB6C7B26140A5CD210D
          52459C3B9A1B227B39E99C4592D6F73522FA95BE208ADEBC6C130E6EAE82C634
          B294ACC819CD29495A8A98596C63129C4BAF48BFFC92D44EC94C566C0FA8E1A4
          B608C60AED81AB312C1377DFDCC3F8F771D70C6058069AFB6F233A4DBA21AF08
          559B2ADD2B5571C461FFDF25A088018B49C0A9A665A1F9F52DBCF8D865BF2C4E
          7249DAD87713839383768824ADDE72087EEEB76DAF863611C5A188A9D4EFDDCE
          1AE7082E4D1462323E89DAEE3A8C7D1B832CEFB5DE06452A9FE9E1ADD5BF2495
          B98585C4F320C3479A108121A8FB4940B2DD13AC80611A688F75604A9F42436F
          1396E5E4675D5E9943A9660E61FA5254B4EDF1CE5844AEBA607A2EA57BF0AECD
          267782D994D7E13F525AB82B48E5B6F7EC9952CB4D9C31F98F76F8CE0CF7ADDF
          8B70A054014579EB31DB3355CE3410C0FD24299998293559CC14E70487DC7B53
          709AB265FFBA7DF0711F46A646BDBE53DB2743A3730BE79D73AAD449B023D679
          1902C792B6576F0A833E19CF7BF37297AFCEA5D240E971E724771A726CF8F41A
          EA5F9166148D654F4A257EA9FBF553EE64692B960E7FE5202089C381708FA969
          F2DF3DEBA14DFA67D06E99C3EBF421FDD34A2D41A9BBD78406E8B0BA8776AC5A
          002669B662D261EF8A659A153247A620CF52BB9DFFF8F1D67D03BFF340EFCEFD
          EFDB3F01B7BB4141CA1FC8400000000049454E44AE426082}
        Rounded = False
        TabOrder = 0
        OnClick = SpeedButton2Click
        Appearance.BorderColor = 7034130
        Appearance.BorderColorHot = 7034130
        Appearance.BorderColorCheckedHot = 7034130
        Appearance.BorderColorDown = 7034130
        Appearance.BorderColorChecked = 7034130
        Appearance.BorderColorDisabled = 7034130
        Appearance.BorderColorFocused = 7034130
        Appearance.Color = 7034130
        Appearance.ColorTo = 7034130
        Appearance.ColorChecked = 7034130
        Appearance.ColorCheckedTo = 7034130
        Appearance.ColorDisabled = 7034130
        Appearance.ColorDisabledTo = 7034130
        Appearance.ColorDown = 7034130
        Appearance.ColorDownTo = 7034130
        Appearance.ColorHot = 4404534
        Appearance.ColorHotTo = 4404534
        Appearance.ColorMirror = 7034130
        Appearance.ColorMirrorTo = 7034130
        Appearance.ColorMirrorHot = 4404534
        Appearance.ColorMirrorHotTo = 4404534
        Appearance.ColorMirrorDown = 7034130
        Appearance.ColorMirrorDownTo = 7034130
        Appearance.ColorMirrorChecked = 7034130
        Appearance.ColorMirrorCheckedTo = 7034130
        Appearance.ColorMirrorDisabled = 7034130
        Appearance.ColorMirrorDisabledTo = 7034130
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Appearance.TextColorChecked = clWhite
        Appearance.TextColorDown = clWhite
        Appearance.TextColorHot = clWhite
        Appearance.TextColorDisabled = clWhite
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 499
        Top = 3
        Width = 100
        Height = 59
        Align = alRight
        Action = DatasetCancel1
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 8
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A200000006624B474400FF00FF00FFA0BDA7930000037149444154480DE5565B
          4B155114FEF6CC9C3C5AA9654597872E0F41D48B68178DAC28829E12C2DEEA17
          644974314129ED0216F4132A1F7A0C0A42BAF7947708BA12443D58586445073D
          33E6CC6AADAD339CCBCC64250535ACB5F7DADFBA7CB367CF9ED9C0FF76A99F99
          30D5D599E9E1D715AE52CB95528B259788DE9944AF0B6BFAFBD50978824D45A7
          449CDABA76350CD5A008BBA0303FA2F00702AE03EAC2ECBB3DCF2262023896F8
          EBB6756506D47980F67286C93A1571A1A8C335ADC32537BB3E452544128F6C5D
          5F41065DE3C425ACBF2283CA53B533EFF70C84258712A7B66F58A5C87BC809A5
          ACBF235F3CD3AD2ABE35F022B788910BA476542F60D24EC67F97944BA0D470CD
          CED4CEF2BCF7228F58B9E367396329EB74C9328C25CEE416CB7AD423DB2BCB89
          8C7E0ECABB21C6A0E6CC057D0E7F5FE27C9CEBC1A08A59B7FB1EB1AD258B80A0
          EA19CDC278AC2551BB074557AEC1ACAED1E3CCC6DCB859FB12B5759970A66DC0
          53FB338160C6B4658B35628EBE67E75CD62C5165F350D47115282800C6C660B7
          1C81DBDFAD63CCB555489E6C0766CC001C1BA3FB7683863F6A5F4E333CD32D5A
          A81E3C18173C985DDA4A57329047CA982E64371E00A5D39A2079EA3C6496A2C9
          B6731A139FDD7850C74A4E8896A5955DE1E301B1075AE18361BDFBF8119CA686
          09722B8164CB59AD605B48C5273161B93EE61AB4DCB70DDF00D1A2C08E30A4B0
          10103F6E98FC2113655B30F145A405B002E9EFBB0019C48612E0875A5C022584
          7EA0C92518F387F13D051C9CE587D25BDF8AEAF59A369F819EADE38058615A48
          369FD66B1E95E7E3040CFA7640CCF37D83982B20B52CBDCEF2B239FE0BC7EB9C
          E41B92989812303DF30D26AF80B870536F0F6343AC7922DB29D9D40630A96C27
          E76423644D459DD6E37A8B892FD9D40A89CD2B30010C156EEEEE9B30818058C9
          4F5C51A7EFC8EC655F3AEDADA0540AF6D1FDC11E9618B7AF0BF6B17AED73DADB
          E2B6D30DCD2149ACC162B30DFEFFAEE43B79CAB6C59A27719FC5381F17FAE601
          6B8AEFF6BE645B0BF3E85E37938E0E3D0869A2BED3121AEB032E4FD69650AD86
          6E339AB49D68E0A1CC9ABB6910C213DB4E1CCAAD94F5A87DE75F390808F9EC3B
          DDCFC7C9956FF70F0F6D121FA1CFA446D8E943E2F31EB580A2A5F7065EF10B51
          C3A7C64B005CD6A98A1CF62EBA96B9496A4425853EEADCE03F7EBCCDBD81E93C
          D0E7D6FEF7C7DF01787D5C83C34E5FC30000000049454E44AE426082}
        Rounded = False
        TabOrder = 1
        OnClick = SpeedButton1Click
        Appearance.BorderColor = 7034130
        Appearance.BorderColorHot = 7034130
        Appearance.BorderColorCheckedHot = 7034130
        Appearance.BorderColorDown = 7034130
        Appearance.BorderColorChecked = 7034130
        Appearance.BorderColorDisabled = 7034130
        Appearance.BorderColorFocused = 7034130
        Appearance.Color = 7034130
        Appearance.ColorTo = 7034130
        Appearance.ColorChecked = 7034130
        Appearance.ColorCheckedTo = 7034130
        Appearance.ColorDisabled = 7034130
        Appearance.ColorDisabledTo = 7034130
        Appearance.ColorDown = 7034130
        Appearance.ColorDownTo = 7034130
        Appearance.ColorHot = 4404534
        Appearance.ColorHotTo = 4404534
        Appearance.ColorMirror = 7034130
        Appearance.ColorMirrorTo = 7034130
        Appearance.ColorMirrorHot = 4404534
        Appearance.ColorMirrorHotTo = 4404534
        Appearance.ColorMirrorDown = 7034130
        Appearance.ColorMirrorDownTo = 7034130
        Appearance.ColorMirrorChecked = 7034130
        Appearance.ColorMirrorCheckedTo = 7034130
        Appearance.ColorMirrorDisabled = 7034130
        Appearance.ColorMirrorDisabledTo = 7034130
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Appearance.TextColorChecked = clWhite
        Appearance.TextColorDown = clWhite
        Appearance.TextColorHot = clWhite
        Appearance.TextColorDisabled = clWhite
      end
      object AdvPanel6: TAdvPanel
        Left = 599
        Top = 3
        Width = 5
        Height = 59
        Align = alRight
        BevelOuter = bvNone
        Color = 12047095
        TabOrder = 2
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
      object AdvPanel7: TAdvPanel
        Left = 0
        Top = 3
        Width = 5
        Height = 59
        Align = alLeft
        BevelOuter = bvNone
        Color = 12047095
        TabOrder = 3
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
      object AdvPanel8: TAdvPanel
        Left = 0
        Top = 0
        Width = 604
        Height = 3
        Align = alTop
        BevelOuter = bvNone
        Color = 12047095
        TabOrder = 4
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
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
      end
      object AdvPanel9: TAdvPanel
        Left = 0
        Top = 62
        Width = 604
        Height = 3
        Align = alBottom
        BevelOuter = bvNone
        Color = 12047095
        TabOrder = 5
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
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
      end
    end
    object AdvPanel1: TAdvPanel
      Left = 0
      Top = 0
      Width = 5
      Height = 299
      Align = alLeft
      BevelOuter = bvNone
      Color = 7817758
      TabOrder = 3
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
      Left = 599
      Top = 0
      Width = 5
      Height = 299
      Align = alRight
      BevelOuter = bvNone
      Color = 7817758
      TabOrder = 4
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
  end
  object status: TAdvOfficeStatusBar
    Left = 789
    Top = 146
    Width = 488
    Height = 31
    AnchorHint = False
    Align = alNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'dd/MM/yyyy'
        HTMLOffsetX = 10
        MinWidth = 30
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Text = 'Editando Configura'#231#245'es...'
        TimeFormat = 'hh:mm:ss'
        Width = 350
      end>
    ParentShowHint = False
    ShowHint = False
    ShowSplitter = True
    SimplePanel = False
    Styler = frmPrincipal.AdvOfficeStatusBarOfficeStyler1
    UseSystemFont = False
    Version = '1.7.0.0'
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 604
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
    TabOrder = 2
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
        00051149444154480DE5567F6C1455109E79BB6DAFED55A0556240849248A228
        21E08F70806D238A3D2C58B4188D60D4588A11A24683C440AA081A404488A585
        0412FCC3D82A25B172E547107AA1955A1262201A458B46AAB409D05E8BB9EBED
        8EDFDBBBBDD4726772E05FDACCF766E69B7733EFBD9D7D5DA2FFDB1F5FCF8667
        CD6B1A6566AA952274F1D83EFF867472A974260F9F6B66A8222159492CEFCEA8
        68CE1F1EFF273FAD1D17177F6586F2FA33CDA8617AB26923892C41720FA0A55B
        9837B4EC2DDD3CA7E2F00D871B1EECD5642AA455B8A8FCCBD791682DA0938E86
        4E26E741DE6C8BED0BEE2B6B879D54D23DEA85C89205B8459B88ED8542FC0CB8
        EF002D6331184AA947A1538A993292246052F8912865FD81902944C75A1AFDF3
        090F183EF9CA0F3467505417CF27A18ED1E6C06ACDA7425A3B8E981E3D3FB658
        A146B7A84EDEDA38B71B8B096A9B983C0D0D8B2CC74E31E844294257D3466E76
        08AC0DA026DFE2E82103138FD32E16A07B409B29915661EA1BA8723331C98B25
        E5FB8B62BE70ACF1649AF6D1B1938B1634CDD6762AC48E2D45B4B0267400A102
        B2CDC73A5FCAFE4584CBE0BB8BCDB1498EA0E059A28017FC18C0959164A86222
        0A0249C54D725570C2F65031113D044C2723BA84EAC55064BF8AE35C27422F83
        BF02E8DF4F2212B7E839DDE122B2A57FD07A1FF194825389C7B01D145B602BFE
        C1B06933D8B9C050F991459EB349794D4B4EDE1A3C9A6945D57B98F03440B83C
        5EF3F41BB51343D6244B548147ECF66D27FC7D3A960C7AC50E3FB136F42C76D3
        88A267400C2F0A8A6E43F220B3042C53361D69283B6F2BB511814BE8E2CE9629
        ED1F1C3C3877C0666E544A0E0D1ABC10B1949278C6B67026B62F98098591E463
        B233560B5B61ACEE4961D90416260E96390336053F2FFD163A1FA0AAAEFD33C5
        1758067B3C4042B47AA92F903FC8919DBB8E2FD06F83A613881789F968A61658
        BA1BCF8EEFF6DE7EB49AA3F01D29ACE9DB837768319C68CE8DDEDC338B385239
        B3B9846D9A823B240FFC5B800286899CC6537C1BA772C798D6136BABA9DA791D
        133B76660BDD8409C84FA786167562C4DF40EBC2E695DE815195D33B2EB2F4D4
        623E9A0B9198FC89AD7E01EE02CEA50489EED460A67A1DFE7DC6BD9DD4467BB4
        ADF49000538F630B4D9D5C2F998EED0E42F7C5CD68CE88DC4B71FB645C6BD52D
        A2A6D5B5953E51D75ABAE2E2D8FEA928FEA10EC4C09759E8A7988DE5B8C6849A
        501513D5C08772C6CFD03C2B3CE695FE48386B39A6BEE3B01884E99373CBF29E
        7AC117B8072B6F07854D4A656DAB7FA7B65DE0543238AB47171B874534D5B5FA
        CBDC187E1737992EC38A158581237B5C59765724ECE943D175A0123125D40B9F
        0CE642AD356C91AFB51E8A1D27EF1E24A68E18C789B9DA4F143E57E5FD145F13
        E596A2C9081C04868B7E8F67A3514A5594D6E8A065DB7896DA225C54EA6F8963
        2C4649144CCC054BAC876418FF51A844311D71624C6B3A0BBCEB69115B8E1F1F
        96FAF62FC7696C8DBB1D992364D6B6803F1CF7A97246A0C26D2C70DF470CB97F
        77D0DF033B75611D2CDC1E6AC0918F64C37CFEE7A5D9BF6ACEC5E229077273BC
        F21B9EDD4897837D1A3BD9CACC176CA139E0970126E0082EA037771C7F78BD76
        304FAB6B43A52FB0029D3A13CB2F40860780AB456800F15DD8C05D832A32DFBD
        4CAEABB05BA51A1F815DE1F02A5C24FACD1813E72D143C846FAF553B5BE79D8A
        7309F5AF1476B35554D41BF9E7F3BAE1E7E33FD42B3BDAFC5B6027159594BD46
        527FEEA0EBD170F20619197BAF31CD7FF4677F01F7EFA9976784BCB900000000
        49454E44AE426082}
      OnMouseMove = AdvPanel2MouseMove
      ExplicitHeight = 30
    end
    object Label31: TLabel
      Left = 40
      Top = 17
      Width = 130
      Height = 19
      Caption = 'CONFIGURA'#199#213'ES'
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
      Width = 604
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
      Left = 568
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
  object ActionList1: TActionList
    Left = 256
    Top = 272
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'SALVAR'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'CANCELAR'
      Hint = 'Cancel'
      ImageIndex = 8
    end
  end
end
