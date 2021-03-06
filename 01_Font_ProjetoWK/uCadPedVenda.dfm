object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pedido Venda'
  ClientHeight = 501
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 39
    Width = 757
    Height = 462
    ActivePage = tbsCadastro
    Align = alClient
    TabOrder = 0
    object tbsCadastro: TTabSheet
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 749
        Height = 393
        Align = alClient
        DataSource = dsPesquisa
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NROPEDIDO'
            Title.Caption = 'Nro.Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Caption = 'Dt.Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCLIE'
            Title.Caption = 'C'#243'd.Clie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTADO'
            Title.Caption = 'Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Visible = True
          end>
      end
      object PaPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 749
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label8: TLabel
          Left = 7
          Top = 9
          Width = 66
          Height = 13
          AutoSize = False
          Caption = 'Nro. Pedido'
        end
        object Label2: TLabel
          Left = 176
          Top = 9
          Width = 39
          Height = 13
          AutoSize = False
          Caption = 'Cliente'
        end
        object Label1: TLabel
          Left = 289
          Top = 9
          Width = 68
          Height = 13
          AutoSize = False
          Caption = 'Nome'
        end
        object EdNroPedVenda: TEdit
          Left = 79
          Top = 6
          Width = 65
          Height = 21
          MaxLength = 5
          TabOrder = 0
        end
        object edCodClie: TEdit
          Left = 213
          Top = 6
          Width = 52
          Height = 21
          MaxLength = 5
          TabOrder = 1
        end
        object EdName: TEdit
          Left = 324
          Top = 6
          Width = 368
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
      end
    end
    object tbsPedidoDados: TTabSheet
      Caption = 'Pedido'
      DoubleBuffered = False
      Enabled = False
      ImageIndex = 1
      ParentDoubleBuffered = False
      ExplicitWidth = 753
      ExplicitHeight = 432
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 749
        Height = 113
        Align = alTop
        Caption = 'Dados do Pedido'
        Color = clMedGray
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitWidth = 753
        object Label3: TLabel
          Left = 41
          Top = 24
          Width = 60
          Height = 13
          Caption = 'Nro Pedido.:'
        end
        object Label4: TLabel
          Left = 40
          Top = 49
          Width = 60
          Height = 13
          Caption = 'Dt Emiss'#227'o.:'
        end
        object Label5: TLabel
          Left = 60
          Top = 78
          Width = 41
          Height = 13
          Caption = 'Cliente.:'
        end
        object lookClientes: TDBLookupComboBox
          Left = 238
          Top = 75
          Width = 329
          Height = 21
          DataField = 'CODCLIE'
          DataSource = dsPedVenda
          KeyField = 'CODCLIE'
          ListField = 'NOME'
          ListSource = dsClientes
          TabOrder = 3
          OnExit = lookClientesExit
        end
        object EdDtIniRad: TDBDateEdit
          Left = 107
          Top = 46
          Width = 122
          Height = 21
          DataField = 'DTEMISSAO'
          DataSource = dsPedVenda
          NumGlyphs = 2
          TabOrder = 1
          YearDigits = dyFour
        end
        object DBEdit3: TDBEdit
          Left = 107
          Top = 19
          Width = 121
          Height = 21
          DataField = 'NROPEDIDO'
          DataSource = dsPedVenda
          TabOrder = 0
        end
        object edtCodClie: TDBEdit
          Left = 107
          Top = 75
          Width = 121
          Height = 21
          DataField = 'CODCLIE'
          DataSource = dsPedVenda
          TabOrder = 2
          OnExit = edtCodClieExit
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 113
        Width = 749
        Height = 321
        Align = alClient
        Caption = 'Itens do Pedido'
        Color = clMedGray
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        ExplicitTop = 119
        object Label7: TLabel
          Left = 54
          Top = 29
          Width = 46
          Height = 13
          Caption = 'Produto.:'
        end
        object Label9: TLabel
          Left = 34
          Top = 59
          Width = 64
          Height = 13
          Caption = 'Quantidade.:'
        end
        object Label10: TLabel
          Left = 183
          Top = 59
          Width = 72
          Height = 13
          Caption = 'Valor Unitario.:'
        end
        object Label11: TLabel
          Left = 381
          Top = 59
          Width = 59
          Height = 13
          Caption = 'Valor Total.:'
        end
        object DBGridItens: TDBGrid
          Left = 2
          Top = 98
          Width = 745
          Height = 176
          Align = alBottom
          DataSource = dsItens
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnColEnter = DBGridItensColEnter
          OnKeyUp = DBGridItensKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'NROITEM'
              Title.Caption = 'Nro.Item'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODPROD'
              Title.Caption = 'C'#243'd.Prod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLUNIT'
              Title.Caption = 'Valor Unit'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLTOTAL'
              Title.Caption = 'Valor Total'
              Visible = True
            end>
        end
        object lookItens: TDBLookupComboBox
          Left = 180
          Top = 24
          Width = 387
          Height = 21
          DataField = 'CODPROD'
          DataSource = dsItens
          Enabled = False
          KeyField = 'CODPROD'
          ListField = 'DESCRICAO'
          ListSource = dsProdutos
          TabOrder = 1
          OnExit = lookItensExit
        end
        object btnAdicionaItens: TButton
          Left = 592
          Top = 17
          Width = 153
          Height = 25
          Caption = 'Incluir'
          TabOrder = 6
          OnClick = btnAdicionaItensClick
        end
        object btnSalvarPedido: TButton
          Left = 592
          Top = 54
          Width = 153
          Height = 25
          Caption = 'Salvar'
          Enabled = False
          TabOrder = 7
          OnClick = btnSalvarPedidoClick
        end
        object edtCodProdu: TDBEdit
          Left = 107
          Top = 24
          Width = 67
          Height = 21
          DataField = 'CODPROD'
          DataSource = dsItens
          Enabled = False
          TabOrder = 0
          OnExit = edtCodProduExit
        end
        object edtQuant: TDBEdit
          Left = 107
          Top = 56
          Width = 67
          Height = 21
          DataField = 'QTD'
          DataSource = dsItens
          Enabled = False
          TabOrder = 2
          OnExit = edtQuantExit
        end
        object edtVlUnit: TDBEdit
          Left = 261
          Top = 56
          Width = 108
          Height = 21
          DataField = 'VLUNIT'
          DataSource = dsItens
          Enabled = False
          TabOrder = 3
        end
        object vlTotalItem: TDBEdit
          Left = 446
          Top = 56
          Width = 108
          Height = 21
          DataField = 'VLTOTAL'
          DataSource = dsItens
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Panel1: TPanel
          Left = 2
          Top = 274
          Width = 745
          Height = 45
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          ExplicitTop = 261
          ExplicitWidth = 749
          object Label6: TLabel
            Left = 353
            Top = 8
            Width = 85
            Height = 13
            Caption = 'Valor Tot Pedido.:'
            Color = clHotLight
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object DBEdit2: TDBEdit
            Left = 444
            Top = 5
            Width = 108
            Height = 21
            DataField = 'VLTOTAL'
            DataSource = dsPedVenda
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 39
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 761
    object PaBotao: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 37
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = -23
      object btInserir: TSpeedButton
        Left = 1
        Top = 1
        Width = 50
        Height = 35
        Caption = '&Inserir'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000113A43432989
          9FA03BC6E6E738BDDBDC28859A9B051114140000000000000000000000000000
          000000000000000000000000000000000000000000001547535340D8FBFC41DB
          FEFF41DBFEFF41DBFEFF41DBFEFF3BC7E7E8081A1E1E00000000000000004D39
          00549D7300ABA27700B0A27700B0A27700B0968420BA42D9F9FD41DBFEFF41DB
          FEFF45CAE4FF41D9FBFF41DBFEFF41DBFEFF2E9CB5B6000000001B14001DE8AB
          00FDEAAC00FFEAAC00FFEAAC00FFEAAC00FFA8BE64FF41DBFEFF41DBFEFF41DB
          FEFF53847BFF46C1D7FF41DBFEFF41DBFEFF40D9FCFD040C0E0E3B2B0040EAAC
          00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FF8AC790FF41DBFEFF41DBFEFF5482
          77FF5E502CFF5A6349FF4AB0BCFF41DBFEFF41DBFEFF0D2B32323B2B0040EAAC
          00FFE8AB00FFB27C03FFAF7904FFAF7904FF89A86AFF41DBFEFF41DBFEFF41DB
          FEFF53877FFF46C4DBFF41DBFEFF41DBFEFF40D9FCFD030A0C0C3B2B0040EAAC
          00FFEAAC00FFCC9202FFC88F02FFC88F02FFC39E1CFF4BD8EFFF41DBFEFF41DB
          FEFF42D5F5FF41DBFEFF41DBFEFF41DBFEFF2B8FA6A7000000003B2B0040EAAC
          00FFE8AA00FF976505FF916005FF916005FF916005FF7B8D59FF46DAF7FF41DB
          FEFF41DBFEFF41DBFEFF41DBFEFF36B7D4D506151818000000003B2B0040EAAC
          00FFEAAC00FFE7A900FFE6A800FFE6A800FFE6A800FFE7A900FFCDB42CFF82C9
          9CFF61D2CEFF48BDC9E1206A7C7C030B0D0D00000000000000003B2B0040EAAC
          00FFE8AA00FF8F5E05FF895806FF895806FF926005FFE9AB00FFEAAC00FFEAAC
          00FFEAAC00FF674C0070000000000000000000000000000000003B2B0040EAAC
          00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC
          00FFEAAC00FF674C0070000000000000000000000000000000003B2B0040EAAC
          00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC
          00FFEAAC00FF674C0070000000000000000000000000000000003B2B0040EAAC
          00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFDFCA00FFD5DA
          00FCBDC500E1342D003B000000000000000000000000000000003B2B0040EAAC
          00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFE8B200FFD1EE00FECCEA
          00F93942004600000000000000000000000000000000000000002D210031EAAC
          00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFEAAC00FFE7B400FFCEEC00FB424B
          0050000000000000000000000000000000000000000000000000000000009870
          00A6E6A900FBEAAC00FFEAAC00FFEAAC00FFEAAC00FFDDAC00F34B55005B0000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btInserirClick
      end
      object btAlterar: TSpeedButton
        Left = 51
        Top = 1
        Width = 50
        Height = 35
        Caption = '&Alterar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
          7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007B7B7B00FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF000000000000000000FFFFFF0000FFFF00000000007B7B7B00FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FF00FF0000000000FFFFFF00000000007B7B7B00FF00FF000000
          0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000FF
          FF000000000000FFFF00FF00FF0000000000000000007B7B7B00FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
          FF0000000000000000000000000000000000000000007B7B7B00FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00000000007B7B7B00FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF00000000007B7B7B00FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF00000000007B7B7B00FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF0000FF
          FF0000000000FFFFFF0000FFFF00FFFFFF00000000007B7B7B00FF00FF000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FF0000FFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
          FF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000007B0000007B0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btAlterarClick
      end
      object btPesquisar: TSpeedButton
        Left = 107
        Top = 1
        Width = 54
        Height = 35
        Caption = '&Pesquisar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00B484
          84006C666E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0088888800616D
          A500BE939B006C666E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005DBDF5003A91
          EE00616EAA00BE939B006C666E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005DC3
          FF003A91EE00616FAB00BE939B006C666E00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF005DC3FF003993F200616FAB00BE939B006C666E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF005DC3FF003994F300616FAB00A16D9500FF00FF00C6939300A66F
          8600965F7000965F7000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF005DC3FF0087ABCF009E989E00A66F8600D8B29500FFF1
          BE00FFFECC00EDDDBD00B5808600965F7000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00B8888800FFDBAA00FFFCCC00FFFF
          CF00FFFFDC00FFFFDE00FFFFF600C09A9300965F7000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFD3A200FFF1BE00FFF5C200FFFF
          D700FFFFE700FFFFF500FFFFFF00FFFFEE009C657100FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CB999600FFFCD000FFDFAC00FFF6C300FFFF
          D800FFFFE900FFFFF800FFFFF100FFFFDB00DAC7AA00B7887C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E4BDA400FFF9C600FFDBA800FFEEBB00FFFF
          D100FFFFDF00FFFFE600FFFFE400FFFFD900FFFBC80094597600FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D6AB9F00FFF9C800FFEBC300FFEAB800FFFA
          C700FFFFD000FFFFD500FFFFD400FFFFCC00EDD4AA00B7887C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D6AB9F00FFF7CE00FFF0D300FFE4BC00FFE3
          B000FFEBB800FFF0BD00FFEFBC00FFFCCF00B7887C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00E3C3A600FFFFFF00FFF9EE00FFE6
          BB00FFD8A500FFDCA900FFFAC800FACE9E0094597600FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D8BAA600FFF6DA00FFFD
          D200FFFDD100FFF1C700F2C69C00B5847A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C48797009A67
          6700C6939300DB88B900FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btPesquisarClick
      end
      object spSalvar: TSpeedButton
        Left = 223
        Top = 0
        Width = 68
        Height = 35
        Hint = 'Limpa as op'#231#245'es de pesquisa'
        Caption = '&Gravar Pedido'
        Flat = True
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888800000000
          888888880FFFFFF0888888880F7FF8F0888888880FFF0000000088880F7F0FF0
          FFF088880FFF0FF0F7F0888774C4C4C4FFF078878C4C4C4CF7F088F7F8880FFF
          FFF0777FBB8874C4C4C48B7BF77777C4C4C487B7B7B8888888887B87F87B8888
          8888B887B887888888888887888888888888}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = spSalvarClick
      end
      object spCancelar: TSpeedButton
        Left = 297
        Top = 4
        Width = 50
        Height = 31
        Cursor = crHandPoint
        Hint = 'Cancelamento/Inativa'#231#227'o/Reativa'#231#227'o de contratos'
        Caption = '&Cancelar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F120419000000000000
          0000000000000000000000000000000000000203010400000000000000000000
          0000000000000000000000000000000000000A0C02107A931ECB000000000000
          00000000000000000000000000000709020C677C1AAC00000000000000000000
          0000000000000000000000000000020301047C951FCE89A422E3000000000000
          000000000000000000000709020C79921EC988A321E000000000000000000000
          00000000000000000000000000006A7F1AAF99B725FC859F21DB000000000000
          0000000000000709020C7A921EC999B826FE819B20D600000000000000000000
          0000000000001014041B6A801AB095B325F79AB926FF7F991FD3000000000000
          00000709020C7A931ECA99B826FE9AB926FF819B20D6010100010708020B242C
          093C647819A58DAA23EA9AB926FF9AB926FF99B826FD47551276000000000709
          020C7A931ECA99B826FE9AB926FF9AB926FF90AD24EE87A221E088A421E28FAC
          23ED9AB926FF9AB926FF9AB926FF9AB926FF8AA622E50B0E03130709020C7A93
          1ECB99B826FE9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB9
          26FF9AB926FF9AB926FF9AB926FF91AE24F04E5E13810000000078911EC899B8
          26FE9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB9
          26FF9AB926FF9AB926FF97B625FB667A19A80000000000000000272F0A408AA5
          22E49AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB926FF9AB9
          26FF9AB926FF94B225F5768D1DC304050107000000000000000000000000262D
          093E89A522E49AB926FF9AB926FF9AB926FF9AB926FF9AB926FF96B425F88CA8
          23E87D961FCF4452117101010001000000000000000000000000000000000000
          0000252D093D89A522E39AB926FF9AB926FF86A121DD38420E5C252D093E1013
          041A000000000000000000000000000000000000000000000000000000000000
          000000000000242A093B89A522E39AB926FF819B20D600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000232A093A89A522E3839D20D800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000022280838859F21DC00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001317052000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spCancelarClick
      end
      object btExcluir: TSpeedButton
        Left = 167
        Top = 3
        Width = 50
        Height = 32
        Cursor = crHandPoint
        Hint = 'Cancelamento/Inativa'#231#227'o/Reativa'#231#227'o de contratos'
        Caption = '&Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FF0000007F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00007F0000007F7F7FFF
          00FFFF00FFFF00FFFF00FFFF00FF7F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FF
          FF00FF0000FF00007F0000007F7F7F7F7F7FFF00FFFF00FFFF00FF0000000000
          007F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FF0000FF00007F00007F0000007F
          7F7F7F7F7FFF00FF0000FF00007F00007F0000007F7F7FFF00FFFF00FFFF00FF
          FF00FFFF00FF0000FF00007F00007F0000007F7F7F0000FF00007F00007F0000
          7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00007F00007F00
          007F0000FF00007F00007F00007F000000FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0000FF00007F00007F00007F00007F00007F000000FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
          007F00007F00007F0000007F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0000FF00007F00007F00007F00007F0000007F7F
          7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00007F00
          007F00000000007F00007F0000007F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0000FF00007F000000FF00FF0000FF00007F00007F0000
          007F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00007F000000FF
          00FFFF00FFFF00FF0000FF00007F00007F0000007F7F7F7F7F7FFF00FFFF00FF
          FF00FFFF00FF0000FF00007F000000FF00FFFF00FFFF00FFFF00FF0000FF0000
          7F00007F0000007F7F7FFF00FFFF00FFFF00FFFF00FFFF00FF0000FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF0000FF00007F000000FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btExcluirClick
      end
    end
  end
  object qryClientes: TFDQuery
    Connection = DataBase
    Left = 664
    Top = 120
  end
  object DataBase: TFDConnection
    Params.Strings = (
      'Database=baseteste'
      'User_Name=root'
      'Password=euju270777'
      'DriverID=MYSQL')
    Connected = True
    Left = 88
    Top = 176
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 216
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\pc dev\Documents\2020_09_27_RFPJ\Nova pasta\libmysql.dl' +
      'l'
    Left = 48
    Top = 176
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 660
    Top = 120
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 564
    Top = 176
  end
  object qryProdutos: TFDQuery
    Connection = DataBase
    Left = 568
    Top = 176
  end
  object qryPedVenda: TFDQuery
    BeforePost = qryPedVendaBeforePost
    OnNewRecord = qryPedVendaNewRecord
    Connection = DataBase
    Left = 448
    Top = 80
  end
  object dsPedVenda: TDataSource
    DataSet = qryPedVenda
    Left = 476
    Top = 72
  end
  object qryItens: TFDQuery
    BeforePost = qryItensBeforePost
    OnNewRecord = qryItensNewRecord
    Connection = DataBase
    Left = 600
    Top = 48
  end
  object dsItens: TDataSource
    DataSet = qryItens
    Left = 604
    Top = 48
  end
  object qryAux: TFDQuery
    Connection = DataBase
    Left = 448
    Top = 8
  end
  object qryPesquisa: TFDQuery
    BeforePost = qryItensBeforePost
    OnNewRecord = qryItensNewRecord
    Connection = DataBase
    Left = 536
    Top = 280
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 532
    Top = 280
  end
end
