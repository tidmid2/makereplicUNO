object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1072#1089#1090#1077#1088' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1087#1083#1080#1082#1072#1094#1080#1080
  ClientHeight = 233
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 233
    Align = alClient
    ActiveCard = Card1
    Caption = 'CardPanel1'
    TabOrder = 0
    OnCardChange = CardPanel1CardChange
    object Card1: TCard
      Left = 1
      Top = 1
      Width = 398
      Height = 231
      Caption = 'Card1'
      CardIndex = 0
      TabOrder = 0
      object FBName: TLabeledEdit
        Left = 40
        Top = 56
        Width = 305
        Height = 21
        EditLabel.Width = 104
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1077' firebird'
        TabOrder = 0
        Text = 'C:\UNO\Firebird'
        TextHint = #1055#1091#1090#1100' '#1082' '#1080#1089#1093#1086#1076#1085#1086#1081' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 178
        Width = 392
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 1
        object Button2: TButton
          AlignWithMargins = True
          Left = 77
          Top = 3
          Width = 120
          Height = 44
          Margins.Left = 25
          Margins.Right = 25
          Align = alRight
          Caption = #1043#1083#1072#1074#1085#1072#1103' '#1073#1072#1079#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 247
          Top = 3
          Width = 120
          Height = 44
          Margins.Left = 25
          Margins.Right = 25
          Align = alRight
          Caption = #1058#1086#1095#1082#1072' '#1087#1088#1086#1076#1072#1078#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
    object Card2: TCard
      Left = 1
      Top = 1
      Width = 398
      Height = 231
      Caption = 'Card2'
      CardIndex = 1
      TabOrder = 1
      object Label1: TLabel
        Left = 272
        Top = 27
        Width = 88
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1092#1080#1083#1080#1072#1083#1086#1074
      end
      object Label3: TLabel
        Left = 24
        Top = 28
        Width = 190
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1072#1090#1072#1083#1086#1075#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 178
        Width = 392
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 0
        object StartBtn: TImage
          AlignWithMargins = True
          Left = 247
          Top = 3
          Width = 120
          Height = 44
          Margins.Left = 25
          Margins.Right = 25
          Align = alRight
          Center = True
          Enabled = False
          Stretch = True
          OnClick = StartBtnClick
          ExplicitLeft = 284
        end
        object Button5: TButton
          AlignWithMargins = True
          Left = 77
          Top = 3
          Width = 120
          Height = 44
          Margins.Left = 25
          Margins.Right = 25
          Align = alRight
          Caption = #1053#1072#1079#1072#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
      end
      object FolderName: TLabeledEdit
        Left = 24
        Top = 44
        Width = 238
        Height = 27
        EditLabel.Width = 190
        EditLabel.Height = 13
        EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1072#1090#1072#1083#1086#1075#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = #1053#1072#1073#1077#1088#1080#1090#1077' '#1085#1086#1074#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
        Visible = False
        OnChange = FolderNameChange
      end
      object SpinEdit1: TSpinEdit
        Left = 272
        Top = 44
        Width = 89
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        MaxValue = 100
        MinValue = 1
        ParentFont = False
        TabOrder = 2
        Value = 1
        OnChange = SpinEdit1Change
      end
      object ActivityIndicator1: TActivityIndicator
        Left = 168
        Top = 85
        FrameDelay = 40
        IndicatorSize = aisXLarge
      end
      object ComboBox1: TComboBox
        Left = 24
        Top = 44
        Width = 238
        Height = 27
        Style = csSimple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TextHint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1072#1083#1086#1075' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Visible = False
        OnChange = ComboBox1Change
      end
    end
    object Card3: TCard
      Left = 1
      Top = 1
      Width = 398
      Height = 231
      Caption = 'Card3'
      CardIndex = 2
      TabOrder = 2
      object Label2: TLabel
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 358
        Height = 111
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alClient
        Caption = 
          #1054#1087#1077#1088#1072#1094#1080#1103' '#1091#1089#1087#1077#1096#1085#1086' '#1079#1072#1074#1077#1088#1096#1077#1085#1072'!'#13#10#13#10#1058#1077#1087#1077#1088#1100' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1087#1077#1088#1077#1079#1072#1087#1091#1089#1090#1080#1090#1100' F' +
          'irebird '#1089#1077#1088#1074#1077#1088' '#1087#1086#1076' '#1091#1095#1077#1090#1085#1086#1081' '#1079#1072#1087#1080#1089#1100#1102' '#1089' '#1088#1072#1073#1086#1095#1077#1081' '#1075#1088#1091#1087#1087#1086#1081' "WORKGROUP"' +
          '!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 354
        ExplicitHeight = 95
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 20
        Top = 154
        Width = 358
        Height = 67
        Margins.Left = 20
        Margins.Right = 20
        Margins.Bottom = 10
        Align = alBottom
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 352
    Top = 112
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    ScriptOptions.Verify = True
    ScriptOptions.FileEncoding = ecUTF8
    ScriptOptions.DriverID = 'FB'
    ScriptOptions.SQLDialect = 3
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evUnidirectional]
    Left = 352
    Top = 8
  end
  object CreateDB: TFDCommand
    CommandText.Strings = (
      'SET SQL DIALECT 3;'
      'SET NAMES UTF8;'
      '/*SET CLIENTLIB '#39'fbclient.dll'#39';*/'
      'CREATE DATABASE '#39'C:\UNO\Database\main.rep'#39
      'USER '#39'SYSDBA'#39' PASSWORD '#39'sh6asqz9'#39
      'PAGE_SIZE 16384'
      'DEFAULT CHARACTER SET UTF8 COLLATION UTF8;'
      'CREATE TABLE D_LINES ('
      '    UID            CHAR(36) NOT NULL /* CHAR(36) = CHAR(36) */,'
      '    IDDOCUMENT     CHAR(36) /* CHAR(36) = CHAR(36) */,'
      '    PRODUCT        INTEGER NOT NULL /* INTEGER = INTEGER */,'
      
        '    KOLVO          DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    SUM_NAKL       DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    BDEL           SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      
        '    BONUS          SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      '    INO            INTEGER /* INTEGER = INTEGER */,'
      
        '    CENA_ZAKUP     DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    CENA_SALES     DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    PRODUCT_RAS    SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      '    IDLINKS        CHAR(36) /* CHAR(36) = CHAR(36) */,'
      
        '    DISCOUNT       DECIMAL(4,2) DEFAULT 0 /* DECIMAL(4,2) = DECI' +
        'MAL(4,2) DEFAULT 0 CHECK (value <= 200) */,'
      
        '    OSTATOK        DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    MDISCOUNT      DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    MDISCOUNT_SUM  DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      
        '    MARGIN         DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      '    ADDED_PEOPLE   INTEGER /* INTEGER = INTEGER */,'
      '    PRICHINA       INTEGER /* INTEGER = INTEGER */,'
      
        '    COMMENTS       VARCHAR(255) /* VARCHAR(255) = VARCHAR(255) *' +
        '/,'
      
        '    M_BOBSLUZH     SMALLINT /* SMALLINT = SMALLINT DEFAULT 1 NOT' +
        ' NULL CHECK (value in (0, 1)) */,'
      
        '    M_OBSLUZH      DECIMAL(4,2) /* DECIMAL(4,2) = DECIMAL(4,2) D' +
        'EFAULT 0 CHECK (value <= 200) */,'
      
        '    M_BDISCOUNT    SMALLINT /* SMALLINT = SMALLINT DEFAULT 1 NOT' +
        ' NULL CHECK (value in (0, 1)) */,'
      
        '    NAME           VARCHAR(100) /* VARCHAR(100) = VARCHAR(100) *' +
        '/,'
      
        '    GROUP_NAME     VARCHAR(100) /* VARCHAR(100) = VARCHAR(100) *' +
        '/,'
      '    CODE           VARCHAR(13) /* VARCHAR(13) = VARCHAR(13) */,'
      
        '    DT             TIMESTAMP DEFAULT current_timestamp /* TIMEST' +
        'AMP = TIMESTAMP */,'
      '    IDGUEST        SMALLINT'
      ');'
      'CREATE TABLE D_LINES_MODIF ('
      '    UID           CHAR(36) NOT NULL /* CHAR(36) = CHAR(36) */,'
      '    IDLINES       CHAR(36) /* CHAR(36) = CHAR(36) */,'
      '    IDMODIFITEMS  INTEGER /* INTEGER = INTEGER */,'
      '    IDPRODUCT     INTEGER /* INTEGER = INTEGER */,'
      
        '    KOLVO         DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE ' +
        'PRECISION */,'
      '    KLV           INTEGER,'
      
        '    NAME          VARCHAR(100) /* VARCHAR(100) = VARCHAR(100) */' +
        ','
      '    CENA          DOUBLE PRECISION'
      ');'
      ''
      ''
      'CREATE TABLE DOCUMENTS ('
      '    UID            CHAR(36) NOT NULL /* CHAR(36) = CHAR(36) */,'
      
        '    IDSTATION      INTEGER DEFAULT 0 NOT NULL /* INTEGER = INTEG' +
        'ER */,'
      '    IDKOORD        INTEGER /* INTEGER = INTEGER */,'
      '    IDPEOPLES      INTEGER /* INTEGER = INTEGER */,'
      '    SUPPLIER       INTEGER /* INTEGER = INTEGER */,'
      '    OPERACII_TYPE  INTEGER /* INTEGER = INTEGER */,'
      '    KOD            INTEGER NOT NULL /* INTEGER = INTEGER */,'
      '    DT             TIMESTAMP /* TIMESTAMP = TIMESTAMP */,'
      
        '    NUM_NAKL       VARCHAR(255) /* VARCHAR(255) = VARCHAR(255) *' +
        '/,'
      
        '    TOTAL_SUM      DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      '    SUBEKT         INTEGER /* INTEGER = INTEGER */,'
      '    IDDOGOVOR      INTEGER /* INTEGER = INTEGER */,'
      
        '    ISGAME         SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      
        '    PROVOD         SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      
        '    BDEL           SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      
        '    BNAL           SMALLINT /* SMALLINT = SMALLINT DEFAULT 0 NOT' +
        ' NULL CHECK (value in(0,1)) */,'
      '    IDSMENY        INTEGER NOT NULL /* INTEGER = INTEGER */,'
      '    PRICHINA_SPIS  INTEGER /* INTEGER = INTEGER */,'
      '    AUDIT_GROUP    INTEGER /* INTEGER = INTEGER */,'
      
        '    DESCR          VARCHAR(255) /* VARCHAR(255) = VARCHAR(255) *' +
        '/,'
      
        '    DELIVERY       SMALLINT /* SMALLINT = SMALLINT CHECK (value ' +
        'in(0, 1)) */,'
      '    SUBEKT_OUT     INTEGER /* INTEGER = INTEGER */,'
      '    IDFORMAOPLATY  INTEGER /* INTEGER = INTEGER */,'
      '    CLOSED_TIME    TIMESTAMP /* TIMESTAMP = TIMESTAMP */,'
      '    IDOTVER        INTEGER /* INTEGER = INTEGER */,'
      
        '    TO1C           SMALLINT /* SMALLINT = SMALLINT CHECK (value ' +
        'in(0, 1)) */,'
      '    IDLINKS        CHAR(36) /* CHAR(36) = CHAR(36) */,'
      '    GUEST_CNT      SMALLINT DEFAULT 1,'
      
        '    MCASH          DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */,'
      '    IDADRESS_ITEM  INTEGER /* INTEGER = INTEGER */,'
      '    IDDRIVER       INTEGER /* INTEGER = INTEGER */,'
      
        '    GAME           DOUBLE PRECISION /* DOUBLE PRECISION = DOUBLE' +
        ' PRECISION */'
      ');'
      'CREATE TABLE TBACCOUNT ('
      
        '    ID               CHAR(36) NOT NULL /* CHAR(36) = CHAR(36) */' +
        ','
      '    IDPERSON         INTEGER /* INTEGER = INTEGER */,'
      
        '    MKOLVO           DOUBLE PRECISION /* DOUBLE PRECISION = DOUB' +
        'LE PRECISION */,'
      '    IDOPERACII_TYPE  INTEGER /* INTEGER = INTEGER */,'
      '    IDOSNOVANIE      CHAR(36) /* CHAR(36) = CHAR(36) */,'
      '    DT               TIMESTAMP /* TIMESTAMP = TIMESTAMP */,'
      
        '    CUM_DISC         DOUBLE PRECISION /* DOUBLE PRECISION = DOUB' +
        'LE PRECISION */,'
      
        '    CUM_AMOUNT       DOUBLE PRECISION /* DOUBLE PRECISION = DOUB' +
        'LE PRECISION */,'
      
        '    DESCR            VARCHAR(255) /* VARCHAR(255) = VARCHAR(255)' +
        ' */'
      ');'
      'CREATE TABLE TBSMENY ('
      '    ID         INTEGER NOT NULL /* INTEGER = INTEGER */,'
      '    DTSTART    TIMESTAMP /* TIMESTAMP = TIMESTAMP */,'
      '    DTEND      TIMESTAMP /* TIMESTAMP = TIMESTAMP */,'
      '    IDPEOPLES  INTEGER /* INTEGER = INTEGER */,'
      '    IDSTATION  INTEGER /* INTEGER = INTEGER */,'
      
        '    PROVOD     SMALLINT /* SMALLINT = SMALLINT CHECK (value in(0' +
        ', 1)) */,'
      '    TO1C       SMALLINT /* D_BYTE = SMALLINT */,'
      '    IDDOC      CHAR(36) /* CHAR(36) = CHAR(36) */,'
      '    SUID       CHAR(36) /* CHAR(36) = CHAR(36) */'
      ');'
      
        'ALTER TABLE DOCUMENTS ADD CONSTRAINT PK_DOCUMENTS PRIMARY KEY (U' +
        'ID);'
      'ALTER TABLE D_LINES ADD CONSTRAINT PK_D_LINES PRIMARY KEY (UID);'
      
        'ALTER TABLE D_LINES_MODIF ADD CONSTRAINT PK_D_LINES_MODIF PRIMAR' +
        'Y KEY (UID);'
      
        'ALTER TABLE TBACCOUNT ADD CONSTRAINT PK_TBACCOUNT PRIMARY KEY (I' +
        'D);'
      'ALTER TABLE TBSMENY ADD CONSTRAINT PK_TBSMENY PRIMARY KEY (ID);'
      
        'alter database INCLUDE table tbsmeny, documents, d_lines, tbacco' +
        'unt, d_lines_modif to publication;'
      'alter database enable publication;')
    Left = 352
    Top = 56
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'StartBtn_un'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000780000002C0806000000AE7B7C
              33000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000053A49444154785EED9AD7
              4A254B1486D7368C39E79C45505130DC98C037F035BDF40D444130C70B73CE39
              67F7996F61398DC71975706C2DEA83627775EF0ED65FEB5FAB7A1BE8E9E9B914
              91C89FCD6119C160F03AE4E7A713D75202814004023B2CC6096C394E60CB7102
              5B8E13D8729CC096E304B61C27B0E538812DC7096C394E60CB71025B8E13D872
              9CC096C3EFC1C1C76DDFB8BABA92A3A323393D3D95EBEB6BDD171212223F7EFC
              90D4D454B9BBBB93ADAD2DDDFF1AF1F1F1929B9BABE7C3C1C1819EFBF0F0A07D
              8E676565497878B8F60DF7F7F7323F3F2F3737378F7B7EC173C4C6C64A4A4A8A
              444444C8FEFEBEECECECE839AF11191929A5A5A58FBDCFC757816F6F6F5580A5
              A525D9DEDE96B3B3B327810381800E667979B9C4C4C4485F5F9FEE7F8D828202
              696D6D95B0B03015757474542626269E0446A4E6E666494E4ED6BE8167E9EAEA
              92939393C73DBF6032C4C5C549464686545454C8EEEEAE0C0C0C3C3DEB9F484C
              4C948E8E8EC7DEE7E3AB451359C3C3C3323E3E2E6B6B6B727979A9A2464747EB
              A09AC8A66F5A5454948A757171A18D41F61E27DA0C1CDFDCDC94F3F373BD167D
              EEC9640A06FF3FAFCD77685C877B8586866A9FE71B1B1B93E9E9699D3CDE7B82
              39EFF9F310C17EE25B0433E8DDDDDDB2B2B2A282252525495E5EDE930D32D858
              3603545656F664D1D8E2CCCC8C463D609D2D2D2DBA0D0C6A7A7ABA5AF4F2F2B2
              F4F6F6EA24494848D0EB712FAED7DEDEAE421988E0CECE4EFD2E10E55C9BE75C
              5C5C948D8D0D3D9794D1D4D4A4CF612C9ABF616A6A4AB7B97F5B5B9B6E031385
              94E117BE4530F96E757555078981C4FAAAAAAA345F151717AB355756564A5151
              910E1AFB688585852A96810134C7689999992A2E8211A9084414E6E4E4E87580
              C9825BFC09BECFF5782E6CDF3803138F67669FF79E06EE65F6D3FC14177C1198
              415A5858D0E2895C9B9F9FAF838170A6F821BA109EA2E86F205A1118A18D0B98
              BC4BAEC7BADF02CFC1F926DA79DE97ECFDABE28BC00C300D18388A178A1806EF
              23C04A8F8F8F656F6F4FFBD82A5146F5CCFD108809662CF625C8A7145C4C04F2
              AF29A8700126DE77C11781895C44002C8D4137CB9A8F80EB230C366C1C827B90
              9B8D382C730E0F0F75FB25262727B5521E1A1AD27C8F13202ED6FCB7AEE207BE
              E56003D164C4FE284801143EC64A59DB12B15E41F90E85D3EFA0B0A262267A01
              7B271F531B782BF5AF8E2F0253251B3B26DAC8977C7E1458B3A9861199AA9B68
              A4D235A9C144F9EFD6B2147B1479147ED5D5D5525B5BAB7D6F81F71DF045606C
              92BC08E4419633440A9166A299FDF4B1C6F7C079441F9F4C226C1511CD1AD514
              7108CF44E0ADD44B206C6363A3D4D7D74B4D4D8D949494689DF0DDF045600699
              AA964806F2E1C8C888461AB6C9C0F3393737A7E2BF070AA3F5F575DDE6FAD86A
              4343C353ABABABD3B74BC0128A4AFBA514615EB8D0A8A2B1E58F2A023F13DF72
              30EB4344366FA6B04B5E2B0E0E0E4A7F7FBF1637F4C9A5EF01718956C04EB15A
              A2D1DB28BA100B7778CB9AF83BE39BC04405D6C7806767676BA4908B11088B25
              AA4DE5FA56B060ACDED8336980F7D85EA8DAB91F9FC07B658A2F5390D986EFBF
              26116DFCE0C02013498803D83893202D2D4DD7C9068E23A2A98071000A204060
              6C1D9B466084F4FEB264A0D0A2E0C23938C6DB32AA649646269A29A8DEBA1C22
              A5CCCECEEA36564E1AF82A7C899F0B891E6F332012023CCF7D7CC74C04306F99
              C07B8CF34CA43EE779D5CEF710DC7B7FEF755FC37BBDF79CF7AFF912023BFE1D
              BEE560C7E7E004B61C27B0E538812DC7096C394E60CB71025B8E13D8729CC096
              E304B69C906030F8FABFE73BBE2972F51FD329F86E2D034CC00000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'StartBtn'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000780000002C0806000000AE7B7C
              33000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00097048597300000EC300000EC301C76FA8640000063F49444154785EED9959
              68144918C7BFEE994C26934C2E3531E289A00F2AC688081E088A782078A020A8
              0FA278BC2C3EF8E4CB3E88200882C282828AA22CE28BB7E2897861F0BE226A50
              BC62BC734DE6EAE9DEEFFF75CF6C321ACDEA4A3A4DFDA0A1AAABA6BBE87F7D57
              8DF6B4B2EA2F9DACE51A590152780693B4A4A9E9EBB5DACAAA269DCCB0735FE1
              210CF23DD389AC02A7AFF01A1A55B0C00A2FA304F6384A608FA304F6384A608F
              A304F6384A608FA304F6384A608FA304F6384A608FA304F6385A6DE52853274B
              73FA5D8FA6915E50405A5E1E697E3F916591954C921989101906F97AF5722676
              8CC5F352EFDF3B3DDEC5C5C5A4874276C73429F5E9933C331B7FEFDE3C396BCF
              F37CBCDB6C6E962ED6E52B2991F6F7B062314A7DFEECF4BA0643F3455D25B0AF
              B49402C3865160C810F2979591160CDA02F3C74A3E7B46AD57AE50F18A15CEEC
              8E31F9C37EDEB2C5EEF87C54306B1605ABAAEC3E0BD6B877AF3CAF2D5A4E0E95
              AE5D6BBFB32DD82C5FBE50FCEE5D8A56575360E8500ACF9FEF0C764CF2F9736A
              DCBDDBE9750DAE12D8D7B32785E7CCA1D0A449E4EFD387F470583EBA089C4A51
              B2B6963EAC5F4F7DDA7C348DC54B5B1CAC167381F1E60DBD9E3B57DAB0DEF24D
              9B28387AB4F401C46FDCB3C7E9D9E8F9F9D4EFE449792F9E652512A4E1D9BC06
              B42158C38E1DE2557A6DD8E0FC8AD7002FC35E27BDCEF41A62376F52FDEAD5D2
              EE2A20B0EF8FDE157FF2F2BA566016AA68D1220A2F5840818103C562E38F1E51
              F4D2258A3F7E4C56342A62371F3C281618BF774F2EBDA848AC1EB4F058F4FAF5
              CC58FCCE1DB99F3B7C38152D5E2C228868810069ECAE23C78FCBB3D2E03EE669
              B9B9E2DE9BF6EFA7F8FDFB32273060807814B8F096A347C9E4F5A4DF8390E12B
              2C944DD17CE810C56EDCB0C7F8B7899A1AE7E95D83A9E9862B2C3897DD72D9E6
              CDF211531F3F52F3912314BD7A95126CB5B0901CFEC0B89A0F1F961898A6E7BA
              75543073A6B4EB962CA1045B591A0B319B452D5DB3868A78CC78F74E9E179A30
              814CDE40F5CB9753FCE14367767B0B4EF0A6AA5BBA54EE636DE55BB792CEEF85
              85BE9A3E5D044E53B671A3FD4CBEF7967F937CFDDA1971D6D085C0825D9145E7
              4F9B467E244FECDE22E7CF53D3810314BB758BCCC6464988D06E39764CAC091F
              2D73B145A641D2D4760CC0C2F3F8E343E8C49327D4C2560B4BD339CE86264F96
              391D01AF810B969849B0D8D32046B77B4F9B640DEB6937E6025C217070D428DB
              85B285442F5FA6145B5B3A96A5F956D6FB2382959594D3AF1F59BC31A2D7AEC9
              4631EAEA640C5607ABFD1EF016C1B16365430064C526275CDD095708ECE34448
              6081534D4D76FB57E10D53306386C46E5813921E780389AB4CCEA041E27EBF85
              AF470F2A5EB9924A56ADA2E265CBC46DC30547CE9CB1CBB56E842B04CE5827BB
              C08CD8BF888FE37970CC1869C3D5E6F4EF4F796C8D88BFF00E103E3475AABC33
              1B9D13B7628ED1850B175260F06089AB2D1C9F113ABA1BAE1038E1D4A48871F9
              53A648ECCC06D9ED7F21346E5C66B368EC8A916895B0554A3870C8C39C6FBC0B
              B11FD932B2E2C67DFBA861FB7629ABB26BE7EE802B048E9C3A65274CEC565107
              A35C81B5F92B2AC8DFB72FE58D1F4F055C23771ACEBCF339DB95B81E8F4BD903
              9171C17A0DCED4655A7939E5729CCE06B1B661E74E6AD8B54B0E45909C192F5F
              3AA3DD0B57088CFAB5F5E2453BC3E59A12AEB118F10F71D0898585F3E639B37F
              0C4AAADC1123A46DB0B85FB66DA3863617041337CD1E0371FA2B781D382C41B2
              E7966CF8677185C0262756B09616AE7F8DB76F253E06478EA4F0ECD994CF756E
              0EC741CCE92CA18913A56E8588B1DBB72972FA3445CE9EFDF73A712253CBE284
              2B7D58E245DC7192C542E080030711467D3D255FBC90364EB3120F1E8848AD17
              2E7C7D7E1C08508AE365BCA68662D5D5997A15A76170C3B8DF7AEE1C19AF5EC9
              FD34666BAB1CA0E06004CFC43C6C20C4FEC4D3A7F6F338EBEE0CB20664E7F80D
              7B223759BC6B4EB2DAC17113F5293E1CDA00AE5BC46B73B40860E970E900E3E9
              830F082567C40C2CD56241B3917738F52D0447A6AD9794D8E7CF0C44EB0C5827
              CA28804DF233F5FAEFC275FF2629FE5F5C7354A9F87D28813D8E12D8E328813D
              8E12D8E328813D8E12D8E328813D8E12D8E328813D8E12D8E3E896A6C79CB6C2
              7358CF75CBD2F65A4471E78EC223589A16258DFEFE07A1B80743FCA161120000
              000049454E44AE426082}
          end>
      end>
    Left = 41
    Top = 137
  end
  object ArchFolders: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 88
    object ArchFoldersNAME: TWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object ArchFoldersCNT: TSmallintField
      FieldName = 'CNT'
    end
  end
end
